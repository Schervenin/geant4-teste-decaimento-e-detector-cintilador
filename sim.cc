#include <iostream>

// Inclui as classes principais do Geant4 necessárias para a simulação
#include "G4RunManager.hh"        // Gerencia a execução da simulação
#include "G4MTRunManager.hh"      // Versão multi-thread do RunManager
#include "G4UImanager.hh"         // Interface de usuário para comandos interativos
#include "G4VisManager.hh"        // Gerencia a visualização da simulação
#include "G4VisExecutive.hh"      // Implementação do gerenciador de visualização
#include "G4UIExecutive.hh"       // Interface interativa para o usuário

#include "PMPhysicsList.hh"
#include "PMDetectorConstruction.hh"
#include "PMActionInitialization.hh"


int main(int argc, char** argv)
{
    
    G4UIExecutive *ui;

    // Define o gerenciador de execução (RunManager)
    // Se o Geant4 estiver compilado com suporte a multithreading, usa G4MTRunManager
    // Caso contrário, usa G4RunManager normal
    #ifdef G4MULTITHREADED
        G4MTRunManager *runManager = new G4MTRunManager;
    #else 
        G4RunManager *runManager = new G4RunManager;
    #endif
    //Physics list
    runManager->SetUserInitialization(new PMPhysicsList());

    //Detector Construction
    runManager->SetUserInitialization(new PMDetectorConstruction());

    //Action Initialization
    runManager->SetUserInitialization(new PMActionInitialization());

    // so abre a ui se argumento == 1 (ajuda a n crashar o app)
    if(argc == 1)
    {
        ui = new G4UIExecutive(argc, argv);
    }

    // Cria o gerenciador de visualização
    G4VisManager *visManager = new G4VisExecutive();
    visManager->Initialize(); // Inicializa o sistema de visualização

    // Obtém o ponteiro para o gerenciador de interface de usuário
    G4UImanager *UImanager = G4UImanager::GetUIpointer();
    
    if(ui)
    {
        UImanager->ApplyCommand("/control/execute vis.mac"); //opçẽos de visualização
        // Inicia a interface de usuário interativa, permitindo comandos no terminal
        ui->SessionStart();
    }
    else
    {
        G4String command = "/control/execute ";
        G4String fileName = argv[1];
        UImanager->ApplyCommand(command + fileName);
    }    
    // Retorna 0 para indicar que o programa foi executado com sucesso
    return 0;
}

