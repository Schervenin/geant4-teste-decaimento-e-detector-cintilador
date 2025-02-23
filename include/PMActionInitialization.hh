#ifndef PMACTIONINITIALIZATION_HH
#define PMACTIONINITIALIZATION_HH

#include "G4VUserActionInitialization.hh"
#include "PMPrimaryGenerator.hh"  // Inclui a classe para gerar partículas
#include "PMRunAction.hh"

class PMActionInitialization : public G4VUserActionInitialization
{
public:
    PMActionInitialization();  // Construtor
    ~PMActionInitialization(); // Destrutor

    // Função chamada para configurar ações no processo principal
    virtual void BuildForMaster() const;

    // Função chamada para configurar ações para a execução no evento
    virtual void Build() const;
};

#endif
