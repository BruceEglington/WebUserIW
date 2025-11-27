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
  DesignLeft = 2
  DesignTop = 2
  object rectMain: TIWRectangle
    AlignWithMargins = False
    Left = 83
    Top = 0
    Width = 734
    Height = 593
    Align = alClient
    Font.PxSize = 13
    Font.Color = clWebBLACK
    BorderOptions.Width = 0
    FriendlyName = 'rectMain'
    Color = clWebWHITE
    Alignment = taLeftJustify
    VAlign = vaMiddle
  end
  object IWLabel2: TIWLabel
    AlignWithMargins = False
    Left = 191
    Top = 116
    Width = 77
    Height = 14
    ZIndex = 2
    Font.FontName = 'Verdana'
    Font.Size = 9
    Font.Style = [fsBold]
    Font.PxSize = 12
    HasTabOrder = False
    FriendlyName = 'IWLabel2'
    Caption = 'Software :'
  end
  object rectLeft: TIWRectangle
    AlignWithMargins = False
    Left = 0
    Top = 0
    Width = 83
    Height = 593
    Align = alLeft
    ZIndex = 1
    Font.PxSize = 13
    Font.Color = clWebBLACK
    BorderOptions.Width = 0
    FriendlyName = 'rectLeft'
    Color = clWebLAVENDER
    Alignment = taLeftJustify
    VAlign = vaMiddle
  end
  object rectTitle: TIWRectangle
    AlignWithMargins = False
    Left = 116
    Top = 36
    Width = 633
    Height = 36
    ZIndex = 2
    Font.PxSize = 13
    Font.Color = clWebBLACK
    BorderOptions.Width = 0
    FriendlyName = 'rectTitle'
    Color = clWebKHAKI
    Alignment = taLeftJustify
    VAlign = vaMiddle
  end
  object lblSignIn: TIWLabel
    AlignWithMargins = False
    Left = 184
    Top = 38
    Width = 291
    Height = 29
    ZIndex = 3
    Font.FontName = 'Verdana'
    Font.Size = 18
    Font.Style = [fsBold]
    Font.PxSize = 24
    Font.Color = clWebGRAY
    HasTabOrder = False
    FriendlyName = 'lblSignIn'
    Caption = 'Renew subscription'
  end
  object IWLabel1: TIWLabel
    AlignWithMargins = False
    Left = 191
    Top = 143
    Width = 66
    Height = 14
    ZIndex = 2
    Font.FontName = 'Verdana'
    Font.Size = 9
    Font.Style = [fsBold]
    Font.PxSize = 12
    HasTabOrder = False
    FriendlyName = 'IWLabel2'
    Caption = 'User ID :'
  end
  object IWLabel4: TIWLabel
    AlignWithMargins = False
    Left = 191
    Top = 226
    Width = 89
    Height = 14
    ZIndex = 2
    Font.FontName = 'Verdana'
    Font.Size = 9
    Font.Style = [fsBold]
    Font.PxSize = 12
    HasTabOrder = False
    FriendlyName = 'IWLabel2'
    Caption = 'Account ID :'
  end
  object IWLabel3: TIWLabel
    AlignWithMargins = False
    Left = 191
    Top = 254
    Width = 111
    Height = 14
    ZIndex = 2
    Font.FontName = 'Verdana'
    Font.Size = 9
    Font.Style = [fsBold]
    Font.PxSize = 12
    HasTabOrder = False
    FriendlyName = 'IWLabel2'
    Caption = 'Account name :'
  end
  object IWLabel5: TIWLabel
    AlignWithMargins = False
    Left = 191
    Top = 281
    Width = 100
    Height = 14
    ZIndex = 2
    Font.FontName = 'Verdana'
    Font.Size = 9
    Font.Style = [fsBold]
    Font.PxSize = 12
    HasTabOrder = False
    FriendlyName = 'IWLabel2'
    Caption = 'Date started :'
  end
  object IWLabel6: TIWLabel
    AlignWithMargins = False
    Left = 191
    Top = 309
    Width = 134
    Height = 14
    ZIndex = 2
    Font.FontName = 'Verdana'
    Font.Size = 9
    Font.Style = [fsBold]
    Font.PxSize = 12
    HasTabOrder = False
    FriendlyName = 'IWLabel2'
    Caption = 'Membership type :'
  end
  object IWLabel7: TIWLabel
    AlignWithMargins = False
    Left = 191
    Top = 336
    Width = 151
    Height = 14
    ZIndex = 2
    Font.FontName = 'Verdana'
    Font.Size = 9
    Font.Style = [fsBold]
    Font.PxSize = 12
    HasTabOrder = False
    FriendlyName = 'IWLabel2'
    Caption = 'Annual subscription :'
  end
  object IWLabel8: TIWLabel
    AlignWithMargins = False
    Left = 191
    Top = 364
    Width = 82
    Height = 14
    ZIndex = 2
    Font.FontName = 'Verdana'
    Font.Size = 9
    Font.Style = [fsBold]
    Font.PxSize = 12
    HasTabOrder = False
    FriendlyName = 'IWLabel2'
    Caption = 'Valid until :'
  end
  object iwDBSoftwareID: TIWDBLabel
    AlignWithMargins = False
    Left = 360
    Top = 116
    Width = 114
    Height = 14
    Font.FontName = 'Verdana'
    Font.Size = 9
    Font.PxSize = 12
    HasTabOrder = False
    DataField = 'SOFTWARENAME'
    FriendlyName = 'iwDBSoftwareID'
  end
  object iwDBUserID: TIWDBLabel
    AlignWithMargins = False
    Left = 360
    Top = 143
    Width = 90
    Height = 14
    Font.FontName = 'Verdana'
    Font.Size = 9
    Font.PxSize = 12
    HasTabOrder = False
    DataField = 'USERNAMEID'
    FriendlyName = 'IWDBLabel1'
  end
  object iwDBAccountID: TIWDBLabel
    AlignWithMargins = False
    Left = 360
    Top = 226
    Width = 82
    Height = 14
    Font.FontName = 'Verdana'
    Font.Size = 9
    Font.PxSize = 12
    HasTabOrder = False
    DataField = 'ACCOUNTID'
    FriendlyName = 'IWDBLabel1'
  end
  object iwDBAccountName: TIWDBLabel
    AlignWithMargins = False
    Left = 360
    Top = 254
    Width = 105
    Height = 14
    Font.FontName = 'Verdana'
    Font.Size = 9
    Font.PxSize = 12
    HasTabOrder = False
    DataField = 'ACCOUNTNAME'
    FriendlyName = 'IWDBLabel1'
  end
  object iwDBDateStarted: TIWDBLabel
    AlignWithMargins = False
    Left = 360
    Top = 281
    Width = 95
    Height = 14
    Font.FontName = 'Verdana'
    Font.Size = 9
    Font.PxSize = 12
    HasTabOrder = False
    DataField = 'DATESTARTED'
    FriendlyName = 'IWDBLabel1'
  end
  object iwDBValidUntil: TIWDBLabel
    AlignWithMargins = False
    Left = 360
    Top = 364
    Width = 81
    Height = 14
    Font.FontName = 'Verdana'
    Font.Size = 9
    Font.PxSize = 12
    HasTabOrder = False
    DataField = 'VALIDUNTIL'
    FriendlyName = 'IWDBLabel1'
  end
  object iwlSubscription: TIWLabel
    AlignWithMargins = False
    Left = 360
    Top = 336
    Width = 28
    Height = 14
    Font.FontName = 'Verdana'
    Font.Size = 9
    Font.PxSize = 12
    HasTabOrder = False
    FriendlyName = 'iwlSubscription'
    Caption = 'USD'
  end
  object iwcbMembershipType: TIWComboBox
    AlignWithMargins = False
    Left = 360
    Top = 306
    Width = 349
    Height = 21
    RenderSize = False
    StyleRenderOptions.RenderSize = False
    StyleRenderOptions.RenderBorder = False
    Font.FontName = 'Verdana'
    Font.Size = 9
    Font.PxSize = 12
    OnChange = iwcbMembershipTypeChange
    UseSize = False
    NonEditableAsLabel = True
    ItemIndex = -1
    FriendlyName = 'iwcbMembershipType'
  end
  object IWMemo2: TIWMemo
    AlignWithMargins = False
    Left = 231
    Top = 392
    Width = 461
    Height = 41
    ShowHint = False
    StyleRenderOptions.RenderBorder = False
    BGColor = clNone
    Editable = False
    Font.FontName = 'Verdana'
    Font.Size = 9
    Font.PxSize = 12
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
    AlignWithMargins = False
    Left = 232
    Top = 484
    Width = 458
    Height = 13
    Alignment = taCenter
    Font.FontName = 'Verdana'
    Font.Size = 8
    Font.PxSize = 10
    HasTabOrder = False
    FriendlyName = 'IWLabel9'
    Caption = 
      'If you believe this to be incorrect, please contact the database' +
      ' administrator at:'
  end
  object IWLabel10: TIWLabel
    AlignWithMargins = False
    Left = 308
    Top = 180
    Width = 306
    Height = 14
    Alignment = taCenter
    Font.FontName = 'Verdana'
    Font.Size = 9
    Font.Style = [fsBold]
    Font.PxSize = 12
    HasTabOrder = False
    FriendlyName = 'IWLabel10'
    Caption = 'Your subscription to this database has expired'
  end
  object IWDBLabel1: TIWDBLabel
    AlignWithMargins = False
    Left = 394
    Top = 500
    Width = 134
    Height = 13
    Alignment = taCenter
    Font.FontName = 'Verdana'
    Font.Size = 8
    Font.PxSize = 10
    HasTabOrder = False
    DataField = 'EMAILADMINISTRATOR'
    FriendlyName = 'IWDBLabel1'
  end
  object IWLabel11: TIWLabel
    AlignWithMargins = False
    Left = 227
    Top = 528
    Width = 468
    Height = 13
    Alignment = taCenter
    Font.FontName = 'Verdana'
    Font.Size = 8
    Font.PxSize = 10
    HasTabOrder = False
    FriendlyName = 'IWLabel9'
    Caption = 
      'Remember to specify your UserID and the software that you are tr' +
      'ying to access.'
  end
  object IWLabel12: TIWLabel
    AlignWithMargins = False
    Left = 241
    Top = 196
    Width = 441
    Height = 13
    Alignment = taCenter
    Font.FontName = 'Verdana'
    Font.Size = 8
    Font.PxSize = 10
    HasTabOrder = False
    FriendlyName = 'IWLabel12'
    Caption = 
      'In order to continue using this database you need to renew your ' +
      'subscription'
  end
end
