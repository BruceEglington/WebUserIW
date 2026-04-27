object dmUser: TdmUser
  Height = 732
  Width = 813
  object WebUser: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select * from webusers'
      'order by USERID')
    SQLConnection = sqlcWebUser
    Left = 104
    Top = 16
    object WebUserUSERID: TWideStringField
      FieldName = 'USERID'
      Required = True
      FixedChar = True
    end
    object WebUserUSERPASSWORD: TWideStringField
      FieldName = 'USERPASSWORD'
      Required = True
      FixedChar = True
      Size = 8
    end
    object WebUserUSERDISPLAYNAME: TWideStringField
      FieldName = 'USERDISPLAYNAME'
      Required = True
      FixedChar = True
    end
    object WebUserUSERACCESSRIGHTS: TBlobField
      FieldName = 'USERACCESSRIGHTS'
      Size = -1
    end
  end
  object dspWebUser: TDataSetProvider
    DataSet = WebUser
    Left = 132
    Top = 16
  end
  object cdsWebUser: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspWebUser'
    Left = 160
    Top = 16
    object cdsWebUserUSERID: TWideStringField
      FieldName = 'USERID'
      Required = True
      FixedChar = True
    end
    object cdsWebUserUSERPASSWORD: TWideStringField
      FieldName = 'USERPASSWORD'
      Required = True
      FixedChar = True
      Size = 8
    end
    object cdsWebUserUSERDISPLAYNAME: TWideStringField
      FieldName = 'USERDISPLAYNAME'
      Required = True
      FixedChar = True
    end
    object cdsWebUserUSERACCESSRIGHTS: TBlobField
      FieldName = 'USERACCESSRIGHTS'
    end
  end
  object dsWebUser: TDataSource
    DataSet = cdsWebUser
    Left = 186
    Top = 16
  end
  object dspUserSpecific: TDataSetProvider
    DataSet = qUserSpecific
    Left = 136
    Top = 66
  end
  object cdsUserSpecific: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspUserSpecific'
    Left = 162
    Top = 66
    object cdsUserSpecificUSERID: TWideStringField
      FieldName = 'USERID'
      Required = True
      FixedChar = True
    end
    object cdsUserSpecificUSERPASSWORD: TWideStringField
      FieldName = 'USERPASSWORD'
      Required = True
      FixedChar = True
      Size = 8
    end
    object cdsUserSpecificUSERDISPLAYNAME: TWideStringField
      FieldName = 'USERDISPLAYNAME'
      Required = True
      FixedChar = True
    end
    object cdsUserSpecificUSERACCESSRIGHTS: TBlobField
      FieldName = 'USERACCESSRIGHTS'
    end
  end
  object dsUserSpecific: TDataSource
    DataSet = cdsUserSpecific
    Left = 190
    Top = 66
  end
  object UserInfo: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'USERID'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'SoftwareID'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select * from UserInfo'
      'where USERID=:USERID'
      'and SoftwareID=:SoftwareID')
    SQLConnection = sqlcWebUser
    Left = 104
    Top = 112
    object UserInfoUSERID: TWideStringField
      FieldName = 'USERID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object UserInfoSOFTWAREID: TWideStringField
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
      Size = -1
    end
    object UserInfoBROWSERUSED: TWideStringField
      FieldName = 'BROWSERUSED'
      Size = 200
    end
  end
  object dspUserInfo: TDataSetProvider
    DataSet = UserInfo
    Left = 132
    Top = 112
  end
  object cdsUserInfo: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspUserInfo'
    Left = 160
    Top = 112
    object cdsUserInfoUSERID: TWideStringField
      FieldName = 'USERID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsUserInfoSOFTWAREID: TWideStringField
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
    end
    object cdsUserInfoBROWSERUSED: TWideStringField
      FieldName = 'BROWSERUSED'
      Size = 200
    end
  end
  object qUserContact: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'USERID'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select * from user_email'
      'where USERID=:USERID')
    SQLConnection = sqlcWebUser
    Left = 104
    Top = 162
    object qUserContactUSERID: TWideStringField
      FieldName = 'USERID'
      Required = True
    end
    object qUserContactLASTNAME: TWideStringField
      FieldName = 'LASTNAME'
      Required = True
    end
    object qUserContactFIRSTNAME: TWideStringField
      FieldName = 'FIRSTNAME'
      Required = True
    end
    object qUserContactREGISTRATIONDATE: TSQLTimeStampField
      FieldName = 'REGISTRATIONDATE'
      Required = True
    end
    object qUserContactEMAILADDRESS: TWideStringField
      FieldName = 'EMAILADDRESS'
      Required = True
      Size = 200
    end
  end
  object dspUserContact: TDataSetProvider
    DataSet = qUserContact
    Left = 132
    Top = 162
  end
  object cdsUserContact: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspUserContact'
    Left = 160
    Top = 162
    object cdsUserContactUSERID: TWideStringField
      DisplayLabel = 'User ID'
      FieldName = 'USERID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsUserContactLASTNAME: TWideStringField
      DisplayLabel = 'Lastname'
      FieldName = 'LASTNAME'
      Required = True
    end
    object cdsUserContactFIRSTNAME: TWideStringField
      DisplayLabel = 'Firstname'
      FieldName = 'FIRSTNAME'
      Required = True
    end
    object cdsUserContactREGISTRATIONDATE: TSQLTimeStampField
      DisplayLabel = 'Registration date'
      FieldName = 'REGISTRATIONDATE'
      Required = True
    end
    object cdsUserContactEMAILADDRESS: TWideStringField
      DisplayLabel = 'E-mail address'
      FieldName = 'EMAILADDRESS'
      Required = True
      Size = 200
    end
  end
  object NewUser: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select * from WebUsers')
    SQLConnection = sqlcWebUser
    Left = 104
    Top = 214
    object NewUserUSERID: TWideStringField
      FieldName = 'USERID'
      Required = True
    end
    object NewUserUSERPASSWORD: TWideStringField
      FieldName = 'USERPASSWORD'
      Required = True
      Size = 8
    end
    object NewUserUSERDISPLAYNAME: TWideStringField
      FieldName = 'USERDISPLAYNAME'
      Required = True
    end
    object NewUserUSERACCESSRIGHTS: TBlobField
      FieldName = 'USERACCESSRIGHTS'
      Size = -1
    end
  end
  object dspNewUser: TDataSetProvider
    DataSet = NewUser
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
    object cdsNewUserUSERID: TWideStringField
      DisplayLabel = 'User ID'
      FieldName = 'USERID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsNewUserUSERPASSWORD: TWideStringField
      DisplayLabel = 'Password'
      FieldName = 'USERPASSWORD'
      Required = True
      Size = 8
    end
    object cdsNewUserUSERDISPLAYNAME: TWideStringField
      DisplayLabel = 'Display Name'
      FieldName = 'USERDISPLAYNAME'
      Required = True
    end
    object cdsNewUserUSERACCESSRIGHTS: TBlobField
      DisplayLabel = 'Access Rights'
      FieldName = 'USERACCESSRIGHTS'
    end
  end
  object qPrograms: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select * from Programs')
    SQLConnection = sqlcWebUser
    Left = 102
    Top = 262
    object qProgramsSOFTWAREID: TWideStringField
      FieldName = 'SOFTWAREID'
      Required = True
    end
    object qProgramsSOFTWARENAME: TWideStringField
      FieldName = 'SOFTWARENAME'
      Required = True
      Size = 50
    end
  end
  object dspPrograms: TDataSetProvider
    DataSet = qPrograms
    Left = 130
    Top = 262
  end
  object cdsPrograms: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspPrograms'
    Left = 158
    Top = 262
    object cdsProgramsSOFTWAREID: TWideStringField
      DisplayLabel = 'Software ID'
      FieldName = 'SOFTWAREID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsProgramsSOFTWARENAME: TWideStringField
      DisplayLabel = 'Software Name'
      FieldName = 'SOFTWARENAME'
      Required = True
      Size = 50
    end
  end
  object qUserSpecific: TSQLQuery
    MaxBlobSize = 1
    Params = <
      item
        DataType = ftString
        Name = 'USERID'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'UserPassword'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select * from WebUsers'
      'where USERID=:USERID'
      'and UserPassword=:UserPassword')
    SQLConnection = sqlcWebUser
    Left = 104
    Top = 66
    object qUserSpecificUSERID: TWideStringField
      FieldName = 'USERID'
      Required = True
      FixedChar = True
    end
    object qUserSpecificUSERPASSWORD: TWideStringField
      FieldName = 'USERPASSWORD'
      Required = True
      FixedChar = True
      Size = 8
    end
    object qUserSpecificUSERDISPLAYNAME: TWideStringField
      FieldName = 'USERDISPLAYNAME'
      Required = True
      FixedChar = True
    end
    object qUserSpecificUSERACCESSRIGHTS: TBlobField
      FieldName = 'USERACCESSRIGHTS'
      Size = -1
    end
  end
  object qProgress: TSQLQuery
    ObjectView = True
    MaxBlobSize = 1
    Params = <
      item
        DataType = ftString
        Name = 'SoftwareID'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'ProgressID'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select * from Progress'
      'where Progress.SoftwareID=:SoftwareID'
      'and Progress.ProgressID=:ProgressID')
    SQLConnection = sqlcWebUser
    Left = 394
    Top = 16
    object qProgressSOFTWAREID: TWideStringField
      FieldName = 'SOFTWAREID'
      Required = True
    end
    object qProgressPROGRESSID: TIntegerField
      FieldName = 'PROGRESSID'
      Required = True
    end
    object qProgressPROGRESSDATE: TSQLTimeStampField
      FieldName = 'PROGRESSDATE'
      Required = True
    end
    object qProgressPROGRESSDETAILS: TBlobField
      FieldName = 'PROGRESSDETAILS'
      Size = -1
    end
  end
  object dspProgress: TDataSetProvider
    DataSet = qProgress
    Options = [poFetchBlobsOnDemand, poCascadeUpdates, poReadOnly, poDisableEdits, poAutoRefresh, poPropogateChanges]
    Left = 422
    Top = 16
  end
  object cdsProgress: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspProgress'
    ReadOnly = True
    Left = 450
    Top = 16
    object cdsProgressSOFTWAREID: TWideStringField
      FieldName = 'SOFTWAREID'
      Required = True
    end
    object cdsProgressPROGRESSID: TIntegerField
      FieldName = 'PROGRESSID'
      Required = True
    end
    object cdsProgressPROGRESSDATE: TSQLTimeStampField
      FieldName = 'PROGRESSDATE'
      Required = True
    end
    object cdsProgressPROGRESSDETAILS: TBlobField
      FieldName = 'PROGRESSDETAILS'
    end
  end
  object dsProgress: TDataSource
    DataSet = cdsProgress
    Left = 478
    Top = 16
  end
  object qNumTimesUsed: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftWideString
        Name = 'SoftwareID'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select * from Program_Use'
      'where Program_Use.SoftwareID=:SoftwareID')
    SQLConnection = sqlcWebUser
    Left = 102
    Top = 318
    object qNumTimesUsedSOFTWAREID: TWideStringField
      FieldName = 'SOFTWAREID'
      Required = True
      FixedChar = True
    end
    object qNumTimesUsedNUMTIMESUSED: TIntegerField
      FieldName = 'NUMTIMESUSED'
      Required = True
    end
  end
  object dspNumTimesUsed: TDataSetProvider
    DataSet = qNumTimesUsed
    Options = [poCascadeUpdates, poAutoRefresh, poPropogateChanges]
    Left = 130
    Top = 318
  end
  object cdsNumTimesUsed: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspNumTimesUsed'
    Left = 158
    Top = 318
    object cdsNumTimesUsedSOFTWAREID: TWideStringField
      FieldName = 'SOFTWAREID'
      Required = True
      FixedChar = True
    end
    object cdsNumTimesUsedNUMTIMESUSED: TIntegerField
      FieldName = 'NUMTIMESUSED'
      Required = True
    end
  end
  object dsNumTimesUsed: TDataSource
    DataSet = cdsNumTimesUsed
    Left = 186
    Top = 318
  end
  object qForgotten: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'EmailAddress'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select User_Email.USERID '
      'from User_Email'
      'where User_Email.EMailAddress = :EmailAddress'
      ''
      ''
      '')
    SQLConnection = sqlcWebUser
    Left = 394
    Top = 74
  end
  object dspForgotten: TDataSetProvider
    DataSet = qForgotten
    Options = [poCascadeUpdates, poAutoRefresh, poPropogateChanges]
    Left = 448
    Top = 74
  end
  object cdsForgotten: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspForgotten'
    Left = 476
    Top = 74
    object cdsForgottenUSERID: TWideStringField
      FieldName = 'USERID'
      Required = True
      FixedChar = True
    end
    object cdsForgottenqForgottenDetails: TDataSetField
      FieldName = 'qForgottenDetails'
    end
  end
  object dsForgotten: TDataSource
    DataSet = cdsForgotten
    Left = 504
    Top = 74
  end
  object dsqForgotten: TDataSource
    DataSet = qForgotten
    Left = 422
    Top = 74
  end
  object qForgottenDetails: TSQLQuery
    DataSource = dsqForgotten
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'USERID'
        ParamType = ptInput
        Size = 21
      end>
    SQL.Strings = (
      'select WebUsers.USERID, WebUsers.UserPassword'
      'from WebUsers'
      'where WebUsers.USERID = :USERID')
    SQLConnection = sqlcWebUser
    Left = 396
    Top = 126
  end
  object cdsForgottenDetails: TClientDataSet
    Aggregates = <>
    DataSetField = cdsForgottenqForgottenDetails
    Params = <>
    Left = 480
    Top = 126
    object cdsForgottenDetailsUSERID: TWideStringField
      FieldName = 'USERID'
      Required = True
      FixedChar = True
    end
    object cdsForgottenDetailsUSERPASSWORD: TWideStringField
      DisplayLabel = 'Password'
      FieldName = 'USERPASSWORD'
      Required = True
      Size = 8
    end
  end
  object dsForgottenDetails: TDataSource
    DataSet = cdsForgottenDetails
    Left = 508
    Top = 126
  end
  object qCookieInfo: TSQLQuery
    MaxBlobSize = 1
    Params = <
      item
        DataType = ftString
        Name = 'USERID'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'SoftwareID'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT USERINFO.USERID, USERINFO.SOFTWAREID,'
      '  USERINFO.LASTUSED,USERINFO.COOKIEINFO'
      'FROM USERINFO'
      'WHERE USERINFO.USERID = :USERID'
      'AND USERINFO.SOFTWAREID = :SoftwareID')
    SQLConnection = sqlcWebUser
    Left = 104
    Top = 370
  end
  object dspCookieInfo: TDataSetProvider
    DataSet = qCookieInfo
    Options = [poCascadeDeletes, poCascadeUpdates, poAllowMultiRecordUpdates, poAutoRefresh, poPropogateChanges]
    Left = 132
    Top = 370
  end
  object cdsCookieInfo: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspCookieInfo'
    Left = 160
    Top = 370
    object cdsCookieInfoUSERID: TWideStringField
      FieldName = 'USERID'
      Required = True
    end
    object cdsCookieInfoSOFTWAREID: TWideStringField
      FieldName = 'SOFTWAREID'
      Required = True
    end
    object cdsCookieInfoLASTUSED: TSQLTimeStampField
      FieldName = 'LASTUSED'
      Required = True
    end
    object cdsCookieInfoCOOKIEINFO: TMemoField
      FieldName = 'COOKIEINFO'
      BlobType = ftMemo
    end
  end
  object dsCookieInfo: TDataSource
    DataSet = cdsCookieInfo
    Left = 188
    Top = 370
  end
  object qUserAccount: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'USERID'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'SOFTWAREID'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select USER_ACCOUNT.USERID, '
      '          USER_ACCOUNT.SOFTWAREID, '
      '          USER_ACCOUNT.ACCOUNTID,'
      '          PROGRAMS.SOFTWARENAME,PROGRAMS.USEACCOUNTS,'
      '          ACCOUNTS.MEMTYPEID'
      'from USER_ACCOUNT, PROGRAMS,ACCOUNTS'
      'where USER_ACCOUNT.USERID = :USERID'
      'and USER_ACCOUNT.SOFTWAREID = :SOFTWAREID'
      'and USER_ACCOUNT.SOFTWAREID = PROGRAMS.SOFTWAREID'
      'AND USER_ACCOUNT.ACCOUNTID = ACCOUNTS.ACCOUNTID')
    SQLConnection = sqlcWebUser
    Left = 380
    Top = 216
  end
  object qAccounts: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'ACCOUNTID'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select ACCOUNTS.ACCOUNTID, ACCOUNTS.ACCOUNTNAME,'
      '          ACCOUNTS.DATESTARTED, ACCOUNTS.MEMTYPEID,'
      '          ACCOUNTS.VALIDUNTIL'
      'from ACCOUNTS'
      'where ACCOUNTS.ACCOUNTID = :ACCOUNTID')
    SQLConnection = sqlcWebUser
    Left = 380
    Top = 260
  end
  object qMemberType: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'MEMTYPEID'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select MEMBERTYPES.MEMTYPEID,'
      '           MEMBERTYPES.MEMBERTYPE,'
      '           MEMBERTYPES.SUBSCRIPTION'
      'from MEMBERTYPES'
      'where MEMBERTYPES.MEMTYPEID = :MEMTYPEID')
    SQLConnection = sqlcWebUser
    Left = 380
    Top = 308
  end
  object dspUserAccount: TDataSetProvider
    DataSet = qUserAccount
    Options = [poCascadeDeletes, poCascadeUpdates, poAllowMultiRecordUpdates, poAutoRefresh, poPropogateChanges]
    Left = 408
    Top = 216
  end
  object dspAccounts: TDataSetProvider
    DataSet = qAccounts
    Options = [poCascadeDeletes, poCascadeUpdates, poAllowMultiRecordUpdates, poAutoRefresh, poPropogateChanges]
    Left = 404
    Top = 260
  end
  object dspMemberType: TDataSetProvider
    DataSet = qMemberType
    Options = [poCascadeDeletes, poCascadeUpdates, poAllowMultiRecordUpdates, poAutoRefresh, poPropogateChanges]
    Left = 408
    Top = 308
  end
  object cdsUserAccount: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspUserAccount'
    Left = 436
    Top = 216
    object cdsUserAccountUSERID: TWideStringField
      FieldName = 'USERID'
      Required = True
      FixedChar = True
    end
    object cdsUserAccountSOFTWAREID: TWideStringField
      FieldName = 'SOFTWAREID'
      Required = True
      FixedChar = True
    end
    object cdsUserAccountACCOUNTID: TWideStringField
      FieldName = 'ACCOUNTID'
      Required = True
      FixedChar = True
    end
    object cdsUserAccountSOFTWARENAME: TWideStringField
      FieldName = 'SOFTWARENAME'
      Required = True
      FixedChar = True
      Size = 50
    end
    object cdsUserAccountUSEACCOUNTS: TWideStringField
      FieldName = 'USEACCOUNTS'
      Required = True
      FixedChar = True
      Size = 1
    end
    object cdsUserAccountMEMTYPEID: TWideStringField
      FieldName = 'MEMTYPEID'
      Required = True
      FixedChar = True
      Size = 5
    end
  end
  object cdsAccounts: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspAccounts'
    Left = 432
    Top = 260
    object cdsAccountsACCOUNTID: TWideStringField
      FieldName = 'ACCOUNTID'
      Required = True
      FixedChar = True
    end
    object cdsAccountsACCOUNTNAME: TWideStringField
      FieldName = 'ACCOUNTNAME'
      Required = True
      FixedChar = True
      Size = 50
    end
    object cdsAccountsDATESTARTED: TSQLTimeStampField
      FieldName = 'DATESTARTED'
      Required = True
      DisplayFormat = 'ddddd'
    end
    object cdsAccountsVALIDUNTIL: TSQLTimeStampField
      FieldName = 'VALIDUNTIL'
      Required = True
      DisplayFormat = 'ddddd'
    end
    object cdsAccountsMEMTYPEID: TWideStringField
      FieldName = 'MEMTYPEID'
      Required = True
      FixedChar = True
      Size = 5
    end
  end
  object cdsMemberType: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspMemberType'
    Left = 436
    Top = 308
    object cdsMemberTypeMEMTYPEID: TWideStringField
      FieldName = 'MEMTYPEID'
      Required = True
      FixedChar = True
      Size = 5
    end
    object cdsMemberTypeMEMBERTYPE: TWideStringField
      FieldName = 'MEMBERTYPE'
      Required = True
      FixedChar = True
      Size = 30
    end
    object cdsMemberTypeSUBSCRIPTION: TFloatField
      FieldName = 'SUBSCRIPTION'
      Required = True
      DisplayFormat = 'USD ###0.00'
    end
  end
  object dsMemberType: TDataSource
    DataSet = cdsMemberType
    Left = 464
    Top = 308
  end
  object dsAccounts: TDataSource
    DataSet = cdsAccounts
    Left = 460
    Top = 260
  end
  object dsUserAccount: TDataSource
    DataSet = cdsUserAccount
    Left = 464
    Top = 216
  end
  object qMemberTypes: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select MEMBERTYPES.MEMTYPEID,'
      '           MEMBERTYPES.MEMBERTYPE,'
      '           MEMBERTYPES.SUBSCRIPTION,'
      '           MEMBERTYPES.ISVISIBLE'
      'from MEMBERTYPES'
      'where MEMBERTYPES.ISVISIBLE = '#39'Y'#39)
    SQLConnection = sqlcWebUser
    Left = 100
    Top = 508
  end
  object dspMemberTypes: TDataSetProvider
    DataSet = qMemberTypes
    Options = [poCascadeDeletes, poCascadeUpdates, poAllowMultiRecordUpdates, poAutoRefresh, poPropogateChanges]
    Left = 128
    Top = 508
  end
  object cdsMemberTypes: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspMemberTypes'
    Left = 156
    Top = 508
    object cdsMemberTypesMEMTYPEID: TWideStringField
      FieldName = 'MEMTYPEID'
      Required = True
      FixedChar = True
      Size = 5
    end
    object cdsMemberTypesMEMBERTYPE: TWideStringField
      FieldName = 'MEMBERTYPE'
      Required = True
      FixedChar = True
      Size = 30
    end
    object cdsMemberTypesSUBSCRIPTION: TFloatField
      FieldName = 'SUBSCRIPTION'
      Required = True
      DisplayFormat = '###0.00'
    end
  end
  object dsMemberTypes: TDataSource
    DataSet = cdsMemberTypes
    Left = 184
    Top = 508
  end
  object qThisProgram: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'SoftwareID'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select PROGRAMS.SOFTWAREID, PROGRAMS.SOFTWARENAME,'
      '  PROGRAMS.USEACCOUNTS,  PROGRAMS.DEFAULTACCOUNTID,'
      '  PROGRAMS.EMAILDEVELOPER,'
      '  PROGRAMS.EMAILADMINISTRATOR,'
      '  PROGRAMS.URLONTERMINATE'
      'from PROGRAMS'
      'where PROGRAMS.SOFTWAREID = :SoftwareID')
    SQLConnection = sqlcWebUser
    Left = 102
    Top = 458
  end
  object dspThisProgram: TDataSetProvider
    DataSet = qThisProgram
    Options = [poCascadeDeletes, poCascadeUpdates, poAllowMultiRecordUpdates, poAutoRefresh, poPropogateChanges]
    Left = 130
    Top = 458
  end
  object cdsThisProgram: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspThisProgram'
    Left = 158
    Top = 458
    object cdsThisProgramSOFTWAREID: TWideStringField
      FieldName = 'SOFTWAREID'
      Required = True
      FixedChar = True
    end
    object cdsThisProgramSOFTWARENAME: TWideStringField
      FieldName = 'SOFTWARENAME'
      Required = True
      FixedChar = True
      Size = 50
    end
    object cdsThisProgramUSEACCOUNTS: TWideStringField
      FieldName = 'USEACCOUNTS'
      Required = True
      FixedChar = True
      Size = 1
    end
    object cdsThisProgramDEFAULTACCOUNTID: TWideStringField
      FieldName = 'DEFAULTACCOUNTID'
      Required = True
      FixedChar = True
    end
    object cdsThisProgramEMAILDEVELOPER: TWideStringField
      FieldName = 'EMAILDEVELOPER'
      Required = True
      FixedChar = True
      Size = 200
    end
    object cdsThisProgramEMAILADMINISTRATOR: TWideStringField
      FieldName = 'EMAILADMINISTRATOR'
      Required = True
      FixedChar = True
      Size = 200
    end
    object cdsThisProgramURLONTERMINATE: TWideStringField
      FieldName = 'URLONTERMINATE'
      Required = True
      FixedChar = True
      Size = 200
    end
  end
  object dsThisProgram: TDataSource
    DataSet = cdsThisProgram
    Left = 184
    Top = 460
  end
  object qYears: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select * from YearList'
      'order by YearNo')
    SQLConnection = sqlcWebUser
    Left = 644
    Top = 20
  end
  object qMonths: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select * from MonthList'
      'order by MonthNo')
    SQLConnection = sqlcWebUser
    Left = 644
    Top = 68
  end
  object cdsMonths: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspMonths'
    Left = 700
    Top = 68
    object cdsMonthsMONTHNO: TSmallintField
      FieldName = 'MONTHNO'
      Required = True
    end
    object cdsMonthsMONTHID: TWideStringField
      FieldName = 'MONTHID'
      FixedChar = True
      Size = 3
    end
    object cdsMonthsMONTHNAME: TWideStringField
      FieldName = 'MONTHNAME'
      FixedChar = True
      Size = 10
    end
  end
  object dspMonths: TDataSetProvider
    DataSet = qMonths
    Options = [poAutoRefresh, poPropogateChanges]
    Left = 672
    Top = 68
  end
  object dsMonths: TDataSource
    DataSet = cdsMonths
    Left = 728
    Top = 68
  end
  object dspYears: TDataSetProvider
    DataSet = qYears
    Options = [poAutoRefresh, poPropogateChanges]
    Left = 672
    Top = 20
  end
  object cdsYears: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspYears'
    Left = 700
    Top = 20
    object cdsYearsYEARNO: TSmallintField
      FieldName = 'YEARNO'
      Required = True
    end
  end
  object dsYears: TDataSource
    DataSet = cdsYears
    Left = 728
    Top = 20
  end
  object sqlcWebUser: TSQLConnection
    DriverName = 'DevartFirebird'
    LoginPrompt = False
    Params.Strings = (
      'VendorLibOsx=libfbclient.dylib'
      'GetDriverFunc=getSQLDriverFirebird'
      'LibraryName=c:\exe64\dbexpida41.dll'
      'VendorLib=c:\exe64\fbclient.dll'
      'DataBase=c:\data\firebird\usercontrol2025v50_utf8.fdb'
      'User_Name=SYSDBA'
      'Password=V0lcano3^'
      'SQLDialect=3'
      'LocaleCode=0000'
      'DevartFirebird TransIsolation=ReadCommitted'
      'ProductName=DevartFirebird'
      'DriverUnit=DbxDevartInterBase'
      'Charset=UTF8'
      'UseUnicode=true')
    Left = 32
    Top = 8
  end
  object qInsertDevInfo: TSQLQuery
    MaxBlobSize = 1
    Params = <
      item
        DataType = ftTimeStamp
        Name = 'tDatesaved'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'tDateSavedStr'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'tmpStr'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'Insert into DevTest'
      '(DateSaved,DateSavedStr,QueryCheckStr)'
      'Values(:tDatesaved,:tDatesavedStr,:tmpStr)')
    SQLConnection = sqlcWebUser
    Left = 656
    Top = 460
  end
  object qUserMaxOutputRecords: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'UserID'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'DownloadTypeID'
        ParamType = ptInput
      end>
    SQL.Strings = (
      
        'SELECT UserMaxOutputRecords.UserID, UserMaxOutputRecords.Downloa' +
        'dTypeID,'
      '  DownloadTypes.DownloadType,UserMaxOutputRecords.MaxAllowed'
      'FROM UserMaxOutputRecords, DownloadTypes'
      'WHERE UserMaxOutputRecords.UserID = :UserID'
      'AND UserMaxOutputRecords.DownloadTypeID = :DownloadTypeID'
      
        'AND UserMaxOutputRecords.DownloadTypeID = DownloadTypes.Download' +
        'TypeID')
    SQLConnection = sqlcWebUser
    Left = 616
    Top = 232
  end
  object dspUserMaxOutputRecords: TDataSetProvider
    DataSet = qUserMaxOutputRecords
    Left = 648
    Top = 232
  end
  object cdsUserMaxOutputRecords: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspUserMaxOutputRecords'
    Left = 680
    Top = 232
    object cdsUserMaxOutputRecordsUSERID: TWideStringField
      FieldName = 'USERID'
      Required = True
      FixedChar = True
    end
    object cdsUserMaxOutputRecordsDOWNLOADTYPEID: TIntegerField
      FieldName = 'DOWNLOADTYPEID'
      Required = True
    end
    object cdsUserMaxOutputRecordsDOWNLOADTYPE: TWideStringField
      FieldName = 'DOWNLOADTYPE'
      Required = True
      FixedChar = True
      Size = 50
    end
    object cdsUserMaxOutputRecordsMAXALLOWED: TFMTBCDField
      FieldName = 'MAXALLOWED'
      Required = True
      Precision = 20
      Size = 0
    end
  end
  object dsUserMaxOutputRecords: TDataSource
    DataSet = cdsUserMaxOutputRecords
    Left = 712
    Top = 232
  end
  object qUserMaximumOutputLimits: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'UserID'
        ParamType = ptInput
        Value = 'testbme'
      end>
    SQL.Strings = (
      
        'SELECT UserMaxOutputRecords.UserID, UserMaxOutputRecords.Downloa' +
        'dTypeID,'
      '  DownloadTypes.DownloadType,UserMaxOutputRecords.MaxAllowed'
      'FROM UserMaxOutputRecords, DownloadTypes'
      'WHERE UserMaxOutputRecords.UserID = :UserID'
      
        'AND UserMaxOutputRecords.DownloadTypeID = DownloadTypes.Download' +
        'TypeID')
    SQLConnection = sqlcWebUser
    Left = 616
    Top = 288
    object qUserMaximumOutputLimitsUSERID: TWideStringField
      FieldName = 'USERID'
      Required = True
      FixedChar = True
    end
    object qUserMaximumOutputLimitsDOWNLOADTYPEID: TIntegerField
      FieldName = 'DOWNLOADTYPEID'
      Required = True
    end
    object qUserMaximumOutputLimitsDOWNLOADTYPE: TWideStringField
      FieldName = 'DOWNLOADTYPE'
      Required = True
      FixedChar = True
      Size = 50
    end
    object qUserMaximumOutputLimitsMAXALLOWED: TFloatField
      FieldName = 'MAXALLOWED'
      Required = True
    end
  end
  object dspUserMaximumOutputLimits: TDataSetProvider
    DataSet = qUserMaximumOutputLimits
    Options = [poCascadeDeletes, poCascadeUpdates, poAllowMultiRecordUpdates, poPropogateChanges, poUseQuoteChar]
    Left = 648
    Top = 288
  end
  object cdsUserMaximumOutputLimits: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspUserMaximumOutputLimits'
    Left = 680
    Top = 288
    object cdsUserMaximumOutputLimitsUSERID: TWideStringField
      FieldName = 'USERID'
      Required = True
      FixedChar = True
    end
    object cdsUserMaximumOutputLimitsDOWNLOADTYPEID: TIntegerField
      FieldName = 'DOWNLOADTYPEID'
      Required = True
    end
    object cdsUserMaximumOutputLimitsDOWNLOADTYPE: TWideStringField
      FieldName = 'DOWNLOADTYPE'
      Required = True
      FixedChar = True
      Size = 50
    end
    object cdsUserMaximumOutputLimitsMAXALLOWED: TFloatField
      FieldName = 'MAXALLOWED'
      Required = True
    end
  end
  object dsUserMaximumOutputLimits: TDataSource
    DataSet = cdsUserMaximumOutputLimits
    Left = 712
    Top = 288
  end
  object qInsertUserMaxOutputRecord: TSQLQuery
    MaxBlobSize = 1
    Params = <
      item
        DataType = ftString
        Name = 'UserID'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'DownloadTypeID'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'INSERT INTO USERMAXOUTPUTRECORDS'
      '(UserID,DownloadTypeID)'
      'Values ( :UserID, :DownloadTypeID)')
    SQLConnection = sqlcWebUser
    Left = 616
    Top = 188
  end
  object qDevInfo: TSQLQuery
    NumericMapping = True
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select * from DevInfo'
      'order by DevInfo.DevInfoOrder')
    SQLConnection = sqlcWebUser
    Left = 656
    Top = 344
  end
  object dspDevInfo: TDataSetProvider
    DataSet = qDevInfo
    UpdateMode = upWhereChanged
    Left = 688
    Top = 344
  end
  object cdsDevInfo: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspDevInfo'
    Left = 720
    Top = 344
    object cdsDevInfoDEVINFOORDER: TIntegerField
      FieldName = 'DEVINFOORDER'
      Required = True
    end
    object cdsDevInfoDATESAVED: TSQLTimeStampField
      FieldName = 'DATESAVED'
    end
    object cdsDevInfoQUERYCHECK: TWideStringField
      FieldName = 'QUERYCHECK'
      FixedChar = True
      Size = 4096
    end
  end
  object dsDevInfo: TDataSource
    DataSet = cdsDevInfo
    Left = 752
    Top = 344
  end
  object qMaxDevInfo: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select max(DevInfoOrder) as MAXIMUM from devinfo')
    SQLConnection = sqlcWebUser
    Left = 656
    Top = 400
  end
  object dspMaxDevInfo: TDataSetProvider
    DataSet = qMaxDevInfo
    Options = [poFetchBlobsOnDemand, poIncFieldProps, poCascadeDeletes, poCascadeUpdates, poAllowMultiRecordUpdates, poAutoRefresh, poPropogateChanges, poUseQuoteChar]
    UpdateMode = upWhereChanged
    Left = 688
    Top = 400
  end
  object cdsMaxDevInfo: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspMaxDevInfo'
    Left = 720
    Top = 400
    object cdsMaxDevInfoMAXIMUM: TIntegerField
      FieldName = 'MAXIMUM'
    end
  end
  object dsMaxDevInfo: TDataSource
    DataSet = cdsMaxDevInfo
    Left = 752
    Top = 400
  end
  object SQLMonitor1: TSQLMonitor
    SQLConnection = sqlcWebUser
    Left = 32
    Top = 64
  end
  object qTest: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'insert into DevInfo'
      '(DevInfoOrder,QueryCheck)'
      'Values(10,'#39'my test insertion'#39')')
    SQLConnection = sqlcWebUser
    Left = 464
    Top = 432
  end
end
