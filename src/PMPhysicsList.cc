#include "PMPhysicsList.hh"

PMPhysicsList::PMPhysicsList()  // Nome corrigido
{
    // EM Physics
    RegisterPhysics(new G4EmStandardPhysics());  // Nome da função corrigido

    //Decaimento radioativo
    RegisterPhysics(new G4RadioactiveDecayPhysics());

    //Decaimento 
    RegisterPhysics(new G4DecayPhysics());
}

PMPhysicsList::~PMPhysicsList()
{
}
