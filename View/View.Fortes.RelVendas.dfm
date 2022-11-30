object ViewFortesRelVendas: TViewFortesRelVendas
  Left = 0
  Top = 0
  Caption = 'ViewFortesRelVendas'
  ClientHeight = 433
  ClientWidth = 991
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  PixelsPerInch = 96
  TextHeight = 15
  object rlrVendas: TRLReport
    Left = 0
    Top = 0
    Width = 992
    Height = 1403
    DataSource = ViewRelVendas.dtsVendas
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -17
    Font.Name = 'Segoe UI'
    Font.Style = []
    object rblCabecalho: TRLBand
      Left = 47
      Top = 47
      Width = 898
      Height = 28
      BandType = btHeader
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = False
      Borders.DrawRight = False
      Borders.DrawBottom = True
      object RLSystemInfo1: TRLSystemInfo
        Left = 3
        Top = 3
        Width = 51
        Height = 23
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -17
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        Text = ''
      end
      object RLSystemInfo2: TRLSystemInfo
        Left = 842
        Top = 3
        Width = 53
        Height = 23
        Alignment = taRightJustify
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -17
        Font.Name = 'Segoe UI'
        Font.Style = []
        Info = itHour
        ParentFont = False
        Text = ''
      end
      object lblNomePosto: TRLLabel
        Left = 384
        Top = 3
        Width = 127
        Height = 23
        Caption = 'Auto Posto ABC'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -17
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
    end
    object rlTitulo: TRLBand
      Left = 47
      Top = 75
      Width = 898
      Height = 90
      BandType = btTitle
      object RLLabel1: TRLLabel
        Left = 0
        Top = 0
        Width = 898
        Height = 41
        Align = faTop
        Alignment = taCenter
        Caption = 'RELAT'#211'RIO DE VENDAS POR PER'#205'ODO '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -25
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lblPeriodo: TRLLabel
        Left = 0
        Top = 41
        Width = 898
        Height = 25
        Align = faTop
        Alignment = taCenter
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = False
        Borders.DrawBottom = True
      end
    end
    object rlbColunas: TRLBand
      Left = 47
      Top = 165
      Width = 898
      Height = 40
      BandType = btColumnHeader
      object RLLabel3: TRLLabel
        Left = 96
        Top = 6
        Width = 91
        Height = 23
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = False
        Borders.DrawBottom = False
        Caption = 'ID BOMBA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -17
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel4: TRLLabel
        Left = 197
        Top = 6
        Width = 100
        Height = 23
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = False
        Borders.DrawBottom = False
        Caption = 'DESCRICAO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -17
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object QTD: TRLLabel
        Left = 431
        Top = 6
        Width = 61
        Height = 23
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -17
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel6: TRLLabel
        Left = 501
        Top = 6
        Width = 89
        Height = 23
        Caption = 'R$ VENDA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -17
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel7: TRLLabel
        Left = 593
        Top = 6
        Width = 102
        Height = 23
        Caption = '% IMPOSTO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -17
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel8: TRLLabel
        Left = 698
        Top = 6
        Width = 85
        Height = 23
        Caption = 'R$ TOTAL'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -17
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel2: TRLLabel
        Left = 3
        Top = 6
        Width = 86
        Height = 23
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = False
        Borders.DrawBottom = False
        Caption = 'ID VENDA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -17
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
    object rlbDetalhe: TRLBand
      Left = 47
      Top = 205
      Width = 898
      Height = 27
      object RLDBText1: TRLDBText
        Left = 3
        Top = 0
        Width = 85
        Height = 23
        DataField = 'ID_VENDA'
        DataSource = ViewRelVendas.dtsVendas
        Text = ''
      end
      object RLDBText2: TRLDBText
        Left = 94
        Top = 0
        Width = 88
        Height = 23
        DataField = 'ID_BOMBA'
        DataSource = ViewRelVendas.dtsVendas
        Text = ''
      end
      object RLDBText3: TRLDBText
        Left = 197
        Top = 0
        Width = 100
        Height = 23
        DataField = 'DESCRICAO'
        DataSource = ViewRelVendas.dtsVendas
        Text = ''
      end
      object RLDBText4: TRLDBText
        Left = 431
        Top = 3
        Width = 61
        Height = 23
        DataField = 'QTD'
        DataSource = ViewRelVendas.dtsVendas
        Text = ''
      end
      object RLDBText5: TRLDBText
        Left = 501
        Top = 3
        Width = 89
        Height = 23
        DataField = 'PRECOVENDA'
        DataSource = ViewRelVendas.dtsVendas
        Text = ''
      end
      object RLDBText6: TRLDBText
        Left = 593
        Top = 3
        Width = 102
        Height = 23
        DataField = 'PERCENTUALIMPOSTO'
        DataSource = ViewRelVendas.dtsVendas
        Text = ''
      end
      object RLDBText7: TRLDBText
        Left = 698
        Top = 3
        Width = 85
        Height = 23
        DataField = 'TOTALVENDA'
        DataSource = ViewRelVendas.dtsVendas
        Text = ''
      end
    end
    object rlbRodape: TRLBand
      Left = 47
      Top = 232
      Width = 898
      Height = 48
      BandType = btFooter
    end
  end
end
