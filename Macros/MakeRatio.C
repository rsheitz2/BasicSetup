void MakeRatio(){
  std::cout << "Macro makes the ratio of \"fileA\" divided by \"fileB\"" <<"\n";

  //Get Files and Histograms
  TFile *fA = TFile::Open("fileA.root");
  TFile *fB = TFile::Open("fileB.root");
  if (!fA || !fB){
    std::cout << "At least one file does not exist" << "\n";
    exit(EXIT_FAILURE);
  }
   
  TH1D *hA = (TH1D*)fA->Get("hA");
  TH1D *hB = (TH1D*)fB->Get("hB");

  //Make ratio with errors correctly saved
  hA->Sumw2();
  hB->Sumw2();
  TH1D *hratio = (TH1D*)hA->Clone();
  hratio->Divide(hB);

  //Draw distributions
  TCanvas* c1 = new TCanvas();
  c1->Divide(1, 2);

  c1->cd(1);
  hA->Draw();
  hB->SetLineColor(kRed);
  hB->Draw("same");
  gPad->SetLogy();

  c1->cd(2);
  hratio->Draw();

  //Ratio 1.0 line
  Double_t min_x = hratio->GetXaxis()->GetXmin();	
  Double_t max_x = hratio->GetXaxis()->GetXmax();	
  TLine* li = new TLine(min_x, 1, max_x, 1);
  li->SetLineColor(kBlack);
  li->SetLineStyle(8);
  li->Draw("same");
}
