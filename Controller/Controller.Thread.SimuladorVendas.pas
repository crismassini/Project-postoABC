unit Controller.Thread.SimuladorVendas;

interface

uses
  System.Classes, FireDAC.Comp.Client, Vcl.ExtCtrls, uUtil, System.SysUtils,
  Model.Thread.SimuladorVendas, System.DateUtils, FireDAC.Stan.Param;

type
  TSimuladorVendas = class(TThread)
  private
    FConexao: TFDConnection;
    MontaVenda: TMontaVenda;
    procedure SimulaVenda;
  protected
  public
    procedure Execute; override;
    constructor Create(AConexao: TFDConnection);
    destructor Destroy; override;
end;

implementation

constructor TSimuladorVendas.Create(AConexao: TFDConnection);
begin
  inherited Create(True);
  FreeOnTerminate := True;
  Priority := TpLower;
  FConexao := AConexao;
  MontaVenda := TMontaVenda.Create;
end;

destructor TSimuladorVendas.Destroy;
begin
  MontaVenda.Free;
  inherited;
end;

procedure TSimuladorVendas.Execute;
begin
  inherited;
  //fazer loop por tempo para inser��o
  while EhNumeroPrimo(MinuteOf(Now)) do
  begin
    SimulaVenda;
  end;
end;

procedure TSimuladorVendas.SimulaVenda;
var
  QrySimulaVenda: TFDQUery;
begin
  QrySimulaVenda := TFDQuery.Create(nil);
  QrySimulaVenda.Connection := FConexao;
  try
    {$REGION 'INSERT VENDAS'}
    QrySimulaVenda.SQL.Clear;
    QrySimulaVenda.SQL.Add('INSERT INTO VENDAS ( ');
    QrySimulaVenda.SQL.Add('  ID_VENDA, ');
    QrySimulaVenda.SQL.Add('  ID_BOMBA, ');
    QrySimulaVenda.SQL.Add('  QTD, ');
    QrySimulaVenda.SQL.Add('  PRECOVENDA, ');
    QrySimulaVenda.SQL.Add('  PERCENTUALIMPOSTO, ');
    QrySimulaVenda.SQL.Add('  TOTALVENDA, ');
    QrySimulaVenda.SQL.Add('  DATAVENDA, ');
    QrySimulaVenda.SQL.Add('  HORAVENDA) ');
    QrySimulaVenda.SQL.Add('VALUES ( ');
    QrySimulaVenda.SQL.Add('  :pID_VENDA, ');
    QrySimulaVenda.SQL.Add('  :pID_BOMBA, ');
    QrySimulaVenda.SQL.Add('  :pQTD, ');
    QrySimulaVenda.SQL.Add('  :pPRECOVENDA, ');
    QrySimulaVenda.SQL.Add('  :pPERCENTUALIMPOSTO, ');
    QrySimulaVenda.SQL.Add('  :pTOTALVENDA, ');
    QrySimulaVenda.SQL.Add('  :pDATAVENDA, ');
    QrySimulaVenda.SQL.Add('  :pHORAVENDA, ');

    QrySimulaVenda.ParamByName('pID_VENDA').AsInteger := MontaVenda.ID_VENDA;
    QrySimulaVenda.ParamByName('pID_BOMBA').AsInteger := MontaVenda.ID_BOMBA;
    QrySimulaVenda.ParamByName('pQTD').AsFloat := MontaVenda.QTD;
    QrySimulaVenda.ParamByName('pPRECOVENDA').AsFloat := MontaVenda.PRECOVENDA;
    QrySimulaVenda.ParamByName('pPERCENTUALIMPOSTO').AsFloat := MontaVenda.PERCENTUALIMPOSTO;
    QrySimulaVenda.ParamByName('pTOTALVENDA').AsFloat := MontaVenda.TOTALVENDA;
    QrySimulaVenda.ParamByName('pDATAVENDA').AsDateTime := MontaVenda.DATAVENDA;
    QrySimulaVenda.ParamByName('pHORAVENDA').AsDateTime := MontaVenda.HORAVENDA;
    {$ENDREGION}
    QrySimulaVenda.ExecSQL;
  finally
    QrySimulaVenda.Free;
  end;
end;

{ TInsert }


end.
