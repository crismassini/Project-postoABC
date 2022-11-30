unit uUtil;

interface

uses
  Winapi.Windows, Vcl.Forms, System.SysUtils, FireDAC.Comp.Client, Data.DB,
  System.Win.ComObj;

function VersaoExe: String;
function DiretorioPadrao: String;
function DiretorioPadraoLogs: String;
function ProxCod(ATabela, ACampo: string): Integer;
procedure GerarXLS(DataSet: TDataSet; Arq: string); overload;

implementation

uses
  Controller.DtmConexao;

Function VersaoExe: String;
type
   PFFI = ^vs_FixedFileInfo;
var
   F       : PFFI;
   Handle  : Dword;
   Len     : Longint;
   Data    : Pchar;
   Buffer  : Pointer;
   Tamanho : Dword;
   Parquivo: Pchar;
   Arquivo : String;
begin
   Arquivo  := Application.ExeName;
   Parquivo := StrAlloc(Length(Arquivo) + 1);
   StrPcopy(Parquivo, Arquivo);
   Len := GetFileVersionInfoSize(Parquivo, Handle);
   Result := '';
   if Len > 0 then
   begin
      Data:=StrAlloc(Len+1);
      if GetFileVersionInfo(Parquivo,Handle,Len,Data) then
      begin
         VerQueryValue(Data, '',Buffer,Tamanho);
         F := PFFI(Buffer);
         Result := Format('%d.%d.%d.%d',
                          [HiWord(F^.dwFileVersionMs),
                           LoWord(F^.dwFileVersionMs),
                           HiWord(F^.dwFileVersionLs),
                           Loword(F^.dwFileVersionLs)]
                         );
      end;
      StrDispose(Data);
   end;
   StrDispose(Parquivo);
end;

function DiretorioPadrao: String;
begin
  Result := ExtractFilePath(Application.ExeName);
end;

function DiretorioPadraoLogs: String;
var
  Diretorio: string;
begin
  Diretorio := ExtractFilePath(Application.ExeName) + 'logs\';

  if not DirectoryExists(Diretorio) then
    ForceDirectories(Diretorio);

  Result := Diretorio;
end;

function ProxCod(ATabela, ACampo: string): Integer;
var
  QryProxCod: TFDQuery;
begin
  Result := 1;
  QryProxCod := TFDQuery.Create(nil);
  try
    QryProxCod.Connection := ControllerDtmConexao.FDConnection;
    QryProxCod.SQL.Clear;
    QryProxCod.SQL.Add('SELECT MAX (' + ACampo + ') AS CODIGO FROM ' + ATabela);
    QryProxCod.Open;

  finally
    QryProxCod.Free;

  end;
end;

procedure GerarXLS(DataSet: TDataSet; Arq: string);
 var
  ExcApp: OleVariant;
  i,l: integer;
begin
  ExcApp := CreateOleObject('Excel.Application');
  ExcApp.Visible := True;
  ExcApp.WorkBooks.Add;
  DataSet.First;
  l := 1;
  DataSet.First;
  while not DataSet.EOF do
  begin
    for i := 0 to DataSet.Fields.Count - 1 do
      ExcApp.WorkBooks[1].Sheets[1].Cells[l,i + 1] :=
        DataSet.Fields[i].DisplayText;
    DataSet.Next;
    l := l + 1;
  end;
  ExcApp.WorkBooks[1].SaveAs(Arq);
end;


end.
