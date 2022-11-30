program FortesGerenciaPosto;

uses
  Vcl.Forms,
  Vcl.Dialogs {ControllerDtmConexao: TDataModule},
  View.Principal in '..\View\View.Principal.pas' {ViewPrincipal},
  uUtil in '..\Model\uUtil.pas',
  Controller.Conexao in '..\Controller\Controller.Conexao.pas',
  Controller.DtmConexao in '..\Controller\Controller.DtmConexao.pas',
  View.CadastroBase in '..\View\View.CadastroBase.pas' {ViewCadastroBase},
  View.CadUsuario in '..\View\View.CadUsuario.pas' {ViewCadUsuario},
  Controller.Classe.Produto in '..\Controller\Controller.Classe.Produto.pas',
  View.VendasOnline in '..\View\View.VendasOnline.pas' {ViewVendasOnLine},
  Controller.Vendas in '..\Controller\Controller.Vendas.pas',
  Controller.Classe.Usuario in '..\Controller\Controller.Classe.Usuario.pas',
  Controller.Classe.Bomba in '..\Controller\Controller.Classe.Bomba.pas',
  View.CadBombas in '..\View\View.CadBombas.pas' {ViewCadBombas},
  View.CadProdutos in '..\View\View.CadProdutos.pas' {ViewCadProdutos},
  View.RelVendas in '..\View\View.RelVendas.pas' {ViewRelVendas},
  View.Sobre in '..\View\View.Sobre.pas' {ViewSobre},
  View.Fortes.RelVendas in '..\View\View.Fortes.RelVendas.pas' {ViewFortesRelVendas},
  Controller.Thread.SimuladorVendas in '..\Controller\Controller.Thread.SimuladorVendas.pas';

{$R *.res}

begin
  ReportMemoryLeaksOnShutdown := True;
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TControllerDtmConexao, ControllerDtmConexao);
  if ControllerDtmConexao.Conexao.ConectarBanco then
  begin
    Application.CreateForm(TViewPrincipal, ViewPrincipal);
    Application.Run;
  end
  else
  begin
    ShowMessage(ControllerDtmConexao.Conexao.MsgErro);
  end;

end.
