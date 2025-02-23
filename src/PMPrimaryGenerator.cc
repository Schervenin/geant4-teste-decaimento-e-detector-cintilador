#include "PMPrimaryGenerator.hh"
#include "CLHEP/Random/RandFlat.h"
#include "G4ThreeVector.hh"
#include "G4UnitsTable.hh"
#include "G4Gamma.hh"
#include "G4Electron.hh"

PMPrimaryGenerator::PMPrimaryGenerator()
{
    fParticleGun = new G4ParticleGun(1); //Numero de particulas por run

    //parametros do cilindro
    G4double cylinderHeight = 0.5 * cm;
    G4double cylinderR = 1.0 * cm;

    G4double r = sqrt(CLHEP::RandFlat::shoot(0., 1.0)) * cylinderR; //Raio aleatório
    G4double phi = CLHEP::RandFlat::shoot(0., 360.0 * deg); //Angulo aleatório

    // converte polar para cartesiano

    G4double x = r * cos(phi);
    G4double y = r * sin(phi);
    G4double z = CLHEP::RandFlat::shoot(- cylinderHeight / 2, cylinderHeight / 2); // altura em z que a particula vai sair

    G4ThreeVector pos(x, y, z);

    // Particle Direction (momento)
    G4double px = 0.;
    G4double py = 0.;
    G4double pz = 0.;
    G4ThreeVector mom(px, py, pz);


    fParticleGun->SetParticlePosition(pos); //posição da particula
    fParticleGun->SetParticleMomentumDirection(mom); //direção que ela vai (momento)

    
}

PMPrimaryGenerator::~PMPrimaryGenerator()
{
    delete fParticleGun;
}

void PMPrimaryGenerator::GeneratePrimaries(G4Event *anEvent)
{
    //Particle type
    G4int Z = 9; //numero de p
    G4int A = 18; //numero atomico

    G4double charge = 0. * eplus; // carga 
    G4double energy = 0. *keV; // E k zero

    G4ParticleDefinition *ion = G4IonTable::GetIonTable()->GetIon(Z, A, energy);
    fParticleGun->SetParticleDefinition(ion);
    fParticleGun->SetParticleCharge(charge);
    fParticleGun->SetParticleEnergy(energy);

    //Create Vertex
    fParticleGun->GeneratePrimaryVertex(anEvent);
}