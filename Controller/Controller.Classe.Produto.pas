unit Controller.Classe.Produto;

interface

uses
  FireDAC.Comp.Client, Vcl.Dialogs, Vcl.Controls, System.SysUtils, FireDAC.DApt,
  Vcl.Forms;

type
  TProduto = class
  private
    FConexao: TFDConnection;
    QryConsulta: TFDQuery;
    FId_Produto: Integer;
    FDescricao: string;
    FPrecoVenda: Double;
    FPercentualImposto: Double;
  public
    constructor Create(AConexao: TFDConnection) ;
    destructor Destroy; override;
    function Inserir_alterar(ATipoOperacao: string; out Erro: string): Boolean;
    function Consultar(ATexto: string): TFDQuery;
    procedure Deletar(AId_Produto: integer);
    property Id_Produto: Integer read FId_Produto write FId_Produto;
    property Descricao: string read FDescricao write FDescricao;
    property PrecoVenda: Double read FPrecoVenda write FPrecoVenda;
    property PercentualImposto: Double read FPercentualImposto write FPercentualImposto;
end;

implementation

uses
  uUtil;

{ TUsuario }

constructor TProduto.Create(AConexao: TFDConnection);
begin
  FConexao := AConexao;
  QryConsulta := TFDQuery.Create(nil);
end;

destructor TProduto.Destroy;
begin
  QryConsulta.Free;
  inherited;
end;

procedure TProduto.Deletar(AId_Produto: integer);
begin
  if MessageDlg('Voc� tem certeza que deseja excluir o registro?', mtConfirmation,[mbyes,mbno],0) = mrYes then
  begin
    FConexao.Connected := False;
    FConexao.Connected := True;

    FConexao.ExecSQL('DELETE FROM PRODUTO WHERE ID_PRODUTO = :ID_PRODUTO', [AId_Produto]);
  end;
end;

function TProduto.Consultar(ATexto: string): TFDQuery;
begin
  try
    {$REGION 'SELECT CAD_PRODUTO'}
    QryConsulta.Connection := FConexao;
    QryConsulta.SQL.Clear;
    QryConsulta.SQL.Add('SELECT ');
    QryConsulta.SQL.Add('    ID_PRODUTO, ');
    QryConsulta.SQL.Add('    DESCRICAO, ');
    QryConsulta.SQL.Add('    PRECOVENDA, ');
    QryConsulta.SQL.Add('    PERCENTUALIMPOSTO ');
    QryConsulta.SQL.Add('FROM CAD_PRODUTO ');
    QryConsulta.SQL.Add('  WHERE DESCRICAO like :p_ATexto');
    QryConsulta.ParamByName('p_ATexto').AsString := '%' + ATexto + '%';
    QryConsulta.Sql.SaveToFile(DiretorioPadraoLogs + 'QryConsultaProduto.sql');
    {$ENDREGION}
    QryConsulta.Open;
  finally
    Result := QryConsulta;
  end;
end;

function TProduto.Inserir_alterar(ATipoOperacao: string;
  out Erro: string): Boolean;
var
  QryInserir: TFDQuery;
begin
  QryInserir := TFDQuery.Create(nil);
  try
    QryInserir.Connection := FConexao;
    try
      QryInserir.Close;
      QryInserir.SQL.Clear;

      if ATipoOperacao = 'INSERIR' then
      begin
        {$REGION 'INSERT CAD_PRODUTO'}
        QryInserir.SQL.Add('INSERT INTO CAD_PRODUTO ( ');
        QryInserir.SQL.Add('ID_PRODUTO, DESCRICAO, PRECOVENDA, PERCENTUALIMPOSTO ) ');
        QryInserir.SQL.Add('VALUES (');
        QryInserir.SQL.Add(':pID_PRODUTO, :pDESCRICAO, :pPRECOVENDA, :pPERCENTUALIMPOSTO) ');

        QryInserir.ParamByName('pID_PRODUTO').AsInteger := ProxCod('CAD_PRODUTO', 'ID_PRODUTO');
        QryInserir.ParamByName('pDESCRICAO').AsString := FDescricao;
        QryInserir.ParamByName('pPRECOVENDA').AsFloat := FPrecoVenda;
        QryInserir.ParamByName('pPERCENTUALIMPOSTO').AsFloat := FPercentualImposto;
        {$ENDREGION}
      end
      else //update
      begin
        {$REGION 'UPDATE CAD_PRODUTO'}
        QryInserir.SQL.Add('UPDATE CAD_PRODUTO SET ');
        QryInserir.SQL.Add('DESCRICAO = :pDESCRICAO, ');
        QryInserir.SQL.Add('PRECOVENDA = :pPRECOVENDA ');
        QryInserir.SQL.Add('PERCENTUALIMPOSTO = :pPERCENTUALIMPOSTO ');
        QryInserir.SQL.Add('WHERE ID_PRODUTO = pID_PRODUTO ');

        QryInserir.ParamByName('pID_PRODUTO').AsInteger := FId_Produto;
        QryInserir.ParamByName('pDESCRICAO').AsString := FDescricao;
        QryInserir.ParamByName('pPRECOVENDA').AsFloat := FPrecoVenda;
        QryInserir.ParamByName('pPERCENTUALIMPOSTO').AsFloat := FPercentualImposto;
        {$ENDREGION}
      end;
      QryInserir.Sql.SaveToFile(DiretorioPadraoLogs + 'QryInserirProduto.sql');
      QryInserir.ExecSQL;

      Result := True;
    except on E: Exception do
      begin
        Erro := E.message;
        Result := False;
      end;
    end;
  finally
    QryInserir.Free;
  end;
end;



end.
