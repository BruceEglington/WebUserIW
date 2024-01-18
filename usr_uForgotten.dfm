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
    Left = 83
    Top = 0
    Width = 689
    Height = 377
    Align = alClient
    Font.Color = clWebBLACK
    Font.Size = 10
    Font.Style = []
    BorderOptions.Width = 0
    FriendlyName = 'rectMain'
    Color = clWebWHITE
    Alignment = taLeftJustify
    VAlign = vaMiddle
    ExplicitLeft = 89
    ExplicitHeight = 267
  end
  object edEmail: TIWEdit
    Left = 191
    Top = 132
    Width = 446
    Height = 21
    ZIndex = 2
    StyleRenderOptions.RenderBorder = False
    NonEditableAsLabel = True
    Font.Color = clNone
    Font.FontName = 'Verdana'
    Font.Size = 9
    Font.Style = []
    FriendlyName = 'edEmail'
    SubmitOnAsyncEvent = True
    TabOrder = 0
  end
  object IWLabel2: TIWLabel
    Left = 191
    Top = 116
    Width = 147
    Height = 14
    ZIndex = 2
    Font.Color = clNone
    Font.FontName = 'Verdana'
    Font.Size = 9
    Font.Style = [fsBold]
    HasTabOrder = False
    FriendlyName = 'IWLabel2'
    Caption = 'Your e-mail address'
  end
  object lblInvalid: TIWLabel
    Left = 383
    Top = 159
    Width = 70
    Height = 14
    ZIndex = 2
    Font.Color = clWebRED
    Font.FontName = 'Verdana'
    Font.Size = 9
    Font.Style = [fsBold, fsItalic]
    HasTabOrder = False
    FriendlyName = 'lblInvalid'
    Caption = 'lblInvalid'
  end
  object rectLeft: TIWRectangle
    Left = 0
    Top = 0
    Width = 83
    Height = 377
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
    ExplicitHeight = 267
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
    Left = 152
    Top = 42
    Width = 629
    Height = 25
    ZIndex = 3
    Font.Color = clWebGRAY
    Font.FontName = 'Verdana'
    Font.Size = 16
    Font.Style = [fsBold]
    HasTabOrder = False
    FriendlyName = 'lblSignIn'
    Caption = 'Request a reminder of your userid and password'
  end
  object lnkSubmit: TIWLink
    Left = 383
    Top = 216
    Width = 70
    Height = 17
    ZIndex = 2
    RenderSize = False
    StyleRenderOptions.RenderSize = False
    Alignment = taCenter
    Color = clNone
    Font.Color = clWebBLUE
    Font.FontName = 'Verdana'
    Font.Size = 10
    Font.Style = []
    HasTabOrder = True
    DoSubmitValidation = False
    FriendlyName = 'lnkSubmit'
    OnClick = lnkSubmitClick
    TabOrder = 1
    RawText = False
    Caption = 'Send'
  end
end
