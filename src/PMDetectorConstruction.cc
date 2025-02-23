#include "PMDetectorConstruction.hh"  // Inclui o cabeçalho da classe

// Implementação do construtor
PMDetectorConstruction::PMDetectorConstruction()
{
    // Nenhuma inicialização necessária aqui
}

// Implementação do destrutor
PMDetectorConstruction::~PMDetectorConstruction()
{
    // Nenhuma ação necessária no destrutor
}

// Método responsável por construir a geometria do detector
G4VPhysicalVolume *PMDetectorConstruction::Construct()
{
    G4bool checkOverlaps = true; // Habilita a verificação de sobreposição de volumes

    // Obtém o gerenciador de materiais do Geant4
    G4NistManager *nist = G4NistManager::Instance();

    // Define o material do mundo como ar (G4_AIR)
    G4Material *worldMat = nist->FindOrBuildMaterial("G4_AIR");

    //Material do anteparo
    G4Material *shieldMat = nist->FindOrBuildMaterial("G4_Al");

    //Material do detector
    G4Material *detMat = nist->FindOrBuildMaterial("G4_SODIUM_IODIDE");

    //Define Cobalto 60
    G4Isotope *Co60 = new G4Isotope("Co60", 27, 60, 59.933822 *g / mole); // Define isotopo (nome, Z, A, Massa molar)
    G4Element *elCo60 = new G4Element("Cobalt-60", "Co60", 1); // Define o elemento (nome, simbolo, numero de isotopos)
    elCo60->AddIsotope(Co60, 100.0 *perCent);
    G4Material *matCo60 = new G4Material("Co60Source", 8.9 * g / cm3, 1); // Define material (nome, densidade, estado solido[1])
    matCo60->AddElement(elCo60, 100.0 * perCent);

    // Define as dimensões do volume do mundo (1 metro cúbico)
    G4double xWorld = 1. *m;
    G4double yWorld = 1. *m;
    G4double zWorld = 1. *m;

    // Define a caixa que representa o volume do mundo
    G4Box *solidWorld = new G4Box("solidWorld", 0.5 * xWorld, 0.5 * yWorld, 0.5 * zWorld);

    // Cria o volume lógico associando a geometria com o material
    G4LogicalVolume *logicWorld = new G4LogicalVolume(solidWorld, worldMat, "logicWorld");

    // Cria o volume físico, posicionando o mundo na origem
    G4VPhysicalVolume *physWorld = new G4PVPlacement(
        0,                // Nenhuma rotação
        G4ThreeVector(0.,0.,0.),  // Posição na origem
        logicWorld,       // Volume lógico
        "physWorld",      // Nome do volume físico
        0,                // Volume mãe (nulo pois é o mundo)
        false,            // Nenhuma cópia
        0,                // Número de cópia
        checkOverlaps     // Verifica sobreposição
    );

    //Fonte de radiação

    G4double sourceRadius = 1. * cm;
    G4double sourceHeight = 0.5 * cm;

    G4Tubs *solidSource = new G4Tubs(
        "solidSource", //nome
        0.0, //raio minimo
        sourceRadius, //raio máximo
        sourceHeight,
        0.0, 
        360.0 * deg
    );

    G4LogicalVolume *logicSource = new G4LogicalVolume(solidSource, matCo60, "logicSource"); //(volume, material, nome)
    G4VPhysicalVolume *physSource = new G4PVPlacement(
        0, //rotação
        G4ThreeVector(0., 0., 0.), //posição
        logicSource, //volume
        "physSource", //nome
        logicWorld, //volume mãe
        0,
        checkOverlaps

    );

    G4VisAttributes *sourceVisAtt = new G4VisAttributes(G4Color(1.0, 0.0, 1.0, 0.5));
    sourceVisAtt->SetForceSolid(true);
    logicSource->SetVisAttributes(sourceVisAtt);


    //Volume do anteparo
    G4double shieldConeHeight = 0.83 * cm;
    G4double shieldConeR1 = 1.0 *cm;
    G4double shieldConeR2 = 1.8 *cm;

    G4Cons *solidConeShield = new G4Cons(
        "solidShield",
        shieldConeR1 - 0.1,
        shieldConeR1,
        shieldConeR2 - 0.01,
        shieldConeR2,
        shieldConeHeight,
        0.0, 360.0 *deg
    );
    
    G4double shielDiksHeight = 0.1 * cm;

    G4Tubs *solidDiskShield = new G4Tubs(
        "solidDiskShield",
        0.0,
        shieldConeR1,
        shielDiksHeight,
        0.0,
        360.0 * deg
    );

    G4ThreeVector diskPosition(0.0, 0.0, - shieldConeHeight);
    G4UnionSolid *solidShield = new G4UnionSolid("solidShield", solidConeShield, solidDiskShield, 0, diskPosition);


    G4LogicalVolume *logicShield = new G4LogicalVolume(solidShield, shieldMat, "lgicShield");

    G4VPhysicalVolume *physShield = new G4PVPlacement(
        0,
        G4ThreeVector(0., 0., 5.0 *cm),
        logicShield,
        "physShield",
        logicWorld,
        false,
        checkOverlaps
    );

    G4VisAttributes *shieldVisAtt = new G4VisAttributes(G4Color(0.5, 0.5, 0.5, 1));
    shieldVisAtt->SetForceSolid(true);
    logicShield->SetVisAttributes(shieldVisAtt);
    
    //Detector
    G4double coneHeight = 1.5 *cm; // altura
    G4double coneR1 = 1.0 *cm; //raio menor
    G4double coneR2 = 2.5 *cm; //raio maior

    G4Cons *solidCone = new G4Cons(
        "solidCone",
        0.0, //raio menor R1
        coneR1,// raio maior R1
        0.0, //raio menor R2
        coneR2, //raio maior R2
        coneHeight, //altura detector
        0.0, // ang min
        360.0 *deg //ang max
    );

    G4double cylinderHeight = 0.5 * cm;
    G4double cylinderR = 2.5 * cm;

    G4Tubs *solidCylinder = new G4Tubs(
        "solidCylinder",
        0.,
        cylinderR,
        cylinderHeight,
        0.0, 360.0 * deg
    );
    

    
    G4ThreeVector conePosition(0., 0., 0.5 * cylinderHeight + 0.5 * coneHeight);
    G4ThreeVector cylinderPosition(0., 0., coneHeight + 0.5 * cylinderHeight + 0.25 * cm);
    G4UnionSolid *solidDetector = new G4UnionSolid("solidDetector", solidCone, solidCylinder, 0, cylinderPosition);



    //Logica Detector
    logicDetector = new G4LogicalVolume(solidDetector, detMat, "logicDetector");

    //Volume fisico
    G4VPhysicalVolume *physDetector = new G4PVPlacement(
        0,
        G4ThreeVector(0., 0., 5.75 *cm),
        logicDetector,
        "physDetector",
        logicWorld,
        false,
        checkOverlaps
        );
    G4VisAttributes *detVisAtt = new G4VisAttributes(G4Color(1.0, 1.0, 0.0, 0.5)); //visual detector
    detVisAtt->SetForceSolid(true);
    logicDetector->SetVisAttributes(detVisAtt);


    return physWorld;
}

void PMDetectorConstruction::ConstructSDandField()
{
    PMSensitiveDetector *sensDet = new PMSensitiveDetector("SensitiveDetector"); //nome do detector e sua instancia
    logicDetector->SetSensitiveDetector(sensDet); // Associa o detector sensível ao volume lógico do detector
    G4SDManager::GetSDMpointer()->AddNewDetector(sensDet); // Registra o detector sensível no gerenciador de detectores do Geant4
}