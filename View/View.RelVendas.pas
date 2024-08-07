unit View.RelVendas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Vcl.StdCtrls, Data.DB,
  Vcl.ExtCtrls, Vcl.Grids, Vcl.DBGrids,  View.Fortes.RelVendas, Controller.Vendas;

type
  TViewRelVendas = class(TForm)
    lblIncial: TLabel;
    lblfinal: TLabel;
    dtpInicial: TDateTimePicker;
    dtpfinal: TDateTimePicker;
    btnCarregar: TButton;
    Panel1: TPanel;
    btnImprimir: TButton;
    BtnExcel: TButton;
    dtsVendas: TDataSource;
    dbgVendas: TDBGrid;
    procedure btnImprimirClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnCarregarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure BtnExcelClick(Sender: TObject);
  private
    { Private declarations }
    Vendas: TVendas;
  public
    { Public declarations }
  end;

var
  ViewRelVendas: TViewRelVendas;

implementation

uses
  Controller.DtmConexao, uUtil;

{$R *.dfm}

procedure TViewRelVendas.btnCarregarClick(Sender: TObject);
begin
  dtsVendas.DataSet := Vendas.RelVendas(dtpInicial.DateTime, dtpfinal.DateTime);
end;

procedure TViewRelVendas.BtnExcelClick(Sender: TObject);
begin
  GerarXLS(dtsVendas.DataSet, ChangeFileExt(Application.ExeName, '.xlxs'));
end;

procedure TViewRelVendas.btnImprimirClick(Sender: TObject);
begin
  dtsVendas.DataSet := Vendas.RelVendas(dtpInicial.DateTime, dtpfinal.DateTime);
  if (dtsVendas.DataSet.RecordCount = 0) then
  begin
    ShowMessage('N�o existem registro para carregar na data selecionada. Verifique!');
    Exit
  end;
  ViewFortesRelVendas := TviewFortesRelVendas.Create(Self);
  ViewFortesRelVendas.lblPeriodo.Caption := 'De ' + FormatDateTime('DD/MM/YY', dtpInicial.DateTime) + ' at� ' + FormatDateTime('DD/MM/YY', dtpfinal.DateTime);

  ViewFortesRelVendas.rlrVendas.Preview;
end;

procedure TViewRelVendas.FormCreate(Sender: TObject);
begin
  Vendas := TVendas.Create(ControllerDtmConexao.FDConnection);
//  dtsVendas := TDataSource.Create(Self);
end;

procedure TViewRelVendas.FormDestroy(Sender: TObject);
begin
  Vendas.Free;
end;

procedure TViewRelVendas.FormShow(Sender: TObject);
begin
  dtpInicial.DateTime := Now;
  dtpfinal.DateTime := Now;
end;

end.
