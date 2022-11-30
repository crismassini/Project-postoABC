unit View.Principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, Vcl.ComCtrls, Vcl.ExtCtrls,
  Vcl.Imaging.pngimage, System.Actions, Vcl.ActnList;

type
  TViewPrincipal = class(TForm)
    MainMenu1: TMainMenu;
    Arquivo1: TMenuItem;
    Relatrios1: TMenuItem;
    Configuraes1: TMenuItem;
    CadastrodeBombas1: TMenuItem;
    N1: TMenuItem;
    CadastrodeProduto1: TMenuItem;
    N2: TMenuItem;
    Vendas1: TMenuItem;
    CadastrodeUsuarios1: TMenuItem;
    Sair1: TMenuItem;
    N3: TMenuItem;
    Sobre1: TMenuItem;
    Image1: TImage;
    StatusBar1: TStatusBar;
    Timer: TTimer;
    ActMenu: TActionList;
    actCadUsuario: TAction;
    Acoes1: TMenuItem;
    SimuladordeVendas1: TMenuItem;
    actCadBombas: TAction;
    actCadProdutos: TAction;
    actSimuladorVendas: TAction;
    actRelVendas: TAction;
    actSobre: TAction;
    procedure FormCreate(Sender: TObject);
    procedure TimerTimer(Sender: TObject);
    procedure actCadUsuarioExecute(Sender: TObject);
    procedure actCadBombasExecute(Sender: TObject);
    procedure actCadProdutosExecute(Sender: TObject);
    procedure actSobreExecute(Sender: TObject);
    procedure actRelVendasExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ViewPrincipal: TViewPrincipal;

implementation

uses
  uUtil, View.CadUsuario, View.CadBombas, View.CadProdutos, View.Sobre, View.RelVendas;

{$R *.dfm}

procedure TViewPrincipal.FormCreate(Sender: TObject);
begin
  ViewPrincipal.Caption := ViewPrincipal.Caption + ' | Versão: ' + VersaoExe;
end;

procedure TViewPrincipal.TimerTimer(Sender: TObject);
begin
  StatusBar1.Panels[0].Text := 'Hora: ' + FormatDateTime('HH:MM:SS', now);
end;

{$REGION 'ACTION LIST'}
procedure TViewPrincipal.actCadBombasExecute(Sender: TObject);
begin
  if ViewCadBombas = nil then
  begin
    Application.CreateForm(TViewCadBombas, ViewCadBombas);
    try
      ViewCadBombas.ShowModal;
    finally
      FreeAndNil(ViewCadBombas);
    end;
  end;
end;

procedure TViewPrincipal.actCadProdutosExecute(Sender: TObject);
begin
  if ViewCadBombas = nil then
  begin
    Application.CreateForm(TViewCadBombas, ViewCadBombas);
    try
      ViewCadBombas.ShowModal;
    finally
      FreeAndNil(ViewCadBombas);
    end;
  end;
end;

procedure TViewPrincipal.actCadUsuarioExecute(Sender: TObject);
begin
  if ViewCadUsuario = nil then
  begin
    Application.CreateForm(TViewCadUsuario, ViewCadUsuario);
    try
      ViewCadUsuario.ShowModal;
    finally
      FreeAndNil(ViewCadUsuario);
    end;
  end;
end;

procedure TViewPrincipal.actRelVendasExecute(Sender: TObject);
begin
  if ViewRelVendas = nil then
  begin
    Application.CreateForm(TViewRelVendas, ViewRelVendas);
    try
      ViewRelVendas.ShowModal;
    finally
      FreeAndNil(ViewRelVendas);
    end;
  end;
end;

procedure TViewPrincipal.actSobreExecute(Sender: TObject);
begin
  if ViewSobre = nil then
  begin
    Application.CreateForm(TViewSobre, ViewSobre);
    try
      ViewSobre.ShowModal;
    finally
      FreeAndNil(ViewSobre);
    end;
  end;
end;
{$ENDREGION}
end.
