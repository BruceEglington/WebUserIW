object dmUserTemp: TdmUserTemp
  OldCreateOrder = False
  Left = 58
  Top = 162
  Height = 535
  Width = 667
  object sqlcWebUser: TSQLConnection
    ConnectionName = 'UserControl_Local'
    DriverName = 'Interbase'
    GetDriverFunc = 'getSQLDriverINTERBASE'
    LibraryName = 'dbexpint.dll'
    LoginPrompt = False
    Params.Strings = (
      'DriverName=Interbase'
      'BlobSize=-1'
      'CommitRetain=False'
      'Database=localhost:c:\data\firebird\usercontrol.fdb'
      'ErrorResourceFile='
      'LocaleCode=0000'
      'Password=masterkey'
      'RoleName=RoleName'
      'ServerCharSet='
      'SQLDialect=1'
      'Interbase TransIsolation=ReadCommited'
      'User_Name=sysdba'
      'WaitOnLocks=True')
    VendorLib = 'GDS32.DLL'
    Left = 20
    Top = 12
  end
  object WebUser: TSQLQuery
    NoMetadata = True
    SQLConnection = sqlcWebUser
    Params = <>
    SQL.Strings = (
      'select * from webusers'
      'order by usernameid')
    Left = 104
    Top = 16
    object WebUserUSERNAMEID: TStringField
      FieldName = 'USERNAMEID'
      Required = True
    end
    object WebUserUSERPASSWORD: TStringField
      FieldName = 'USERPASSWORD'
      Required = True
      Size = 8
    end
    object WebUserUSERACCESSRIGHTS: TMemoField
      FieldName = 'USERACCESSRIGHTS'
      BlobType = ftMemo
      Size = 1
    end
    object WebUserUSERDISPLAYNAME: TStringField
      FieldName = 'USERDISPLAYNAME'
      Required = True
    end
  end
  object dspWebUser: TDataSetProvider
    DataSet = WebUser
    Constraints = True
    Left = 132
    Top = 16
  end
  object cdsWebUser: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspWebUser'
    Left = 160
    Top = 16
    object cdsWebUserUSERNAMEID: TStringField
      DisplayLabel = 'User ID'
      FieldName = 'USERNAMEID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsWebUserUSERPASSWORD: TStringField
      DisplayLabel = 'Password'
      FieldName = 'USERPASSWORD'
      Required = True
      Size = 8
    end
    object cdsWebUserUSERDISPLAYNAME: TStringField
      DisplayLabel = 'Display Name'
      FieldName = 'USERDISPLAYNAME'
      Required = True
    end
    object cdsWebUserUSERACCESSRIGHTS: TMemoField
      DisplayLabel = 'Access Rights'
      FieldName = 'USERACCESSRIGHTS'
      BlobType = ftMemo
      Size = 1
    end
  end
  object dsWebUser: TDataSource
    DataSet = cdsWebUser
    Left = 186
    Top = 16
  end
  object dspWebUser2: TDataSetProvider
    DataSet = qCheckUser
    Constraints = True
    Left = 136
    Top = 66
  end
  object cdsUserSpecific: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspWebUser2'
    Left = 162
    Top = 66
    object cdsUserSpecificUSERNAMEID: TStringField
      DisplayLabel = 'User ID'
      FieldName = 'USERNAMEID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsUserSpecificUSERPASSWORD: TStringField
      DisplayLabel = 'Password'
      FieldName = 'USERPASSWORD'
      Required = True
      Size = 8
    end
    object cdsUserSpecificUSERDISPLAYNAME: TStringField
      DisplayLabel = 'Display Name'
      FieldName = 'USERDISPLAYNAME'
      Required = True
    end
    object cdsUserSpecificUSERACCESSRIGHTS: TMemoField
      DisplayLabel = 'Access Rights'
      FieldName = 'USERACCESSRIGHTS'
      BlobType = ftMemo
      Size = 1
    end
  end
  object dsUserSpecific: TDataSource
    DataSet = cdsUserSpecific
    Left = 190
    Top = 66
  end
  object UserInfo: TSQLQuery
    NoMetadata = True
    SQLConnection = sqlcWebUser
    Params = <
      item
        DataType = ftString
        Name = 'UserNameID'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'SoftwareID'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select * from UserInfo'
      'where UserNameID=:UserNameID'
      'and SoftwareID=:SoftwareID')
    Left = 104
    Top = 112
    object UserInfoUSERNAMEID: TStringField
      FieldName = 'USERNAMEID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object UserInfoSOFTWAREID: TStringField
      FieldName = 'SOFTWAREID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object UserInfoLASTUSED: TSQLTimeStampField
      FieldName = 'LASTUSED'
      Required = True
    end
    object UserInfoSESSIONINFO: TBlobField
      FieldName = 'SESSIONINFO'
      Size = 1
    end
  end
  object dspUserInfo: TDataSetProvider
    DataSet = UserInfo
    Constraints = True
    Left = 132
    Top = 112
  end
  object cdsUserInfo: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspUserInfo'
    Left = 160
    Top = 112
    object cdsUserInfoUSERNAMEID: TStringField
      FieldName = 'USERNAMEID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsUserInfoSOFTWAREID: TStringField
      FieldName = 'SOFTWAREID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsUserInfoLASTUSED: TSQLTimeStampField
      FieldName = 'LASTUSED'
      Required = True
    end
    object cdsUserInfoSESSIONINFO: TBlobField
      FieldName = 'SESSIONINFO'
      Size = 1
    end
  end
  object qUserContact: TSQLQuery
    NoMetadata = True
    SQLConnection = sqlcWebUser
    Params = <
      item
        DataType = ftString
        Name = 'USERNAMEID'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select * from user_email'
      'where USERNAMEID=:USERNAMEID')
    Left = 104
    Top = 162
    object qUserContactUSERNAMEID: TStringField
      FieldName = 'USERNAMEID'
      Required = True
    end
    object qUserContactLASTNAME: TStringField
      FieldName = 'LASTNAME'
      Required = True
    end
    object qUserContactFIRSTNAME: TStringField
      FieldName = 'FIRSTNAME'
      Required = True
    end
    object qUserContactREGISTRATIONDATE: TSQLTimeStampField
      FieldName = 'REGISTRATIONDATE'
      Required = True
    end
    object qUserContactEMAILADDRESS: TStringField
      FieldName = 'EMAILADDRESS'
      Required = True
      Size = 200
    end
  end
  object dspUserContact: TDataSetProvider
    DataSet = qUserContact
    Constraints = True
    Left = 132
    Top = 162
  end
  object cdsUserContact: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspUserContact'
    Left = 160
    Top = 162
    object cdsUserContactUSERNAMEID: TStringField
      DisplayLabel = 'User ID'
      FieldName = 'USERNAMEID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsUserContactLASTNAME: TStringField
      DisplayLabel = 'Lastname'
      FieldName = 'LASTNAME'
      Required = True
    end
    object cdsUserContactFIRSTNAME: TStringField
      DisplayLabel = 'Firstname'
      FieldName = 'FIRSTNAME'
      Required = True
    end
    object cdsUserContactREGISTRATIONDATE: TSQLTimeStampField
      DisplayLabel = 'Registration date'
      FieldName = 'REGISTRATIONDATE'
      Required = True
    end
    object cdsUserContactEMAILADDRESS: TStringField
      DisplayLabel = 'E-mail address'
      FieldName = 'EMAILADDRESS'
      Required = True
      Size = 200
    end
  end
  object NewUser: TSQLQuery
    NoMetadata = True
    SQLConnection = sqlcWebUser
    Params = <>
    SQL.Strings = (
      'select * from WebUsers')
    Left = 104
    Top = 214
    object NewUserUSERNAMEID: TStringField
      FieldName = 'USERNAMEID'
      Required = True
    end
    object NewUserUSERPASSWORD: TStringField
      FieldName = 'USERPASSWORD'
      Required = True
      Size = 8
    end
    object NewUserUSERDISPLAYNAME: TStringField
      FieldName = 'USERDISPLAYNAME'
      Required = True
    end
    object NewUserUSERACCESSRIGHTS: TMemoField
      FieldName = 'USERACCESSRIGHTS'
      BlobType = ftMemo
      Size = 1
    end
  end
  object dspNewUser: TDataSetProvider
    DataSet = NewUser
    Constraints = True
    Options = [poCascadeUpdates, poAutoRefresh, poPropogateChanges]
    Left = 130
    Top = 214
  end
  object cdsNewUser: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspNewUser'
    Left = 158
    Top = 214
    object cdsNewUserUSERNAMEID: TStringField
      DisplayLabel = 'User ID'
      FieldName = 'USERNAMEID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsNewUserUSERPASSWORD: TStringField
      DisplayLabel = 'Password'
      FieldName = 'USERPASSWORD'
      Required = True
      Size = 8
    end
    object cdsNewUserUSERDISPLAYNAME: TStringField
      DisplayLabel = 'Display Name'
      FieldName = 'USERDISPLAYNAME'
      Required = True
    end
    object cdsNewUserUSERACCESSRIGHTS: TMemoField
      DisplayLabel = 'Access Rights'
      FieldName = 'USERACCESSRIGHTS'
      BlobType = ftMemo
      Size = 1
    end
  end
  object qPrograms: TSQLQuery
    NoMetadata = True
    SQLConnection = sqlcWebUser
    Params = <>
    SQL.Strings = (
      'select * from Programs')
    Left = 102
    Top = 262
    object qProgramsSOFTWAREID: TStringField
      FieldName = 'SOFTWAREID'
      Required = True
    end
    object qProgramsSOFTWARENAME: TStringField
      FieldName = 'SOFTWARENAME'
      Required = True
      Size = 50
    end
  end
  object dspPrograms: TDataSetProvider
    DataSet = qPrograms
    Constraints = True
    Left = 130
    Top = 262
  end
  object cdsPrograms: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspPrograms'
    Left = 158
    Top = 262
    object cdsProgramsSOFTWAREID: TStringField
      DisplayLabel = 'Software ID'
      FieldName = 'SOFTWAREID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsProgramsSOFTWARENAME: TStringField
      DisplayLabel = 'Software Name'
      FieldName = 'SOFTWARENAME'
      Required = True
      Size = 50
    end
  end
  object qDVUsers: TSQLQuery
    NoMetadata = True
    SQLConnection = sqlcDateView
    Params = <>
    SQL.Strings = (
      'select * from Users')
    Left = 104
    Top = 364
    object qDVUsersUSERNAMEID: TStringField
      FieldName = 'USERNAMEID'
      Required = True
    end
  end
  object dspDVUsers: TDataSetProvider
    DataSet = qDVUsers
    Constraints = True
    Options = [poAutoRefresh, poPropogateChanges]
    Left = 130
    Top = 362
  end
  object cdsDVUsers: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspDVUsers'
    Left = 158
    Top = 362
    object cdsDVUsersUSERNAMEID: TStringField
      DisplayLabel = 'User ID'
      FieldName = 'USERNAMEID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
  end
  object qDVUsersWhoFor: TSQLQuery
    NoMetadata = True
    SQLConnection = sqlcDateView
    Params = <>
    SQL.Strings = (
      'select * from usersWhoFor')
    Left = 106
    Top = 412
  end
  object dspDVUsersWhoFor: TDataSetProvider
    DataSet = qDVUsersWhoFor
    Constraints = True
    Options = [poAutoRefresh, poPropogateChanges]
    Left = 134
    Top = 412
  end
  object cdsDVUsersWhoFor: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspDVUsersWhoFor'
    Left = 162
    Top = 412
    object cdsDVUsersWhoForUSERNAMEID: TStringField
      DisplayLabel = 'User ID'
      FieldName = 'USERNAMEID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsDVUsersWhoForWHOFORID: TStringField
      DisplayLabel = 'Who For ID'
      FieldName = 'WHOFORID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 5
    end
  end
  object sqlcDateView: TSQLConnection
    ConnectionName = 'DateView_Local'
    DriverName = 'Interbase'
    GetDriverFunc = 'getSQLDriverINTERBASE'
    LibraryName = 'dbexpint.dll'
    LoginPrompt = False
    Params.Strings = (
      'DriverName=Interbase'
      'BlobSize=-1'
      'CommitRetain=False'
      'Database=localhost:c:\data\firebird\dateview.fdb'
      'ErrorResourceFile='
      'LocaleCode=0000'
      'Password=masterkey'
      'RoleName=RoleName'
      'ServerCharSet='
      'SQLDialect=1'
      'Interbase TransIsolation=ReadCommited'
      'User_Name=sysdba'
      'WaitOnLocks=True')
    VendorLib = 'GDS32.DLL'
    Left = 28
    Top = 362
  end
  object qCheckUser: TSQLQuery
    NoMetadata = True
    SQLConnection = sqlcWebUser
    Params = <
      item
        DataType = ftUnknown
        Name = 'UsernameID'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'UserPassword'
        ParamType = ptUnknown
      end>
    SQL.Strings = (
      'select * from WebUsers'
      'where UserNameID=:UsernameID'
      'and UserPassword=:UserPassword')
    Left = 104
    Top = 66
    object qCheckUserUSERNAMEID: TStringField
      FieldName = 'USERNAMEID'
      Required = True
    end
    object qCheckUserUSERPASSWORD: TStringField
      FieldName = 'USERPASSWORD'
      Required = True
      Size = 8
    end
    object qCheckUserUSERDISPLAYNAME: TStringField
      FieldName = 'USERDISPLAYNAME'
      Required = True
    end
    object qCheckUserUSERACCESSRIGHTS: TMemoField
      FieldName = 'USERACCESSRIGHTS'
      BlobType = ftMemo
      Size = 1
    end
  end
end
