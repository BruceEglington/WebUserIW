object ISFLogin: TISFLogin
  Left = 0
  Top = 0
  Width = 808
  Height = 480
  RenderInvisibleControls = False
  AllowPageAccess = True
  ConnectionMode = cmAny
  Title = 'EggSoft Login'
  OnCreate = IWAppFormCreate
  OnRefreshForm = IWAppFormRefreshForm
  ActiveControl = lnkSignIn
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
  OnDefaultAction = lnkSignInClick
  DesignLeft = 2
  DesignTop = 2
  object rectMain: TIWRectangle
    AlignWithMargins = False
    Left = 83
    Top = 0
    Width = 725
    Height = 480
    Align = alClient
    Font.PxSize = 13
    Font.Color = clWebBLACK
    BorderOptions.Width = 0
    FriendlyName = 'rectMain'
    Color = clWebWHITE
    Alignment = taLeftJustify
    VAlign = vaMiddle
  end
  object edUserID: TIWEdit
    AlignWithMargins = False
    Left = 191
    Top = 132
    Width = 177
    Height = 21
    ZIndex = 2
    StyleRenderOptions.RenderBorder = False
    Font.FontName = 'Verdana'
    Font.Size = 9
    Font.PxSize = 12
    FriendlyName = 'IWEdit1'
    SubmitOnAsyncEvent = True
  end
  object edPassword: TIWEdit
    AlignWithMargins = False
    Left = 191
    Top = 204
    Width = 177
    Height = 21
    ZIndex = 2
    StyleRenderOptions.RenderBorder = False
    Font.FontName = 'Verdana'
    Font.Size = 9
    Font.PxSize = 12
    FriendlyName = 'IWEdit2'
    SubmitOnAsyncEvent = True
    TabOrder = 1
    PasswordPrompt = True
    DataType = stPassword
  end
  object IWLabel2: TIWLabel
    AlignWithMargins = False
    Left = 191
    Top = 116
    Width = 56
    Height = 14
    ZIndex = 2
    Font.FontName = 'Verdana'
    Font.Size = 9
    Font.Style = [fsBold]
    Font.PxSize = 12
    HasTabOrder = False
    FriendlyName = 'IWLabel2'
    Caption = 'User ID'
  end
  object IWLabel3: TIWLabel
    AlignWithMargins = False
    Left = 191
    Top = 188
    Width = 71
    Height = 14
    ZIndex = 2
    Font.FontName = 'Verdana'
    Font.Size = 9
    Font.Style = [fsBold]
    Font.PxSize = 12
    HasTabOrder = False
    FriendlyName = 'IWLabel3'
    Caption = 'Password'
  end
  object lblUserInvalid: TIWLabel
    AlignWithMargins = False
    Left = 388
    Top = 132
    Width = 104
    Height = 14
    ZIndex = 2
    Font.FontName = 'Verdana'
    Font.Size = 9
    Font.Style = [fsBold, fsItalic]
    Font.PxSize = 12
    Font.Color = clWebRED
    HasTabOrder = False
    FriendlyName = 'lblUserInvalid'
    Caption = 'lblUserInvalid'
  end
  object rectLeft: TIWRectangle
    AlignWithMargins = False
    Left = 0
    Top = 0
    Width = 83
    Height = 480
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
    Width = 94
    Height = 29
    ZIndex = 3
    Font.FontName = 'Verdana'
    Font.Size = 18
    Font.Style = [fsBold]
    Font.PxSize = 24
    Font.Color = clWebGRAY
    HasTabOrder = False
    FriendlyName = 'lblSignIn'
    Caption = 'Log In'
  end
  object lnkSignIn: TIWLink
    AlignWithMargins = False
    Left = 196
    Top = 260
    Width = 89
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
    FriendlyName = 'lnkSignIn'
    OnClick = lnkSignInClick
    TabOrder = 4
    RawText = False
    Caption = 'Log In Now'
  end
  object lnkRegister: TIWLink
    AlignWithMargins = False
    Left = 196
    Top = 320
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
    FriendlyName = 'lnkRegister'
    OnClick = lnkRegisterClick
    TabOrder = 5
    RawText = False
    Caption = 'Register'
  end
  object lblRegister: TIWLabel
    AlignWithMargins = False
    Left = 196
    Top = 302
    Width = 287
    Height = 14
    ZIndex = 2
    Font.FontName = 'Verdana'
    Font.Size = 9
    Font.PxSize = 12
    HasTabOrder = False
    FriendlyName = 'lblRegister'
    Caption = 'If you are a new user, then register now.'
  end
  object lblPassInvalid: TIWLabel
    AlignWithMargins = False
    Left = 388
    Top = 204
    Width = 104
    Height = 14
    ZIndex = 2
    Font.FontName = 'Verdana'
    Font.Size = 9
    Font.Style = [fsBold, fsItalic]
    Font.PxSize = 12
    Font.Color = clWebRED
    HasTabOrder = False
    FriendlyName = 'lblPassInvalid'
    Caption = 'lblPassInvalid'
  end
  object lnkForgotten: TIWLink
    AlignWithMargins = False
    Left = 470
    Top = 260
    Width = 231
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
    FriendlyName = 'lnkForgotten'
    OnClick = lnkForgottenClick
    TabOrder = 3
    RawText = False
    Caption = 'Forgotten your password or userid ?'
  end
  object lnkChange: TIWLink
    AlignWithMargins = False
    Left = 470
    Top = 320
    Width = 297
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
    FriendlyName = 'lnkChange'
    OnClick = lnkChangeClick
    TabOrder = 2
    RawText = False
    Caption = 'Change your password, email address, etc'
  end
  object IWLabel1: TIWLabel
    AlignWithMargins = False
    Left = 288
    Top = 400
    Width = 297
    Height = 17
    Alignment = taCenter
    Font.PxSize = 13
    Font.Color = clWebRED
    HasTabOrder = False
    FriendlyName = 'IWLabel1'
    Caption = 'Use the mouse to click on links. Some browsers do'
  end
  object IWLabel4: TIWLabel
    AlignWithMargins = False
    Left = 316
    Top = 416
    Width = 230
    Height = 17
    Alignment = taCenter
    Font.PxSize = 13
    Font.Color = clWebRED
    HasTabOrder = False
    FriendlyName = 'IWLabel4'
    Caption = 'not recognise use of the ENTER button.'
  end
end
