object ISFRenew: TISFRenew
  Left = 0
  Top = 0
  Width = 817
  Height = 593
  RenderInvisibleControls = False
  AllowPageAccess = True
  ConnectionMode = cmAny
  Title = 'EggSoft Login'
  OnCreate = IWAppFormCreate
  Background.Filename = 
    'W:\source\IntraWeb6.0\Demos\Win32\Delphi\DieFlyDie\Files\grid_ba' +
    'ckground.gif'
  Background.Fixed = False
  HandleTabs = False
  LeftToRight = True
  LockUntilLoaded = False
  LockOnSubmit = True
  StyleSheet.Filename = 'styles.css'
  ShowHint = True
  XPTheme = True
  DesignLeft = 8
  DesignTop = 8
  object rectMain: TIWRectangle
    Left = 83
    Top = 0
    Width = 734
    Height = 593
    Align = alClient
    Font.Color = clWebBLACK
    Font.Size = 10
    Font.Style = []
    BorderOptions.Width = 0
    FriendlyName = 'rectMain'
    Color = clWebWHITE
    Alignment = taLeftJustify
    VAlign = vaMiddle
  end
  object IWLabel2: TIWLabel
    Left = 191
    Top = 116
    Width = 77
    Height = 14
    ZIndex = 2
    Font.Color = clNone
    Font.FontName = 'Verdana'
    Font.Size = 9
    Font.Style = [fsBold]
    HasTabOrder = False
    FriendlyName = 'IWLabel2'
    Caption = 'Software :'
  end
  object rectLeft: TIWRectangle
    Left = 0
    Top = 0
    Width = 83
    Height = 593
    Align = alLeft
    ZIndex = 1
    Font.Color = clWebBLACK
    Font.Size = 10
    Font.Style = []
    BorderOptions.Width = 0
    FriendlyName = 'rectLeft'
    Color = clWebLAVENDER
    Alignment = taLeftJustify
    VAlign = vaMiddle
  end
  object rectTitle: TIWRectangle
    Left = 116
    Top = 36
    Width = 633
    Height = 36
    ZIndex = 2
    Font.Color = clWebBLACK
    Font.Size = 10
    Font.Style = []
    BorderOptions.Width = 0
    FriendlyName = 'rectTitle'
    Color = clWebKHAKI
    Alignment = taLeftJustify
    VAlign = vaMiddle
  end
  object lblSignIn: TIWLabel
    Left = 184
    Top = 38
    Width = 291
    Height = 29
    ZIndex = 3
    Font.Color = clWebGRAY
    Font.FontName = 'Verdana'
    Font.Size = 18
    Font.Style = [fsBold]
    HasTabOrder = False
    FriendlyName = 'lblSignIn'
    Caption = 'Renew subscription'
  end
  object IWLabel1: TIWLabel
    Left = 191
    Top = 143
    Width = 66
    Height = 14
    ZIndex = 2
    Font.Color = clNone
    Font.FontName = 'Verdana'
    Font.Size = 9
    Font.Style = [fsBold]
    HasTabOrder = False
    FriendlyName = 'IWLabel2'
    Caption = 'User ID :'
  end
  object IWLabel4: TIWLabel
    Left = 191
    Top = 226
    Width = 89
    Height = 14
    ZIndex = 2
    Font.Color = clNone
    Font.FontName = 'Verdana'
    Font.Size = 9
    Font.Style = [fsBold]
    HasTabOrder = False
    FriendlyName = 'IWLabel2'
    Caption = 'Account ID :'
  end
  object IWLabel3: TIWLabel
    Left = 191
    Top = 254
    Width = 111
    Height = 14
    ZIndex = 2
    Font.Color = clNone
    Font.FontName = 'Verdana'
    Font.Size = 9
    Font.Style = [fsBold]
    HasTabOrder = False
    FriendlyName = 'IWLabel2'
    Caption = 'Account name :'
  end
  object IWLabel5: TIWLabel
    Left = 191
    Top = 281
    Width = 100
    Height = 14
    ZIndex = 2
    Font.Color = clNone
    Font.FontName = 'Verdana'
    Font.Size = 9
    Font.Style = [fsBold]
    HasTabOrder = False
    FriendlyName = 'IWLabel2'
    Caption = 'Date started :'
  end
  object IWLabel6: TIWLabel
    Left = 191
    Top = 309
    Width = 134
    Height = 14
    ZIndex = 2
    Font.Color = clNone
    Font.FontName = 'Verdana'
    Font.Size = 9
    Font.Style = [fsBold]
    HasTabOrder = False
    FriendlyName = 'IWLabel2'
    Caption = 'Membership type :'
  end
  object IWLabel7: TIWLabel
    Left = 191
    Top = 336
    Width = 151
    Height = 14
    ZIndex = 2
    Font.Color = clNone
    Font.FontName = 'Verdana'
    Font.Size = 9
    Font.Style = [fsBold]
    HasTabOrder = False
    FriendlyName = 'IWLabel2'
    Caption = 'Annual subscription :'
  end
  object IWLabel8: TIWLabel
    Left = 191
    Top = 364
    Width = 82
    Height = 14
    ZIndex = 2
    Font.Color = clNone
    Font.FontName = 'Verdana'
    Font.Size = 9
    Font.Style = [fsBold]
    HasTabOrder = False
    FriendlyName = 'IWLabel2'
    Caption = 'Valid until :'
  end
  object iwDBSoftwareID: TIWDBLabel
    Left = 360
    Top = 116
    Width = 114
    Height = 14
    Font.Color = clNone
    Font.FontName = 'Verdana'
    Font.Size = 9
    Font.Style = []
    HasTabOrder = False
    DataField = 'SOFTWARENAME'
    FriendlyName = 'iwDBSoftwareID'
  end
  object iwDBUserID: TIWDBLabel
    Left = 360
    Top = 143
    Width = 90
    Height = 14
    Font.Color = clNone
    Font.FontName = 'Verdana'
    Font.Size = 9
    Font.Style = []
    HasTabOrder = False
    DataField = 'USERNAMEID'
    FriendlyName = 'IWDBLabel1'
  end
  object iwDBAccountID: TIWDBLabel
    Left = 360
    Top = 226
    Width = 82
    Height = 14
    Font.Color = clNone
    Font.FontName = 'Verdana'
    Font.Size = 9
    Font.Style = []
    HasTabOrder = False
    DataField = 'ACCOUNTID'
    FriendlyName = 'IWDBLabel1'
  end
  object iwDBAccountName: TIWDBLabel
    Left = 360
    Top = 254
    Width = 105
    Height = 14
    Font.Color = clNone
    Font.FontName = 'Verdana'
    Font.Size = 9
    Font.Style = []
    HasTabOrder = False
    DataField = 'ACCOUNTNAME'
    FriendlyName = 'IWDBLabel1'
  end
  object iwDBDateStarted: TIWDBLabel
    Left = 360
    Top = 281
    Width = 95
    Height = 14
    Font.Color = clNone
    Font.FontName = 'Verdana'
    Font.Size = 9
    Font.Style = []
    HasTabOrder = False
    DataField = 'DATESTARTED'
    FriendlyName = 'IWDBLabel1'
  end
  object iwDBValidUntil: TIWDBLabel
    Left = 360
    Top = 364
    Width = 81
    Height = 14
    Font.Color = clNone
    Font.FontName = 'Verdana'
    Font.Size = 9
    Font.Style = []
    HasTabOrder = False
    DataField = 'VALIDUNTIL'
    FriendlyName = 'IWDBLabel1'
  end
  object iwlSubscription: TIWLabel
    Left = 360
    Top = 336
    Width = 28
    Height = 14
    Font.Color = clNone
    Font.FontName = 'Verdana'
    Font.Size = 9
    Font.Style = []
    HasTabOrder = False
    FriendlyName = 'iwlSubscription'
    Caption = 'USD'
  end
  object iwcbMembershipType: TIWComboBox
    Left = 360
    Top = 306
    Width = 349
    Height = 21
    RenderSize = False
    StyleRenderOptions.RenderSize = False
    Font.Color = clNone
    Font.FontName = 'Verdana'
    Font.Size = 9
    Font.Style = []
    OnChange = iwcbMembershipTypeChange
    UseSize = False
    NonEditableAsLabel = True
    TabOrder = 0
    ItemIndex = -1
    FriendlyName = 'iwcbMembershipType'
    NoSelectionText = '-- No Selection --'
  end
  object IWMemo2: TIWMemo
    Left = 231
    Top = 392
    Width = 461
    Height = 41
    ShowHint = False
    BGColor = clNone
    Editable = False
    Font.Color = clNone
    Font.FontName = 'Verdana'
    Font.Size = 9
    Font.Style = []
    InvisibleBorder = True
    HorizScrollBar = False
    VertScrollBar = False
    Required = False
    TabOrder = 1
    SubmitOnAsyncEvent = True
    FriendlyName = 'IWMemo1'
    Lines.Strings = (
      
        'Please click on the PayPal button (below) to renew your subscrip' +
        'tion for another year.')
  end
  object IWLabel9: TIWLabel
    Left = 232
    Top = 484
    Width = 458
    Height = 13
    Alignment = taCenter
    Font.Color = clNone
    Font.FontName = 'Verdana'
    Font.Size = 8
    Font.Style = []
    HasTabOrder = False
    FriendlyName = 'IWLabel9'
    Caption = 
      'If you believe this to be incorrect, please contact the database' +
      ' administrator at:'
  end
  object IWLabel10: TIWLabel
    Left = 308
    Top = 180
    Width = 306
    Height = 14
    Alignment = taCenter
    Font.Color = clNone
    Font.FontName = 'Verdana'
    Font.Size = 9
    Font.Style = [fsBold]
    HasTabOrder = False
    FriendlyName = 'IWLabel10'
    Caption = 'Your subscription to this database has expired'
  end
  object IWDBLabel1: TIWDBLabel
    Left = 394
    Top = 500
    Width = 134
    Height = 13
    Alignment = taCenter
    Font.Color = clNone
    Font.FontName = 'Verdana'
    Font.Size = 8
    Font.Style = []
    HasTabOrder = False
    DataField = 'EMAILADMINISTRATOR'
    FriendlyName = 'IWDBLabel1'
  end
  object IWLabel11: TIWLabel
    Left = 227
    Top = 528
    Width = 468
    Height = 13
    Alignment = taCenter
    Font.Color = clNone
    Font.FontName = 'Verdana'
    Font.Size = 8
    Font.Style = []
    HasTabOrder = False
    FriendlyName = 'IWLabel9'
    Caption = 
      'Remember to specify your UserID and the software that you are tr' +
      'ying to access.'
  end
  object IWLabel12: TIWLabel
    Left = 241
    Top = 196
    Width = 441
    Height = 13
    Alignment = taCenter
    Font.Color = clNone
    Font.FontName = 'Verdana'
    Font.Size = 8
    Font.Style = []
    HasTabOrder = False
    FriendlyName = 'IWLabel12'
    Caption = 
      'In order to continue using this database you need to renew your ' +
      'subscription'
  end
end
