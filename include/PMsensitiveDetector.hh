#ifndef PMSENSITIVEDETECTOR_HH
#define PMSENSITIVEDETECTOR_HH

#include "G4VSensitiveDetector.hh"

#include "G4RunManager.hh"
#include "G4AnalysisManager.hh"
#include "G4SystemOfUnits.hh"
#include "G4UnitsTable.hh"

class PMSensitiveDetector : public G4VSensitiveDetector
{
public:
    PMSensitiveDetector(G4String);
    ~PMSensitiveDetector();

private:
    G4double fTotalEnergyDeposited;  // Armazena a energia total depositada no evento

    virtual void Initialize(G4HCofThisEvent *) override;  // Inicializa dados do evento
    virtual void EndOfEvent(G4HCofThisEvent *) override;  // Finaliza o processamento do evento

    virtual G4bool ProcessHits(G4Step *, G4TouchableHistory *) override;  // Processa os hits
};

#endif
