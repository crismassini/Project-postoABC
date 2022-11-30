object ViewRelVendas: TViewRelVendas
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = 'Relat'#243'rio de Vendas'
  ClientHeight = 297
  ClientWidth = 789
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poMainFormCenter
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 15
  object lblIncial: TLabel
    Left = 112
    Top = 24
    Width = 58
    Height = 15
    Caption = 'Data Inicial'
  end
  object lblfinal: TLabel
    Left = 320
    Top = 24
    Width = 50
    Height = 15
    Caption = 'Data final'
  end
  object dtpInicial: TDateTimePicker
    Left = 112
    Top = 45
    Width = 186
    Height = 23
    Date = 44894.000000000000000000
    Time = 0.789725104164972400
    TabOrder = 0
  end
  object dtpfinal: TDateTimePicker
    Left = 320
    Top = 45
    Width = 186
    Height = 23
    Date = 44894.000000000000000000
    Time = 0.789725104164972400
    TabOrder = 1
  end
  object Panel1: TPanel
    Left = 0
    Top = 256
    Width = 789
    Height = 41
    Align = alBottom
    TabOrder = 2
    object btnCarregar: TButton
      Left = 542
      Top = 6
      Width = 75
      Height = 25
      Caption = 'Carregar'
      TabOrder = 0
      OnClick = btnCarregarClick
    end
    object btnImprimir: TButton
      Left = 623
      Top = 6
      Width = 75
      Height = 25
      Caption = 'Imprimir'
      TabOrder = 1
      OnClick = btnImprimirClick
    end
    object BtnExcel: TButton
      Left = 704
      Top = 6
      Width = 75
      Height = 25
      Caption = 'Excel'
      TabOrder = 2
      OnClick = BtnExcelClick
    end
  end
  object dbgVendas: TDBGrid
    Left = 0
    Top = 88
    Width = 789
    Height = 168
    Align = alBottom
    DataSource = dtsVendas
    TabOrder = 3
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'ID_VENDA'
        Title.Caption = 'Id Venda'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -12
        Title.Font.Name = 'Segoe UI'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ID_BOMBA'
        Title.Caption = 'Id Bomba'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -12
        Title.Font.Name = 'Segoe UI'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DESCRICAO'
        Title.Caption = 'Produto'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -12
        Title.Font.Name = 'Segoe UI'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'QTD'
        Title.Caption = 'Quantidade'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -12
        Title.Font.Name = 'Segoe UI'
        Title.Font.Style = [fsBold]
        Width = 78
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PRECOVENDA'
        Title.Caption = 'R$ Venda'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -12
        Title.Font.Name = 'Segoe UI'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PERCENTUALIMPOSTO'
        Title.Caption = '% Imposto'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -12
        Title.Font.Name = 'Segoe UI'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TOTALVENDA'
        Title.Caption = 'R$ Total Venda'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -12
        Title.Font.Name = 'Segoe UI'
        Title.Font.Style = [fsBold]
        Width = 88
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DATAVENDA'
        Title.Caption = 'Data Venda'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -12
        Title.Font.Name = 'Segoe UI'
        Title.Font.Style = [fsBold]
        Width = 71
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'HORAVENDA'
        Title.Caption = 'Hora Venda'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -12
        Title.Font.Name = 'Segoe UI'
        Title.Font.Style = [fsBold]
        Width = 79
        Visible = True
      end>
  end
  object dtsVendas: TDataSource
    Left = 440
    Top = 112
  end
end
