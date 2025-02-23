#include "PMsensitiveDetector.hh"

PMSensitiveDetector::PMSensitiveDetector(G4String name) : G4VSensitiveDetector(name)
{
    fTotalEnergyDeposited = 0.;
}

PMSensitiveDetector::~PMSensitiveDetector()
{
    
}

void PMSensitiveDetector::Initialize(G4HCofThisEvent *)
{
    // Inicialização
    fTotalEnergyDeposited = 0.;
}

G4bool PMSensitiveDetector::ProcessHits(G4Step *aStep, G4TouchableHistory *)
{

    G4int eventID = G4RunManager::GetRunManager()->GetCurrentEvent()->GetEventID();
    
    G4AnalysisManager *analisysManager = G4AnalysisManager::Instance();

    G4StepPoint *preStepPoint = aStep->GetPreStepPoint(); //primeira interação da particula

    G4double fGlobalTime = preStepPoint->GetGlobalTime();
    G4ThreeVector posPhoton = preStepPoint->GetPosition();
    G4ThreeVector momPhoton = preStepPoint->GetMomentum();

    G4double fMomPhotonMag = momPhoton.mag();

    G4double fWlen = (1.239841939 * eV / fMomPhotonMag) * 1E+03; //converte o foton em comprimento de onda

    analisysManager->FillNtupleIColumn(0, 0, eventID);
    analisysManager->FillNtupleDColumn(0, 1, posPhoton[0]);
    analisysManager->FillNtupleDColumn(0, 2, posPhoton[1]);
    analisysManager->FillNtupleDColumn(0, 3, posPhoton[2]);
    analisysManager->FillNtupleDColumn(0, 4, fGlobalTime);
    analisysManager->FillNtupleDColumn(0, 5, fWlen);
    analisysManager->AddNtupleRow(0);


    // Processa os hits, por exemplo, calculando a energia depositada
    G4double fEnergyDeposited = aStep->GetTotalEnergyDeposit();
    
    if(fEnergyDeposited > 0)
    {
        fTotalEnergyDeposited += fEnergyDeposited;
    }



    
    return true;
}

void PMSensitiveDetector::EndOfEvent(G4HCofThisEvent *)
{
    G4AnalysisManager *analysisManager = G4AnalysisManager::Instance();

    analysisManager->FillH1(0, fTotalEnergyDeposited);

    G4cout << "Deposited energy: " << fTotalEnergyDeposited << G4endl; //exibe a energia total do evento
}