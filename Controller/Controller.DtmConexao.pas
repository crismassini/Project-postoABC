unit Controller.DtmConexao;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.FB,
  FireDAC.Phys.FBDef, FireDAC.VCLUI.Wait, Data.DB, FireDAC.Comp.Client,
  Controller.Conexao, Controller.Classe.Usuario, Controller.Vendas;

type
  TControllerDtmConexao = class(TDataModule)
    FDConnection: TFDConnection;
    procedure DataModuleCreate(Sender: TObject);
    procedure DataModuleDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Conexao: TConexao;
    Usuario: TUsuario;
    Vendas: TVendas;
  end;

var
  ControllerDtmConexao: TControllerDtmConexao;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

procedure TControllerDtmConexao.DataModuleCreate(Sender: TObject);
begin
  Conexao := TConexao.Create(FDConnection);
end;

procedure TControllerDtmConexao.DataModuleDestroy(Sender: TObject);
begin
  Conexao.Destroy;
end;

end.
