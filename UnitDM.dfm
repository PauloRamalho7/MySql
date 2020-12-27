object dm: Tdm
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 371
  Width = 525
  object Conn: TFDConnection
    Params.Strings = (
      'Server=10.1.1.97'
      'User_Name=_consulta'
      'Password=@idealconsulta'
      'Database=wingraph50'
      'Port=3307'
      'DriverID=MySQL')
    LoginPrompt = False
    Left = 72
    Top = 40
  end
  object MySQL_Link: TFDPhysMySQLDriverLink
    VendorLib = 'C:\Bremen\Servidor\libmySQL.dll'
    Left = 152
    Top = 40
  end
  object FDWaitCursor: TFDGUIxWaitCursor
    Provider = 'FMX'
    Left = 248
    Top = 40
  end
end
