object ISFRegister: TISFRegister
  Left = 0
  Top = 0
  Width = 856
  Height = 683
  RenderInvisibleControls = False
  AllowPageAccess = True
  ConnectionMode = cmAny
  Title = 'EggSoft Register'
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
  OnDefaultAction = lnkSubmitClick
  DesignLeft = 2
  DesignTop = 2
  object rectMain: TIWRectangle
    AlignWithMargins = False
    Left = 83
    Top = 0
    Width = 773
    Height = 683
    Align = alClient
    Font.PxSize = 13
    Font.Color = clWebBLACK
    BorderOptions.Width = 0
    FriendlyName = 'rectMain'
    Color = clWebWHITE
    Alignment = taLeftJustify
    VAlign = vaMiddle
    ExplicitWidth = 678
    ExplicitHeight = 487
  end
  object rectLeft: TIWRectangle
    AlignWithMargins = False
    Left = 0
    Top = 0
    Width = 83
    Height = 683
    Align = alLeft
    ZIndex = 1
    Font.PxSize = 13
    Font.Color = clWebBLACK
    BorderOptions.Width = 0
    FriendlyName = 'rectLeft'
    Color = clWebLAVENDER
    Alignment = taLeftJustify
    VAlign = vaMiddle
    ExplicitHeight = 487
  end
  object IWLabel5: TIWLabel
    AlignWithMargins = False
    Left = 172
    Top = 166
    Width = 71
    Height = 14
    ZIndex = 2
    Font.FontName = 'Verdana'
    Font.Size = 9
    Font.Style = [fsBold]
    Font.PxSize = 12
    HasTabOrder = False
    FriendlyName = 'IWLabel5'
    Caption = 'Password'
  end
  object IWLabel6: TIWLabel
    AlignWithMargins = False
    Left = 172
    Top = 236
    Width = 132
    Height = 14
    ZIndex = 2
    Font.FontName = 'Verdana'
    Font.Size = 9
    Font.Style = [fsBold]
    Font.PxSize = 12
    HasTabOrder = False
    FriendlyName = 'IWLabel6'
    Caption = 'Confirm password'
  end
  object IWLabel7: TIWLabel
    AlignWithMargins = False
    Left = 172
    Top = 96
    Width = 56
    Height = 14
    ZIndex = 2
    Font.FontName = 'Verdana'
    Font.Size = 9
    Font.Style = [fsBold]
    Font.PxSize = 12
    HasTabOrder = False
    FriendlyName = 'IWLabel7'
    Caption = 'User ID'
  end
  object edRegisterDisplayName: TIWEdit
    AlignWithMargins = False
    Left = 172
    Top = 324
    Width = 180
    Height = 21
    ZIndex = 2
    StyleRenderOptions.RenderBorder = False
    NonEditableAsLabel = True
    Font.FontName = 'Verdana'
    Font.Size = 9
    Font.PxSize = 12
    FriendlyName = 'IWEdit3'
    Required = True
    SubmitOnAsyncEvent = True
    TabOrder = 3
  end
  object edRegisterPassword: TIWEdit
    AlignWithMargins = False
    Left = 172
    Top = 182
    Width = 180
    Height = 21
    ZIndex = 2
    StyleRenderOptions.RenderBorder = False
    NonEditableAsLabel = True
    Font.FontName = 'Verdana'
    Font.Size = 9
    Font.PxSize = 12
    FriendlyName = 'IWEdit4'
    Required = True
    SubmitOnAsyncEvent = True
    TabOrder = 1
    PasswordPrompt = True
    DataType = stPassword
  end
  object edRegisterRepeatPassword: TIWEdit
    AlignWithMargins = False
    Left = 172
    Top = 252
    Width = 180
    Height = 21
    ZIndex = 2
    StyleRenderOptions.RenderBorder = False
    NonEditableAsLabel = True
    Font.FontName = 'Verdana'
    Font.Size = 9
    Font.PxSize = 12
    FriendlyName = 'IWEdit5'
    Required = True
    SubmitOnAsyncEvent = True
    TabOrder = 2
    PasswordPrompt = True
    DataType = stPassword
  end
  object edRegisterUserID: TIWEdit
    AlignWithMargins = False
    Left = 172
    Top = 112
    Width = 180
    Height = 21
    ZIndex = 2
    StyleRenderOptions.RenderBorder = False
    NonEditableAsLabel = True
    Font.FontName = 'Verdana'
    Font.Size = 9
    Font.PxSize = 12
    Font.Color = clWebBLACK
    FriendlyName = 'IWEdit6'
    Required = True
    SubmitOnAsyncEvent = True
  end
  object IWLabel10: TIWLabel
    AlignWithMargins = False
    Left = 172
    Top = 308
    Width = 97
    Height = 14
    ZIndex = 2
    Font.FontName = 'Verdana'
    Font.Size = 9
    Font.Style = [fsBold]
    Font.PxSize = 12
    HasTabOrder = False
    FriendlyName = 'IWLabel10'
    Caption = 'Display name'
  end
  object lblUserIDError: TIWLabel
    AlignWithMargins = False
    Left = 374
    Top = 114
    Width = 106
    Height = 14
    ZIndex = 2
    Font.FontName = 'Verdana'
    Font.Size = 9
    Font.Style = [fsBold, fsItalic]
    Font.PxSize = 12
    Font.Color = clWebRED
    HasTabOrder = False
    FriendlyName = 'lblUserIDError'
    Caption = 'lblUserIDError'
  end
  object rectTitle: TIWRectangle
    AlignWithMargins = False
    Left = 96
    Top = 42
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
  object lnkSubmit: TIWLink
    AlignWithMargins = False
    Left = 172
    Top = 624
    Width = 65
    Height = 17
    ZIndex = 2
    RenderSize = False
    StyleRenderOptions.RenderSize = False
    Alignment = taLeftJustify
    Color = clNone
    Font.FontName = 'Verdana'
    Font.Style = [fsUnderline]
    Font.PxSize = 13
    Font.Color = clWebBLUE
    HasTabOrder = True
    DoSubmitValidation = False
    FriendlyName = 'lnkSubmit'
    OnClick = lnkSubmitClick
    TabOrder = 7
    RawText = False
    Caption = 'Submit'
  end
  object lblRegisterNew: TIWLabel
    AlignWithMargins = False
    Left = 164
    Top = 44
    Width = 301
    Height = 29
    ZIndex = 3
    Font.FontName = 'Verdana'
    Font.Size = 18
    Font.Style = [fsBold]
    Font.PxSize = 24
    Font.Color = clWebGRAY
    HasTabOrder = False
    FriendlyName = 'lblRegisterNew'
    Caption = 'Register a New User'
  end
  object lblEMailError: TIWLabel
    AlignWithMargins = False
    Left = 464
    Top = 399
    Width = 93
    Height = 14
    ZIndex = 2
    Font.FontName = 'Verdana'
    Font.Size = 9
    Font.Style = [fsBold, fsItalic]
    Font.PxSize = 12
    Font.Color = clWebRED
    HasTabOrder = False
    FriendlyName = 'lblEMailError'
    Caption = 'lblEMailError'
  end
  object lblPassError: TIWLabel
    AlignWithMargins = False
    Left = 374
    Top = 186
    Width = 89
    Height = 14
    ZIndex = 2
    Font.FontName = 'Verdana'
    Font.Size = 9
    Font.Style = [fsBold, fsItalic]
    Font.PxSize = 12
    Font.Color = clWebRED
    HasTabOrder = False
    FriendlyName = 'lblPassError'
    Caption = 'lblPassError'
  end
  object lblConfirmPassError: TIWLabel
    AlignWithMargins = False
    Left = 374
    Top = 254
    Width = 149
    Height = 14
    ZIndex = 2
    Font.FontName = 'Verdana'
    Font.Size = 9
    Font.Style = [fsBold, fsItalic]
    Font.PxSize = 12
    Font.Color = clWebRED
    HasTabOrder = False
    FriendlyName = 'lblConfirmPassError'
    Caption = 'lblConfirmPassError'
  end
  object lblDisplayNameError: TIWLabel
    AlignWithMargins = False
    Left = 374
    Top = 326
    Width = 154
    Height = 14
    ZIndex = 2
    Font.FontName = 'Verdana'
    Font.Size = 9
    Font.Style = [fsBold, fsItalic]
    Font.PxSize = 12
    Font.Color = clWebRED
    HasTabOrder = False
    FriendlyName = 'lblDisplayNameError'
    Caption = 'lblDisplayNameError'
  end
  object lblLastnameError: TIWLabel
    AlignWithMargins = False
    Left = 374
    Top = 470
    Width = 128
    Height = 14
    ZIndex = 2
    Font.FontName = 'Verdana'
    Font.Size = 9
    Font.Style = [fsBold, fsItalic]
    Font.PxSize = 12
    Font.Color = clWebRED
    HasTabOrder = False
    FriendlyName = 'lblLastnameError'
    Caption = 'lblLastnameError'
  end
  object lblfirstnameError: TIWLabel
    AlignWithMargins = False
    Left = 374
    Top = 542
    Width = 127
    Height = 14
    ZIndex = 2
    Font.FontName = 'Verdana'
    Font.Size = 9
    Font.Style = [fsBold, fsItalic]
    Font.PxSize = 12
    Font.Color = clWebRED
    HasTabOrder = False
    FriendlyName = 'lblfirstnameError'
    Caption = 'lblfirstnameError'
  end
  object IWLabel8: TIWLabel
    AlignWithMargins = False
    Left = 172
    Top = 380
    Width = 107
    Height = 14
    ZIndex = 2
    Font.FontName = 'Verdana'
    Font.Size = 9
    Font.Style = [fsBold]
    Font.PxSize = 12
    HasTabOrder = False
    FriendlyName = 'IWLabel10'
    Caption = 'E-mail address'
  end
  object edRegisterEMail: TIWEdit
    AlignWithMargins = False
    Left = 172
    Top = 396
    Width = 277
    Height = 21
    ZIndex = 2
    StyleRenderOptions.RenderBorder = False
    NonEditableAsLabel = True
    Font.FontName = 'Verdana'
    Font.Size = 9
    Font.PxSize = 12
    FriendlyName = 'edRegisterEMail'
    Required = True
    SubmitOnAsyncEvent = True
    TabOrder = 4
  end
  object IWLabel9: TIWLabel
    AlignWithMargins = False
    Left = 172
    Top = 452
    Width = 70
    Height = 14
    ZIndex = 2
    Font.FontName = 'Verdana'
    Font.Size = 9
    Font.Style = [fsBold]
    Font.PxSize = 12
    HasTabOrder = False
    FriendlyName = 'IWLabel10'
    Caption = 'Lastname'
  end
  object edRegisterLastname: TIWEdit
    AlignWithMargins = False
    Left = 172
    Top = 468
    Width = 180
    Height = 21
    ZIndex = 2
    StyleRenderOptions.RenderBorder = False
    NonEditableAsLabel = True
    Font.FontName = 'Verdana'
    Font.Size = 9
    Font.PxSize = 12
    FriendlyName = 'edRegisterLastname'
    Required = True
    SubmitOnAsyncEvent = True
    TabOrder = 5
  end
  object IWLabel11: TIWLabel
    AlignWithMargins = False
    Left = 172
    Top = 524
    Width = 72
    Height = 14
    ZIndex = 2
    Font.FontName = 'Verdana'
    Font.Size = 9
    Font.Style = [fsBold]
    Font.PxSize = 12
    HasTabOrder = False
    FriendlyName = 'IWLabel10'
    Caption = 'Firstname'
  end
  object edRegisterFirstname: TIWEdit
    AlignWithMargins = False
    Left = 172
    Top = 540
    Width = 180
    Height = 21
    ZIndex = 2
    StyleRenderOptions.RenderBorder = False
    NonEditableAsLabel = True
    Font.FontName = 'Verdana'
    Font.Size = 9
    Font.PxSize = 12
    FriendlyName = 'edRegisterFirstname'
    Required = True
    SubmitOnAsyncEvent = True
    TabOrder = 6
  end
  object IWMemo1: TIWMemo
    AlignWithMargins = False
    Left = 560
    Top = 112
    Width = 185
    Height = 121
    StyleRenderOptions.RenderBorder = False
    BGColor = clNone
    Editable = False
    Font.FontName = 'Verdana'
    Font.Size = 8
    Font.PxSize = 10
    Font.Color = clWebINDIGO
    InvisibleBorder = True
    HorizScrollBar = False
    VertScrollBar = False
    Required = False
    TabOrder = 8
    SubmitOnAsyncEvent = True
    FriendlyName = 'IWMemo1'
    Lines.Strings = (
      'Use only the letters A-Z, a-z and numerals 0-9. '
      ''
      'Do NOT use special characters, nor blank spaces')
  end
  object IWLabel1: TIWLabel
    AlignWithMargins = False
    Left = 172
    Top = 136
    Width = 213
    Height = 13
    Font.FontName = 'Verdana'
    Font.Size = 8
    Font.Style = [fsItalic]
    Font.PxSize = 10
    HasTabOrder = False
    FriendlyName = 'IWLabel1'
    Caption = 'Maximum of 20 ASCII characters)'
  end
  object IWLabel2: TIWLabel
    AlignWithMargins = False
    Left = 172
    Top = 204
    Width = 205
    Height = 13
    Font.FontName = 'Verdana'
    Font.Size = 8
    Font.Style = [fsItalic]
    Font.PxSize = 10
    HasTabOrder = False
    FriendlyName = 'IWLabel1'
    Caption = 'Maximum of 8 ASCII characters)'
  end
  object IWLabel3: TIWLabel
    AlignWithMargins = False
    Left = 172
    Top = 346
    Width = 213
    Height = 13
    Font.FontName = 'Verdana'
    Font.Size = 8
    Font.Style = [fsItalic]
    Font.PxSize = 10
    HasTabOrder = False
    FriendlyName = 'IWLabel1'
    Caption = 'Maximum of 20 ASCII characters)'
  end
  object IWLabel4: TIWLabel
    AlignWithMargins = False
    Left = 172
    Top = 418
    Width = 221
    Height = 13
    Font.FontName = 'Verdana'
    Font.Size = 8
    Font.Style = [fsItalic]
    Font.PxSize = 10
    HasTabOrder = False
    FriendlyName = 'IWLabel1'
    Caption = 'Maximum of 200 ASCII characters)'
  end
  object IWLabel12: TIWLabel
    AlignWithMargins = False
    Left = 172
    Top = 490
    Width = 213
    Height = 13
    Font.FontName = 'Verdana'
    Font.Size = 8
    Font.Style = [fsItalic]
    Font.PxSize = 10
    HasTabOrder = False
    FriendlyName = 'IWLabel1'
    Caption = 'Maximum of 20 ASCII characters)'
  end
  object IWLabel13: TIWLabel
    AlignWithMargins = False
    Left = 172
    Top = 562
    Width = 213
    Height = 13
    Font.FontName = 'Verdana'
    Font.Size = 8
    Font.Style = [fsItalic]
    Font.PxSize = 10
    HasTabOrder = False
    FriendlyName = 'IWLabel1'
    Caption = 'Maximum of 20 ASCII characters)'
  end
end
