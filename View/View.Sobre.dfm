object ViewSobre: TViewSobre
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = 'Sobre | 2022 '
  ClientHeight = 125
  ClientWidth = 565
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poDesktopCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 15
  object Label1: TLabel
    Left = 8
    Top = 8
    Width = 547
    Height = 41
    Caption = 'Desenvolvido por Cristhian de Oliveira Massini'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -25
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lblGitHub: TLinkLabel
    Left = 8
    Top = 64
    Width = 126
    Height = 49
    Caption = 'GITHUB'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -33
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    OnLinkClick = lblGitHubLinkClick
  end
  object LblLinkedin: TLinkLabel
    Left = 401
    Top = 64
    Width = 156
    Height = 49
    Caption = 'LINKEDIN'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -33
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    OnLinkClick = LblLinkedinLinkClick
  end
  object lblZap: TLinkLabel
    Left = 184
    Top = 64
    Width = 184
    Height = 49
    Caption = 'WHATSAPP'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -33
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
    OnLinkClick = lblZapLinkClick
  end
end
