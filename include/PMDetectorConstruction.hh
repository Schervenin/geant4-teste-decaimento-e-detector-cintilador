// Definição da geometria do detector

#ifndef PMDETECTORCONSTRUCTION_HH
#define PMDETECTORCONSTRUCTION_HH

// Classe base para construção do detector no Geant4
#include "G4VUserDetectorConstruction.hh"

// Geometrias básicas
#include "G4Box.hh"
#include "G4Sphere.hh"
#include "G4Cons.hh"
#include "G4UnionSolid.hh"
#include "G4Tubs.hh"

// Volumes lógicos e físicos
#include "G4LogicalVolume.hh"
#include "G4VPhysicalVolume.hh"  
#include "G4PVPlacement.hh"

// Materiais e unidades
#include "G4Material.hh"
#include "G4NistManager.hh"
#include "G4SystemOfUnits.hh"
#include "G4UnitsTable.hh" 

#include "G4VisAttributes.hh"
#include "G4Color.hh"
#include "G4SDManager.hh"

#include "PMsensitiveDetector.hh"

class PMDetectorConstruction : public G4VUserDetectorConstruction
{
public:
    PMDetectorConstruction();   // Construtor
    virtual ~PMDetectorConstruction();  // Destrutor

    // Método obrigatório que define a geometria do detector
    virtual G4VPhysicalVolume* Construct();
    
private:   
    G4LogicalVolume *logicDetector;

    virtual void ConstructSDandField();
};

#endif


