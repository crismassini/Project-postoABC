unit Model.Thread.SimuladorVendas;

interface

uses
  System.SysUtils, System.DateUtils;

type
  TMontaVenda = class
  private
    FDATAVENDA: TDateTime;
    FQTD: Double;
    FID_BOMBA: Integer;
    FHORAVENDA: TDateTime;
    FPRECOVENDA: Double;
    FTOTALVENDA: Double;
    FPERCENTUALIMPOSTO: Double;
    FID_VENDA: Integer;
  published
    procedure CriaVenda;
    constructor Create;
    destructor Destroy; override;
    property ID_VENDA: Integer read FID_VENDA write FID_VENDA;
    property ID_BOMBA: Integer read FID_BOMBA write FID_BOMBA;
    property QTD: Double read FQTD write FQTD;
    property PRECOVENDA: Double read FPRECOVENDA write FPRECOVENDA;
    property PERCENTUALIMPOSTO: Double read FPERCENTUALIMPOSTO write FPERCENTUALIMPOSTO;
    property TOTALVENDA: Double read FTOTALVENDA write FTOTALVENDA;
    property DATAVENDA: TDateTime read FDATAVENDA write FDATAVENDA;
    property HORAVENDA: TDateTime read FHORAVENDA write FHORAVENDA;
  end;

implementation

uses
  uUtil;

{ TInsertVenda }

constructor TMontaVenda.Create;
begin
  CriaVenda;
end;

procedure TMontaVenda.CriaVenda;
begin
  FID_VENDA := ProxCod('VENDAS', 'ID_VENDA');

  case StrToInt(Copy(IntToStr(MinuteOf(Now)), 1, 1)) of //com base no primeiro digito do minuto atual, atribue a bomba de conbustivel
    1: FID_BOMBA := 1;
    2: FID_BOMBA := 2;
    3: FID_BOMBA := 3;
    4: FID_BOMBA := 4;
    5: FID_BOMBA := 1;
  end;

  case FID_BOMBA of
    1:  //Bomba que venda Gasolina
    begin
      FQTD := (FID_BOMBA + HourOf(Now)) * 10 ;
      FPRECOVENDA := 4;
    end;
    2:  //Bomba que venda Gasolina
    begin
      FQTD := (FID_BOMBA + HourOf(Now)) * 20 ;
      FPRECOVENDA := 4;
    end;
    3:  //Bomba que venda Óleo Diesel
    begin
      FQTD := (FID_BOMBA + HourOf(Now)) * 30 ;
      FPRECOVENDA := 3;
    end;
    4:  //Bomba que venda Óleo Diesel
    begin
      FQTD := (FID_BOMBA + HourOf(Now)) * 40 ;
      FPRECOVENDA := 3;
    end;
  end;

  FPERCENTUALIMPOSTO := 0.13;
  FTOTALVENDA := (FQTD * FPRECOVENDA) + ((FQTD * FPRECOVENDA)  * FPERCENTUALIMPOSTO);
  FDATAVENDA := Now;
  FHORAVENDA := Now;
end;

destructor TMontaVenda.Destroy;
begin
  inherited;
end;

end.
