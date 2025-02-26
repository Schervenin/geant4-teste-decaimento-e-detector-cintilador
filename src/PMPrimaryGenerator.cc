#include "PMPrimaryGenerator.hh"
#include "CLHEP/Random/RandFlat.h"
#include "G4ThreeVector.hh"
#include "G4UnitsTable.hh"
#include "G4Gamma.hh"
#include "G4Electron.hh"
#include <random>

PMPrimaryGenerator::PMPrimaryGenerator()
{
    fParticleGun = new G4ParticleGun(1); //Numero de particulas por run

    //parametros do cilindro
    G4double cylinderHeight = 0.5 * cm;
    G4double cylinderR = 1.0 * cm;

    // Criar um gerador de números aleatórios
    std::random_device rd;
    std::mt19937 gen(rd()); // Mersenne Twister
    std::uniform_real_distribution<G4double> distRadial(-cylinderR, cylinderR);
    std::uniform_real_distribution<G4double> distHeight(-cylinderHeight/2, cylinderHeight/2);

    // Gerar posição aleatória no plano radial (x, y)
    G4double x = distRadial(gen);
    G4double y = distRadial(gen);
    while (x*x + y*y > cylinderR*cylinderR) {  // Garantir que a posição esteja dentro do círculo
        x = distRadial(gen);
        y = distRadial(gen);
    }

    // Gerar altura aleatória (z)
    G4double z = distHeight(gen);
    

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
    G4int Z = 27; //numero de p
    G4int A = 60; //numero atomico

    G4double charge = 0. * eplus; // carga 
    G4double energy = 0. *keV; // E k zero

    G4ParticleDefinition *ion = G4IonTable::GetIonTable()->GetIon(Z, A, energy);
    fParticleGun->SetParticleDefinition(ion);
    fParticleGun->SetParticleCharge(charge);
    fParticleGun->SetParticleEnergy(energy);

    //Create Vertex
    fParticleGun->GeneratePrimaryVertex(anEvent);
}