inherited ViewCadUsuario: TViewCadUsuario
  Caption = 'ViewCadUsuario'
  ClientHeight = 498
  ClientWidth = 366
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  ExplicitLeft = 3
  ExplicitTop = 3
  ExplicitWidth = 384
  ExplicitHeight = 545
  PixelsPerInch = 96
  TextHeight = 15
  inherited Panel1: TPanel
    Width = 366
    Caption = 'Cadastro de Usu'#225'rios'
    ExplicitWidth = 366
  end
  inherited StatusBar1: TStatusBar
    Top = 479
    Width = 366
    ExplicitTop = 543
    ExplicitWidth = 366
  end
  inherited DBNavigator1: TDBNavigator
    Top = 425
    Width = 366
    Hints.Strings = ()
    ExplicitTop = 425
    ExplicitWidth = 366
  end
  object Panel2: TPanel [3]
    Left = 0
    Top = 81
    Width = 366
    Height = 224
    Align = alTop
    TabOrder = 3
    object Label1: TLabel
      Left = 16
      Top = 22
      Width = 34
      Height = 15
      Caption = 'Nome'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 16
      Top = 155
      Width = 109
      Height = 15
      Caption = 'E-mail Recupera'#231#227'o'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label3: TLabel
      Left = 16
      Top = 86
      Width = 34
      Height = 15
      Caption = 'Senha'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object dbedtEmail: TDBEdit
      Left = 16
      Top = 176
      Width = 327
      Height = 23
      DataField = 'EMAIL'
      DataSource = dtsCadastro
      TabOrder = 0
    end
    object dbedtNome: TDBEdit
      Left = 16
      Top = 43
      Width = 327
      Height = 23
      DataField = 'NOME'
      DataSource = dtsCadastro
      TabOrder = 1
    end
    object dbedtSenha: TDBEdit
      Left = 16
      Top = 107
      Width = 327
      Height = 23
      DataField = 'SENHA'
      DataSource = dtsCadastro
      TabOrder = 2
    end
  end
  object pnlPesquisa: TPanel [4]
    Left = 0
    Top = 305
    Width = 366
    Height = 120
    Align = alTop
    Caption = 'pnlPesquisa'
    TabOrder = 4
    object dbgPesquisa: TDBGrid
      Left = 1
      Top = -4
      Width = 364
      Height = 123
      Align = alBottom
      DataSource = dtsPesquisa
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = []
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
      ParentFont = False
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -12
      TitleFont.Name = 'Segoe UI'
      TitleFont.Style = [fsBold]
      OnDblClick = dbgPesquisaDblClick
      Columns = <
        item
          Expanded = False
          FieldName = 'ID_USUARIO'
          Title.Caption = 'Id_Usuario'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NOME'
          Title.Caption = 'Nome'
          Width = 254
          Visible = True
        end>
    end
  end
  inherited dtsCadastro: TDataSource
    Left = 40
    Top = 16
  end
  inherited dtsPesquisa: TDataSource
    Left = 144
    Top = 16
  end
end
