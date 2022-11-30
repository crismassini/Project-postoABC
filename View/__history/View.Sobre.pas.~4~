unit View.Sobre;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, ShellApi;

type
  TViewSobre = class(TForm)
    Label1: TLabel;
    lblGitHub: TLinkLabel;
    LblLinkedin: TLinkLabel;
    lblZap: TLinkLabel;
    procedure FormCreate(Sender: TObject);
    procedure lblGitHubLinkClick(Sender: TObject; const Link: string;
      LinkType: TSysLinkType);
    procedure lblZapLinkClick(Sender: TObject; const Link: string;
      LinkType: TSysLinkType);
    procedure LblLinkedinLinkClick(Sender: TObject; const Link: string;
      LinkType: TSysLinkType);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ViewSobre: TViewSobre;

implementation

{$R *.dfm}

procedure TViewSobre.FormCreate(Sender: TObject);
begin
  lblGitHub.Caption := '<a href="https://github.com/crismassini/Project-postoABC">GITHUB</a>';
  LblLinkedin.Caption := '<a href="https://www.linkedin.com/in/cristhianmassini/">LINKEDIN</a>';
  lblZap.Caption := '<a href="https://api.whatsapp.com/send?phone=5511975243284&text=Ol%C3%A1%2C%20vim%20pelo%20link%20do%20Projeto%20Fortes%20no%20GitHub">WHATSAPP</a>';
end;

procedure TViewSobre.lblGitHubLinkClick(Sender: TObject; const Link: string;
  LinkType: TSysLinkType);
begin
  ShellExecute(0, nil, PChar(Link), nil, nil, 1);
end;

procedure TViewSobre.LblLinkedinLinkClick(Sender: TObject; const Link: string;
  LinkType: TSysLinkType);
begin
  ShellExecute(0, nil, PChar(Link), nil, nil, 1);
end;

procedure TViewSobre.lblZapLinkClick(Sender: TObject; const Link: string;
  LinkType: TSysLinkType);
begin
  ShellExecute(0, nil, PChar(Link), nil, nil, 1);
end;

end.
