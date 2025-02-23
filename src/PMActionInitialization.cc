#include "PMActionInitialization.hh"

// Construtor
PMActionInitialization::PMActionInitialization()
{

}

// Destrutor
PMActionInitialization::~PMActionInitialization()
{

}

// Função chamada para o processo master (sem ações específicas no momento)
void PMActionInitialization::BuildForMaster() const
{
    PMRunAction *runAction = new PMRunAction();
    SetUserAction(runAction);
}

// Função chamada para configurar ações para o processo secundário (worker)
void PMActionInitialization::Build() const
{
    // Corrigido o nome da classe
    PMPrimaryGenerator *generator = new PMPrimaryGenerator();
    SetUserAction(generator);  // Registra a ação do gerador de partículas

    PMRunAction *runAction = new PMRunAction();
    SetUserAction(runAction);
}
