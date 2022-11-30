unit Controller.Conexao;

interface

uses
  FireDAC.Comp.Client, FireDAC.Stan.Intf, System.SysUtils, System.IniFiles,
  Vcl.Forms;

type
  TConexao = class
    private
    FServidor: string;
    FMsgErro: string;
    FSenha: string;
    FDatabase: string;
    FUsuario: string;
    FPorta: string;
    FConexao: TFDConnection;
    FDriverID: string;
    FArquivoIni: string;
    public
      constructor Create(AConexao: TFDConnection);
      destructor Destroy; override;
      function ConectarBanco: Boolean;
      procedure GravarArquivoIni;
      procedure LerArquivoIni;
      property Conexao: TFDConnection read FConexao write FConexao;
      property Servidor: string read FServidor write FServidor;
      property Database: string read FDatabase write FDatabase;
      property Porta: string read FPorta write FPorta;
      property Usuario: string read FUsuario write FUsuario;
      property Senha: string read FSenha write FSenha;
      property DriverID: string read FDriverID write FDriverID;
      property MsgErro: string read FMsgErro write FMsgErro;
  end;

implementation

{ TConexao }


{ TConexao }

function TConexao.ConectarBanco: Boolean;
begin
  Result := True;

  FConexao.Params.Clear;
  FConexao.Params.Add('Server=' + FServidor);
  FConexao.Params.Add('user_name=' + FUsuario);
  FConexao.Params.Add('password='+ FSenha);
  FConexao.Params.Add('port=' + FPorta);
  FConexao.Params.Add('Database=' + FDatabase);
  FConexao.Params.Add('DriverID=' + FDriverID);

  try
    FConexao.Connected := True;
  except on E: Exception do
    begin
      FMsgErro := 'Erro ao conectar ao banco de dados! ' + E.Message;
      Result := False;
    end;
  end;
end;

constructor TConexao.Create(AConexao: TFDConnection);
begin
  FConexao := AConexao;
  FArquivoIni := ChangeFileExt(Application.ExeName, '.ini');

  LerArquivoIni;
end;

destructor TConexao.Destroy;
begin
  FConexao.Connected := False;
  inherited;
end;

procedure TConexao.GravarArquivoIni;
var
  Ini: TIniFile;
begin
  if FileExists(FArquivoIni) then
  begin
    Ini := TIniFile.Create(FArquivoIni);
    try
      Ini.WriteString('DATABASE', 'SERVER', FServidor);
      Ini.WriteString('DATABASE', 'DATABASE', FDatabase);
      Ini.WriteString('DATABASE', 'USERNAME', FUsuario);
      Ini.WriteString('DATABASE', 'PASSWORD', FSenha);
      Ini.WriteString('DATABASE', 'PORTA', FPorta);
      Ini.WriteString('DATABASE', 'DRIVERID', FDriverID);
    finally
      Ini.Free;
    end;
  end;
end;

procedure TConexao.LerArquivoIni;
var
  Ini: TIniFile;
begin
  if FileExists(FArquivoIni) then
  begin
    Ini := TIniFile.Create(FArquivoIni);
    try
      FServidor := Ini.ReadString('DATABASE', 'SERVER', '');
      FDatabase := Ini.ReadString('DATABASE', 'DATABASE', '');
      FUsuario := Ini.ReadString('DATABASE', 'USERNAME', '');
      FSenha := Ini.ReadString('DATABASE', 'PASSWORD', '');
      FPorta := Ini.ReadString('DATABASE', 'PORTA','');
      FDriverID := Ini.ReadString('DATABASE', 'DRIVERID', '');
    finally
      Ini.Free;
    end;
  end;
end;

end.
