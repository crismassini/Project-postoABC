unit Controller.Thread.SimuladorVendas;

interface

uses
  System.Classes, FireDAC.Comp.Client, Vcl.ExtCtrls;

type
  TMinhaThread = class(TThread)
  private
    FConexao: TFDConnection;
    Timer: TTimer;
    procedure SimulaVenda;
  protected
    procedure Execute; override;
  public
    constructor Create(AConexao: TFDConnection);
end;

implementation

constructor TMinhaThread.Create(AConexao: TFDConnection);
begin
  inherited Create(True);
  FreeOnTerminate := True;
  Priority := TpLower;
  FConexao := AConexao;

end;

procedure TMinhaThread.Execute;
begin
  inherited;
  Simulavenda;
end;

procedure TMinhaThread.SimulaVenda;
var
  QrySimulaVenda: TFDQUery;
begin
  QrySimulaVenda := TFDQuery.Create(nil);
  QrySimulaVenda.Connection := FConexao;
  try
    QrySimulaVenda.SQL.Clear;
    QrySimulaVenda.SQL.Add('INSERT INTO VENDAS ( ');
    QrySimulaVenda.SQL.Add('ID_VENDA, ');
    QrySimulaVenda.SQL.Add('  ID_BOMBA, ');
    QrySimulaVenda.SQL.Add('  QTD, ');
    QrySimulaVenda.SQL.Add('  PRECOVENDA, ');
    QrySimulaVenda.SQL.Add('  PERCENTUALIMPOSTO, ');
    QrySimulaVenda.SQL.Add('  TOTALVENDA, ');
    QrySimulaVenda.SQL.Add('  DATAVENDA, ');
    QrySimulaVenda.SQL.Add('  HORAVENDA, ');
    QrySimulaVenda.SQL.Add('  DESCRICAO) ');
    QrySimulaVenda.SQL.Add('VALUES ( ');
    QrySimulaVenda.SQL.Add('  :pID_VENDA, ');
    QrySimulaVenda.SQL.Add('  :pID_BOMBA, ');
    QrySimulaVenda.SQL.Add('  :pQTD, ');
    QrySimulaVenda.SQL.Add('  :pPRECOVENDA, ');
    QrySimulaVenda.SQL.Add('  :pPERCENTUALIMPOSTO, ');
    QrySimulaVenda.SQL.Add('  :pTOTALVENDA, ');
    QrySimulaVenda.SQL.Add('  :pDATAVENDA, ');
    QrySimulaVenda.SQL.Add('  :pHORAVENDA, ');
    QrySimulaVenda.SQL.Add('  :pDESCRICAO) ');
  finally
  end;
end;

end.
