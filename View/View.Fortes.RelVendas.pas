unit View.Fortes.RelVendas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, RLReport;

type
  TViewFortesRelVendas = class(TForm)
  rlrVendas: TRLReport;
    rblCabecalho: TRLBand;
    rlTitulo: TRLBand;
    rlbColunas: TRLBand;
    rlbDetalhe: TRLBand;
    rlbRodape: TRLBand;
    RLSystemInfo1: TRLSystemInfo;
    RLSystemInfo2: TRLSystemInfo;
    lblNomePosto: TRLLabel;
    RLLabel1: TRLLabel;
    lblPeriodo: TRLLabel;
    RLLabel3: TRLLabel;
    RLLabel4: TRLLabel;
    QTD: TRLLabel;
    RLLabel6: TRLLabel;
    RLLabel7: TRLLabel;
    RLLabel8: TRLLabel;
    RLLabel2: TRLLabel;
    RLDBText1: TRLDBText;
    RLDBText2: TRLDBText;
    RLDBText3: TRLDBText;
    RLDBText4: TRLDBText;
    RLDBText5: TRLDBText;
    RLDBText6: TRLDBText;
    RLDBText7: TRLDBText;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ViewFortesRelVendas: TViewFortesRelVendas;

implementation

uses
  View.RelVendas;

{$R *.dfm}

end.
