unit View.VendasOnline;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.ExtCtrls, Vcl.ComCtrls, Vcl.StdCtrls, VclTee.TeeGDIPlus, VCLTee.TeEngine,
  VCLTee.Series, VCLTee.TeeProcs, VCLTee.Chart, VCLTee.DBChart;

type
  TViewVendasOnLine = class(TForm)
    dtsVendas: TDataSource;
    StatusBar1: TStatusBar;
    Panel2: TPanel;
    tmrAtualizavendas: TTimer;
    Panel1: TPanel;
    dbgVendas: TDBGrid;
    lblTotalVendas: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure tmrAtualizavendasTimer(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure dtsVendasDataChange(Sender: TObject; Field: TField);
  private
    { Private declarations }
    procedure AtualizaStatusBar(APanel: Integer);
  public
    { Public declarations }
    SimuladorVendasLigado: Boolean;
  end;

var
  ViewVendasOnLine: TViewVendasOnLine;

implementation

uses
  Controller.DtmConexao, Controller.Vendas;


{$R *.dfm}

procedure TViewVendasOnLine.AtualizaStatusBar(APanel: Integer);
begin
 if SimuladorVendasLigado then
    StatusBar1.Panels[APanel].Text := 'Simulador de Vendas Ligado'
  else
    StatusBar1.Panels[APanel].Text := 'Simulador de Vendas Desligado'
end;

procedure TViewVendasOnLine.dtsVendasDataChange(Sender: TObject; Field: TField);
begin
  lblTotalVendas.Caption := 'Todas de Vendas: ' + IntToStr(dtsVendas.DataSet.RecordCount);
end;

procedure TViewVendasOnLine.FormCreate(Sender: TObject);
begin
  ControllerDtmConexao.Vendas := TVendas.Create(ControllerDtmConexao.FDConnection);
end;

procedure TViewVendasOnLine.FormShow(Sender: TObject);
begin
  dtsVendas.DataSet := ControllerDtmConexao.Vendas.CarregarVendas;
  AtualizaStatusBar(0);
end;

procedure TViewVendasOnLine.tmrAtualizavendasTimer(Sender: TObject);
begin
  dtsVendas.DataSet.Refresh;
  dtsVendas.DataSet.First;
end;

end.
