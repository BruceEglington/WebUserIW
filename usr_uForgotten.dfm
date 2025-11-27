object ISFForgotten: TISFForgotten
  Left = 0
  Top = 0
  Width = 772
  Height = 377
  RenderInvisibleControls = False
  AllowPageAccess = True
  ConnectionMode = cmAny
  Title = 'EggSoft Forgotten'
  OnCreate = IWAppFormCreate
  Background.Filename = 
    'W:\source\IntraWeb6.0\Demos\Win32\Delphi\DieFlyDie\Files\grid_ba' +
    'ckground.gif'
  Background.Fixed = False
  HandleTabs = False
  LeftToRight = True
  LockUntilLoaded = False
  LockOnSubmit = False
  StyleSheet.Filename = 'styles.css'
  ShowHint = True
  OnDefaultAction = lnkSubmitClick
  DesignLeft = 2
  DesignTop = 2
  object rectMain: TIWRectangle
    AlignWithMargins = False
    Left = 83
    Top = 0
    Width = 689
    Height = 377
    Align = alClient
    Font.PxSize = 13
    Font.Color = clWebBLACK
    BorderOptions.Width = 0
    FriendlyName = 'rectMain'
    Color = clWebWHITE
    Alignment = taLeftJustify
    VAlign = vaMiddle
    ExplicitLeft = 89
    ExplicitHeight = 267
  end
  object edEmail: TIWEdit
    AlignWithMargins = False
    Left = 191
    Top = 132
    Width = 446
    Height = 21
    ZIndex = 2
    StyleRenderOptions.RenderBorder = False
    NonEditableAsLabel = True
    Font.FontName = 'Verdana'
    Font.Size = 9
    Font.PxSize = 12
    FriendlyName = 'edEmail'
    SubmitOnAsyncEvent = True
  end
  object IWLabel2: TIWLabel
    AlignWithMargins = False
    Left = 191
    Top = 116
    Width = 147
    Height = 14
    ZIndex = 2
    Font.FontName = 'Verdana'
    Font.Size = 9
    Font.Style = [fsBold]
    Font.PxSize = 12
    HasTabOrder = False
    FriendlyName = 'IWLabel2'
    Caption = 'Your e-mail address'
  end
  object lblInvalid: TIWLabel
    AlignWithMargins = False
    Left = 383
    Top = 159
    Width = 70
    Height = 14
    ZIndex = 2
    Font.FontName = 'Verdana'
    Font.Size = 9
    Font.Style = [fsBold, fsItalic]
    Font.PxSize = 12
    Font.Color = clWebRED
    HasTabOrder = False
    FriendlyName = 'lblInvalid'
    Caption = 'lblInvalid'
  end
  object rectLeft: TIWRectangle
    AlignWithMargins = False
    Left = 0
    Top = 0
    Width = 83
    Height = 377
    Align = alLeft
    ZIndex = 1
    Font.PxSize = 13
    Font.Color = clWebBLACK
    BorderOptions.Width = 0
    FriendlyName = 'rectLeft'
    Color = clWebLAVENDER
    Alignment = taLeftJustify
    VAlign = vaMiddle
    ExplicitHeight = 267
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
    Left = 152
    Top = 42
    Width = 629
    Height = 25
    ZIndex = 3
    Font.FontName = 'Verdana'
    Font.Size = 16
    Font.Style = [fsBold]
    Font.PxSize = 21
    Font.Color = clWebGRAY
    HasTabOrder = False
    FriendlyName = 'lblSignIn'
    Caption = 'Request a reminder of your userid and password'
  end
  object lnkSubmit: TIWLink
    AlignWithMargins = False
    Left = 383
    Top = 216
    Width = 70
    Height = 17
    ZIndex = 2
    RenderSize = False
    StyleRenderOptions.RenderSize = False
    Alignment = taCenter
    Color = clNone
    Font.FontName = 'Verdana'
    Font.Style = [fsUnderline]
    Font.PxSize = 13
    Font.Color = clWebBLUE
    HasTabOrder = True
    DoSubmitValidation = False
    FriendlyName = 'lnkSubmit'
    OnClick = lnkSubmitClick
    TabOrder = 1
    RawText = False
    Caption = 'Send'
  end
end
