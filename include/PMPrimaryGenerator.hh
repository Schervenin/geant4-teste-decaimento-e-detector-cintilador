#ifndef PMPRIMARYGENERATOR_HH
#define PMPRIMARYGENERATOR_HH

// Classe base para gerar partículas primárias no Geant4
#include "G4VUserPrimaryGeneratorAction.hh"

// Definição de partículas
#include "G4ParticleDefinition.hh"
#include "G4ParticleGun.hh"
#include "G4ParticleTable.hh"

// Unidades do sistema
#include "G4SystemOfUnits.hh"

//Tabela de íons
#include "G4IonTable.hh"

#include "G4ProcessManager.hh" 

#include "G4Geantino.hh"
#include "G4ChargedGeantino.hh"


class PMPrimaryGenerator : public G4VUserPrimaryGeneratorAction
{
public:
    PMPrimaryGenerator();  // Construtor
    virtual ~PMPrimaryGenerator(); // Destrutor

    // Método obrigatório que gera partículas primárias no evento
    virtual void GeneratePrimaries(G4Event *event) override;

private:
    G4ParticleGun *fParticleGun;  // Ferramenta de disparo de partículas
};

#endif
