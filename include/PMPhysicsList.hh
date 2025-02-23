#ifndef PMPHYSICSLIST_HH
#define PMPHYSICSLIST_HH

#include "G4VModularPhysicsList.hh"  // Classe base para lista modular de física
#include "G4EmStandardPhysics.hh"    // Física eletromagnética padrão do Geant4
#include "G4RadioactiveDecayPhysics.hh" //Fisica decaimento
#include "G4DecayPhysics.hh" //fisica decaimento exp

class PMPhysicsList : public G4VModularPhysicsList
{
public:
    PMPhysicsList();   // Construtor
    ~PMPhysicsList();  // Destrutor

    // Métodos obrigatórios que devem ser implementados
    //void ConstructParticle() override; // Define partículas
    //void ConstructProcess() override;  // Define processos físicos
    //void SetCuts() override;           // Define cortes de energia
};

#endif
