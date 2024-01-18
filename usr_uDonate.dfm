object ISFDonate: TISFDonate
  Left = 0
  Top = 0
  Width = 761
  Height = 487
  RenderInvisibleControls = False
  AllowPageAccess = True
  ConnectionMode = cmAny
  Title = 'EggSoft Register'
  SupportedBrowsers = [brNetscape7, brIE, brOpera, brSafari, brNetscape6]
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
    Width = 678
    Height = 487
    Cursor = crAuto
    Align = alClient
    IW50Hint = False
    ParentShowHint = False
    ShowHint = True
    ZIndex = 0
    RenderSize = True
    StyleRenderOptions.RenderSize = True
    StyleRenderOptions.RenderPosition = True
    StyleRenderOptions.RenderFont = True
    StyleRenderOptions.RenderZIndex = True
    StyleRenderOptions.RenderVisibility = True
    StyleRenderOptions.RenderStatus = True
    StyleRenderOptions.RenderAbsolute = True
    Font.Color = clWebBLACK
    Font.Size = 10
    Font.Style = []
    BorderOptions.Color = clNone
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
    Cursor = crAuto
    Align = alLeft
    IW50Hint = False
    ParentShowHint = False
    ShowHint = True
    ZIndex = 1
    RenderSize = True
    StyleRenderOptions.RenderSize = True
    StyleRenderOptions.RenderPosition = True
    StyleRenderOptions.RenderFont = True
    StyleRenderOptions.RenderZIndex = True
    StyleRenderOptions.RenderVisibility = True
    StyleRenderOptions.RenderStatus = True
    StyleRenderOptions.RenderAbsolute = True
    Font.Color = clWebBLACK
    Font.Size = 10
    Font.Style = []
    BorderOptions.Color = clNone
    BorderOptions.Width = 0
    FriendlyName = 'rectLeft'
    Color = clWebLAVENDER
    Alignment = taLeftJustify
    VAlign = vaMiddle
  end
  object rectTitle: TIWRectangle
    Left = 96
    Top = 42
    Width = 633
    Height = 36
    Cursor = crAuto
    IW50Hint = False
    ParentShowHint = False
    ShowHint = True
    ZIndex = 2
    RenderSize = True
    StyleRenderOptions.RenderSize = True
    StyleRenderOptions.RenderPosition = True
    StyleRenderOptions.RenderFont = True
    StyleRenderOptions.RenderZIndex = True
    StyleRenderOptions.RenderVisibility = True
    StyleRenderOptions.RenderStatus = True
    StyleRenderOptions.RenderAbsolute = True
    Font.Color = clWebBLACK
    Font.Size = 10
    Font.Style = []
    BorderOptions.Color = clNone
    BorderOptions.Width = 0
    FriendlyName = 'rectTitle'
    Color = clWebKHAKI
    Alignment = taLeftJustify
    VAlign = vaMiddle
  end
  object lblRegisterNew: TIWLabel
    Left = 164
    Top = 44
    Width = 246
    Height = 29
    Cursor = crAuto
    IW50Hint = False
    ParentShowHint = False
    ShowHint = True
    ZIndex = 3
    RenderSize = True
    StyleRenderOptions.RenderSize = True
    StyleRenderOptions.RenderPosition = True
    StyleRenderOptions.RenderFont = True
    StyleRenderOptions.RenderZIndex = True
    StyleRenderOptions.RenderVisibility = True
    StyleRenderOptions.RenderStatus = True
    StyleRenderOptions.RenderAbsolute = True
    Alignment = taLeftJustify
    BGColor = clNone
    Font.Color = clWebGRAY
    Font.FontName = 'Verdana'
    Font.Size = 18
    Font.Style = [fsBold]
    NoWrap = False
    ConvertSpaces = False
    HasTabOrder = False
    FriendlyName = 'lblRegisterNew'
    Caption = 'Make a Donation'
    RawText = False
  end
  object IWMemo1: TIWMemo
    Left = 96
    Top = 124
    Width = 633
    Height = 213
    Cursor = crAuto
    IW50Hint = False
    ParentShowHint = False
    ShowHint = True
    ZIndex = 0
    RenderSize = True
    StyleRenderOptions.RenderSize = True
    StyleRenderOptions.RenderPosition = True
    StyleRenderOptions.RenderFont = True
    StyleRenderOptions.RenderZIndex = True
    StyleRenderOptions.RenderVisibility = True
    StyleRenderOptions.RenderStatus = True
    StyleRenderOptions.RenderAbsolute = True
    BGColor = clNone
    Editable = False
    Font.Color = clNone
    Font.FontName = 'Arial'
    Font.Size = 10
    Font.Style = []
    ScriptEvents = <>
    InvisibleBorder = True
    HorizScrollBar = False
    VertScrollBar = False
    Required = False
    TabOrder = 0
    SubmitOnAsyncEvent = True
    FriendlyName = 'IWMemo1'
    Lines.Strings = (
      
        'Development of software for shared access to these databases uti' +
        'lises open-source systems wherever possible, but many of the com' +
        'ponents required to produce the final program need to be purchas' +
        'ed. In some cases, there are even annual license fees. In additi' +
        'on, I can not only depend on old, cast-off computers for the dat' +
        'abase and web servers. Newer systems are required so as to reduc' +
        'e access times for all users and the databases themselves need t' +
        'o be protected from corruption so that our valuable data are not' +
        ' lost.'
      ''
      
        'Needless to say, this all costs money. Assuming that you find th' +
        'is software and database of benefit, it is hoped that you are pr' +
        'epared to make a donation to the further improvement of this sys' +
        'tem. If so, please click on the PayPal button below and follow t' +
        'he instructions to make a donation. ')
  end
  object iwbReturn: TIWButton
    Left = 468
    Top = 368
    Width = 145
    Height = 25
    Cursor = crAuto
    IW50Hint = False
    ParentShowHint = False
    ShowHint = True
    ZIndex = 0
    RenderSize = True
    StyleRenderOptions.RenderSize = True
    StyleRenderOptions.RenderPosition = True
    StyleRenderOptions.RenderFont = True
    StyleRenderOptions.RenderZIndex = True
    StyleRenderOptions.RenderVisibility = True
    StyleRenderOptions.RenderStatus = True
    StyleRenderOptions.RenderAbsolute = True
    Caption = 'Return to main form'
    DoSubmitValidation = True
    Color = clWebLIGHTGREEN
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    FriendlyName = 'iwbReturn'
    ScriptEvents = <>
    TabOrder = 1
    OnClick = iwbReturnClick
  end
end
