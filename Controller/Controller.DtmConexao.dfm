object ControllerDtmConexao: TControllerDtmConexao
  OnCreate = DataModuleCreate
  OnDestroy = DataModuleDestroy
  Height = 192
  Width = 194
  PixelsPerInch = 120
  object FDConnection: TFDConnection
    Params.Strings = (
      'DriverID=FB'
      'Database=C:\CrisProject\Fortes\Database\RETAG_BASE.FDB'
      'Password=masterkey'
      'Port=3050'
      'Server=localhost'
      'User_Name=SYSDBA')
    LoginPrompt = False
    Left = 56
    Top = 64
  end
end
