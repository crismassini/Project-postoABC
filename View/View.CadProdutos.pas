unit View.CadProdutos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, View.CadastroBase, Data.DB, Vcl.DBCtrls,
  Vcl.ComCtrls, Vcl.ExtCtrls;

type
  TViewCadProdutos = class(TViewCadastroBase)
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ViewCadProdutos: TViewCadProdutos;

implementation

{$R *.dfm}

end.
