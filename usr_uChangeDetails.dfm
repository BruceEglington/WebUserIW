object ISFChangeUserDetails: TISFChangeUserDetails
  Left = 0
  Top = 0
  Width = 761
  Height = 487
  RenderInvisibleControls = False
  AllowPageAccess = True
  ConnectionMode = cmAny
  Title = 'EggSoft Change'
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
    Left = 83
    Top = 0
    Width = 678
    Height = 487
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
  object rectLeft: TIWRectangle
    Left = 0
    Top = 0
    Width = 83
    Height = 487
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
  object IWLabel5: TIWLabel
    Left = 172
    Top = 142
    Width = 108
    Height = 14
    ZIndex = 2
    Font.Color = clNone
    Font.FontName = 'Verdana'
    Font.Size = 9
    Font.Style = [fsBold]
    HasTabOrder = False
    FriendlyName = 'IWLabel5'
    Caption = 'New Password'
  end
  object IWLabel6: TIWLabel
    Left = 172
    Top = 188
    Width = 132
    Height = 14
    ZIndex = 2
    Font.Color = clNone
    Font.FontName = 'Verdana'
    Font.Size = 9
    Font.Style = [fsBold]
    HasTabOrder = False
    FriendlyName = 'IWLabel6'
    Caption = 'Confirm password'
  end
  object edRegisterDisplayName: TIWEdit
    Left = 172
    Top = 252
    Width = 180
    Height = 21
    ZIndex = 2
    StyleRenderOptions.RenderBorder = False
    NonEditableAsLabel = True
    Font.Color = clNone
    Font.FontName = 'Verdana'
    Font.Size = 9
    Font.Style = []
    FriendlyName = 'IWEdit3'
    SubmitOnAsyncEvent = True
    TabOrder = 2
  end
  object edRegisterPassword: TIWEdit
    Left = 172
    Top = 158
    Width = 180
    Height = 21
    ZIndex = 2
    StyleRenderOptions.RenderBorder = False
    NonEditableAsLabel = True
    Font.Color = clNone
    Font.FontName = 'Verdana'
    Font.Size = 9
    Font.Style = []
    FriendlyName = 'IWEdit4'
    SubmitOnAsyncEvent = True
    PasswordPrompt = True
    DataType = stPassword
  end
  object edRegisterRepeatPassword: TIWEdit
    Left = 172
    Top = 204
    Width = 180
    Height = 21
    ZIndex = 2
    StyleRenderOptions.RenderBorder = False
    NonEditableAsLabel = True
    Font.Color = clNone
    Font.FontName = 'Verdana'
    Font.Size = 9
    Font.Style = []
    FriendlyName = 'IWEdit5'
    SubmitOnAsyncEvent = True
    TabOrder = 1
    PasswordPrompt = True
    DataType = stPassword
  end
  object IWLabel10: TIWLabel
    Left = 172
    Top = 236
    Width = 97
    Height = 14
    ZIndex = 2
    Font.Color = clNone
    Font.FontName = 'Verdana'
    Font.Size = 9
    Font.Style = [fsBold]
    HasTabOrder = False
    FriendlyName = 'IWLabel10'
    Caption = 'Display name'
  end
  object rectTitle: TIWRectangle
    Left = 96
    Top = 42
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
  object lnkSubmit: TIWLink
    Left = 214
    Top = 448
    Width = 65
    Height = 17
    ZIndex = 2
    RenderSize = False
    StyleRenderOptions.RenderSize = False
    Alignment = taLeftJustify
    Color = clNone
    Font.Color = clWebBLUE
    Font.FontName = 'Verdana'
    Font.Size = 10
    Font.Style = []
    HasTabOrder = True
    DoSubmitValidation = False
    FriendlyName = 'lnkSubmit'
    OnClick = lnkSubmitClick
    TabOrder = 6
    RawText = False
    Caption = 'Submit'
  end
  object lblRegisterNew: TIWLabel
    Left = 164
    Top = 44
    Width = 297
    Height = 29
    ZIndex = 3
    Font.Color = clWebGRAY
    Font.FontName = 'Verdana'
    Font.Size = 18
    Font.Style = [fsBold]
    HasTabOrder = False
    FriendlyName = 'lblRegisterNew'
    Caption = 'Change User Details'
  end
  object lblEMailError: TIWLabel
    Left = 374
    Top = 302
    Width = 93
    Height = 14
    ZIndex = 2
    Font.Color = clWebRED
    Font.FontName = 'Verdana'
    Font.Size = 9
    Font.Style = [fsBold, fsItalic]
    HasTabOrder = False
    FriendlyName = 'lblEMailError'
    Caption = 'lblEMailError'
  end
  object lblPassError: TIWLabel
    Left = 374
    Top = 162
    Width = 89
    Height = 14
    ZIndex = 2
    Font.Color = clWebRED
    Font.FontName = 'Verdana'
    Font.Size = 9
    Font.Style = [fsBold, fsItalic]
    HasTabOrder = False
    FriendlyName = 'lblPassError'
    Caption = 'lblPassError'
  end
  object lblConfirmPassError: TIWLabel
    Left = 374
    Top = 206
    Width = 149
    Height = 14
    ZIndex = 2
    Font.Color = clWebRED
    Font.FontName = 'Verdana'
    Font.Size = 9
    Font.Style = [fsBold, fsItalic]
    HasTabOrder = False
    FriendlyName = 'lblConfirmPassError'
    Caption = 'lblConfirmPassError'
  end
  object edRegisterLastname: TIWEdit
    Left = 172
    Top = 348
    Width = 180
    Height = 21
    StyleRenderOptions.RenderBorder = False
    NonEditableAsLabel = True
    Font.Color = clNone
    Font.FontName = 'Verdana'
    Font.Size = 9
    Font.Style = []
    FriendlyName = 'edRegisterLastname'
    SubmitOnAsyncEvent = True
    TabOrder = 4
  end
  object edRegisterfirstname: TIWEdit
    Left = 172
    Top = 396
    Width = 180
    Height = 21
    StyleRenderOptions.RenderBorder = False
    NonEditableAsLabel = True
    Font.Color = clNone
    Font.FontName = 'Verdana'
    Font.Size = 9
    Font.Style = []
    FriendlyName = 'edRegisterfirstname'
    SubmitOnAsyncEvent = True
    TabOrder = 5
  end
  object IWLabel1: TIWLabel
    Left = 172
    Top = 332
    Width = 70
    Height = 14
    Font.Color = clNone
    Font.FontName = 'Verdana'
    Font.Size = 9
    Font.Style = [fsBold]
    HasTabOrder = False
    FriendlyName = 'IWLabel1'
    Caption = 'Lastname'
  end
  object IWLabel2: TIWLabel
    Left = 172
    Top = 380
    Width = 72
    Height = 14
    Font.Color = clNone
    Font.FontName = 'Verdana'
    Font.Size = 9
    Font.Style = [fsBold]
    HasTabOrder = False
    FriendlyName = 'IWLabel2'
    Caption = 'Firstname'
  end
  object edRegisterEMail: TIWEdit
    Left = 172
    Top = 300
    Width = 180
    Height = 21
    StyleRenderOptions.RenderBorder = False
    NonEditableAsLabel = True
    Font.Color = clNone
    Font.FontName = 'Verdana'
    Font.Size = 9
    Font.Style = []
    FriendlyName = 'edRegisterEMail'
    SubmitOnAsyncEvent = True
    TabOrder = 3
  end
  object IWLabel3: TIWLabel
    Left = 172
    Top = 284
    Width = 107
    Height = 14
    Font.Color = clNone
    Font.FontName = 'Verdana'
    Font.Size = 9
    Font.Style = [fsBold]
    HasTabOrder = False
    FriendlyName = 'IWLabel3'
    Caption = 'E-mail address'
  end
  object lblDisplayNameError: TIWLabel
    Left = 374
    Top = 254
    Width = 154
    Height = 14
    ZIndex = 2
    Font.Color = clWebRED
    Font.FontName = 'Verdana'
    Font.Size = 9
    Font.Style = [fsBold, fsItalic]
    HasTabOrder = False
    FriendlyName = 'lblDisplayNameError'
    Caption = 'lblDisplayNameError'
  end
  object lblLastnameError: TIWLabel
    Left = 374
    Top = 350
    Width = 128
    Height = 14
    ZIndex = 2
    Font.Color = clWebRED
    Font.FontName = 'Verdana'
    Font.Size = 9
    Font.Style = [fsBold, fsItalic]
    HasTabOrder = False
    FriendlyName = 'lblLastnameError'
    Caption = 'lblLastnameError'
  end
  object lblfirstnameError: TIWLabel
    Left = 374
    Top = 398
    Width = 127
    Height = 14
    ZIndex = 2
    Font.Color = clWebRED
    Font.FontName = 'Verdana'
    Font.Size = 9
    Font.Style = [fsBold, fsItalic]
    HasTabOrder = False
    FriendlyName = 'lblfirstnameError'
    Caption = 'lblfirstnameError'
  end
end
