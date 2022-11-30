object ViewVendasOnLine: TViewVendasOnLine
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = 'Vendas On-Line'
  ClientHeight = 636
  ClientWidth = 764
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poMainFormCenter
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 15
  object lblTotalVendas: TLabel
    Left = 618
    Top = 599
    Width = 92
    Height = 15
    Caption = 'Total de Vendas: '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 617
    Width = 764
    Height = 19
    Panels = <
      item
        Text = 'Simulador de Vendas Ligado'
        Width = 50
      end>
    ExplicitLeft = 1
    ExplicitTop = 543
    ExplicitWidth = 813
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 764
    Height = 73
    Align = alTop
    Caption = 'Vendas On-line'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -33
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    ExplicitWidth = 615
  end
  object Panel1: TPanel
    Left = 0
    Top = 73
    Width = 764
    Height = 520
    Align = alTop
    TabOrder = 2
    ExplicitWidth = 1153
    object dbgVendas: TDBGrid
      Left = 1
      Top = 1
      Width = 762
      Height = 522
      Align = alTop
      DataSource = dtsVendas
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -12
      TitleFont.Name = 'Segoe UI'
      TitleFont.Style = []
      Columns = <
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'ID_VENDA'
          Title.Caption = 'Id Venda'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -12
          Title.Font.Name = 'Segoe UI'
          Title.Font.Style = [fsBold]
          Width = 59
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'DATAVENDA'
          Title.Caption = 'Data Venda'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -12
          Title.Font.Name = 'Segoe UI'
          Title.Font.Style = [fsBold]
          Width = 79
          Visible = True
        end
        item
          Alignment = taCenter
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
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'ID_BOMBA'
          Title.Caption = 'Id Bomba'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -12
          Title.Font.Name = 'Segoe UI'
          Title.Font.Style = [fsBold]
          Width = 58
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'DESCRICAO'
          Title.Caption = 'Produto'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -12
          Title.Font.Name = 'Segoe UI'
          Title.Font.Style = [fsBold]
          Width = 121
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'QTD'
          Title.Caption = 'Quantidade'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -12
          Title.Font.Name = 'Segoe UI'
          Title.Font.Style = [fsBold]
          Width = 67
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'PRECOVENDA'
          Title.Caption = 'R$ Venda'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -12
          Title.Font.Name = 'Segoe UI'
          Title.Font.Style = [fsBold]
          Width = 57
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'PERCENTUALIMPOSTO'
          Title.Caption = '% Imposto'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -12
          Title.Font.Name = 'Segoe UI'
          Title.Font.Style = [fsBold]
          Width = 65
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'TOTALVENDA'
          Title.Caption = 'R$ Total Venda'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -12
          Title.Font.Name = 'Segoe UI'
          Title.Font.Style = [fsBold]
          Width = 92
          Visible = True
        end>
    end
  end
  object dtsVendas: TDataSource
    OnDataChange = dtsVendasDataChange
    Left = 232
    Top = 24
  end
  object tmrAtualizavendas: TTimer
    Interval = 10000
    OnTimer = tmrAtualizavendasTimer
    Left = 520
    Top = 16
  end
end
