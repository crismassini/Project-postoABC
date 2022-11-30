unit View.CadUsuario;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, View.CadastroBase, Data.DB, Vcl.DBCtrls,
  Vcl.ComCtrls, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Mask, Vcl.Grids, Vcl.DBGrids;

type
  TViewCadUsuario = class(TViewCadastroBase)
    Label1: TLabel;
    dbedtNome: TDBEdit;
    Label2: TLabel;
    dbedtEmail: TDBEdit;
    Label3: TLabel;
    dbedtSenha: TDBEdit;
    dbgPesquisa: TDBGrid;
    Panel2: TPanel;
    pnlPesquisa: TPanel;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure dbgPesquisaDblClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ViewCadUsuario: TViewCadUsuario;

implementation

uses
  Controller.Classe.Usuario, Controller.DtmConexao;


{$R *.dfm}

procedure TViewCadUsuario.btnExcluirClick(Sender: TObject);
begin
  inherited;
  ControllerDtmConexao.Usuario.Deletar(dtsCadastro.DataSet.FieldByName('ID_USUARIO').AsInteger);
end;

procedure TViewCadUsuario.dbgPesquisaDblClick(Sender: TObject);
begin
  inherited;
  dtsCadastro.DataSet := ControllerDtmConexao.Usuario.Consultar(dtsPesquisa.DataSet.FieldByName('NOME').AsString);
end;

procedure TViewCadUsuario.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  if Assigned(ControllerDtmConexao.Usuario) then
    ControllerDtmConexao.Usuario.Free;
end;

procedure TViewCadUsuario.FormCreate(Sender: TObject);
begin
  inherited;
  ControllerDtmConexao.Usuario := TUsuario.Create(ControllerDtmConexao.FDConnection);
end;

procedure TViewCadUsuario.FormShow(Sender: TObject);
begin
  inherited;
  dtsPesquisa.DataSet := ControllerDtmConexao.Usuario.Consultar('');
end;

end.
