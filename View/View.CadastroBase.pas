unit View.CadastroBase;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.ComCtrls, Vcl.DBCtrls,
  Data.DB;

type
  TViewCadastroBase = class(TForm)
    Panel1: TPanel;
    dtsCadastro: TDataSource;
    StatusBar1: TStatusBar;
    DBNavigator1: TDBNavigator;
    dtsPesquisa: TDataSource;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ViewCadastroBase: TViewCadastroBase;

implementation

{$R *.dfm}

end.
