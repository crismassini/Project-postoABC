object ViewCadastroBase: TViewCadastroBase
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = 'ViewCadastroBase'
  ClientHeight = 433
  ClientWidth = 622
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 15
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 622
    Height = 81
    Align = alTop
    Caption = 'Cadastro Base'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -25
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 414
    Width = 622
    Height = 19
    Panels = <>
  end
  object DBNavigator1: TDBNavigator
    Left = 0
    Top = 81
    Width = 622
    Height = 49
    DataSource = dtsCadastro
    VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbInsert, nbDelete, nbEdit, nbPost, nbCancel]
    Align = alTop
    TabOrder = 2
  end
  object dtsCadastro: TDataSource
    Left = 552
    Top = 24
  end
  object dtsPesquisa: TDataSource
    Left = 48
    Top = 40
  end
end
