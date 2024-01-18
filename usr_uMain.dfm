object ISFMain: TISFMain
  Left = 0
  Top = 0
  Width = 877
  Height = 531
  ConnectionMode = cmAny
  Title = 'User Control'
  SupportedBrowsers = [brIE, brNetscape7, brOpera, brNetscape6]
  OnCreate = IWAppFormCreate
  BrowserSecurityCheck = True
  Background.Filename = 
    'W:\source\IntraWeb6.0\Demos\Win32\Delphi\DieFlyDie\Files\grid_ba' +
    'ckground.gif'
  Background.Fixed = False
  HandleTabs = False
  LockUntilLoaded = True
  LockOnSubmit = True
  StyleSheet.Filename = 'styles.css'
  ShowHint = True
  UpdateMode = umAll
  DesignLeft = 147
  DesignTop = 95
  object rectMain: TIWRectangle
    Left = 142
    Top = 69
    Width = 735
    Height = 462
    Cursor = crAuto
    Align = alClient
    IW50Hint = False
    ParentShowHint = False
    ShowHint = True
    ZIndex = 0
    RenderSize = True
    Font.Color = clWebBLACK
    Font.CSSStyle = 'plain_text'
    Font.Size = 10
    Font.Style = []
    BorderOptions.Color = clNone
    BorderOptions.Width = 0
    FriendlyName = 'rectMain'
    Color = clWebWHITE
    Alignment = taLeftJustify
    VAlign = vaMiddle
  end
  object lblWelcome: TIWLabel
    Left = 160
    Top = 104
    Width = 536
    Height = 29
    Cursor = crAuto
    IW50Hint = False
    ParentShowHint = False
    ShowHint = True
    ZIndex = 1
    RenderSize = False
    Alignment = taLeftJustify
    BGColor = clNone
    Font.Color = clWebOLIVE
    Font.FontFamily = 'Verdana'
    Font.Size = 18
    Font.Style = [fsBold]
    NoWrap = False
    FriendlyName = 'lblWelcome'
    Caption = 'Welcome to the SIL User Control Interface'
    RawText = False
  end
  object txtWelcome: TIWText
    Left = 160
    Top = 144
    Width = 329
    Height = 161
    Cursor = crAuto
    IW50Hint = False
    ParentShowHint = False
    ShowHint = True
    ZIndex = 1
    RenderSize = False
    BGColor = clNone
    ConvertSpaces = True
    Font.Color = clNone
    Font.CSSStyle = 'plain_text'
    Font.FontName = 'Verdana'
    Font.Size = 8
    Font.Style = []
    FriendlyName = 'txtWelcome'
    Lines.Strings = (
      'The best way to shop for fly hunting tools on the web!  '
      'DieFlyDie is a fictitious retailer that sells extraordinary '
      'anti-fly gear on its Web site. A simple look at some '
      'very serious requirements, DieFlyDie demonstrates '
      'how extraordinarily simple and fast it is to create powerful, '
      'scalable applications with Intraweb.')
    RawText = False
    UseFrame = False
    WantReturns = True
  end
  object lblPopular: TIWLabel
    Left = 160
    Top = 376
    Width = 330
    Height = 16
    Cursor = crAuto
    IW50Hint = False
    ParentShowHint = False
    ShowHint = True
    ZIndex = 1
    RenderSize = True
    Alignment = taLeftJustify
    BGColor = clWebMAROON
    Font.Color = clWebWHITE
    Font.Size = 10
    Font.Style = [fsBold]
    NoWrap = False
    AutoSize = False
    FriendlyName = 'lblPopular'
    Caption = 'Our most popular products this week'
    RawText = False
  end
  object rectPopular: TIWRectangle
    Left = 160
    Top = 392
    Width = 330
    Height = 25
    Cursor = crAuto
    IW50Hint = False
    ParentShowHint = False
    ShowHint = True
    ZIndex = 1
    RenderSize = True
    Font.Color = clWebBLACK
    Font.Size = 10
    Font.Style = []
    BorderOptions.Color = clNone
    BorderOptions.Width = 0
    FriendlyName = 'rectPopular'
    Color = clWebDARKGRAY
    Alignment = taLeftJustify
    VAlign = vaMiddle
  end
  object imgProduct: TIWImage
    Left = 560
    Top = 128
    Width = 241
    Height = 153
    Cursor = crAuto
    IW50Hint = False
    ParentShowHint = False
    ShowHint = True
    ZIndex = 1
    RenderSize = True
    AutoSize = False
    BorderOptions.Color = clWebBLACK
    BorderOptions.Width = 1
    DoSubmitValidation = True
    ScriptEvents = <>
    TabOrder = 5
    UseSize = True
    JpegOptions.CompressionQuality = 90
    JpegOptions.Performance = jpBestSpeed
    JpegOptions.ProgressiveEncoding = False
    JpegOptions.Smoothing = True
    FriendlyName = 'imgProduct'
  end
  object txtTest: TIWText
    Left = 544
    Top = 368
    Width = 313
    Height = 121
    Cursor = crAuto
    IW50Hint = False
    ParentShowHint = False
    ShowHint = True
    ZIndex = 1
    RenderSize = False
    BGColor = clNone
    ConvertSpaces = False
    Font.Color = clNone
    Font.CSSStyle = 'plain_text'
    Font.FontName = 'Verdana'
    Font.Size = 8
    Font.Style = []
    FriendlyName = 'txtTest'
    Lines.Strings = (
      'To give DieFlyDie a test spin, simply start'
      'browsing and add any items you want to your'
      'shopping cart. Click the <b>Documentation</b> link '
      '(left) at any point to learn what'#39's going on under'
      'the hood. ')
    RawText = True
    UseFrame = False
    WantReturns = True
  end
  inline TopBar: TISFTopBar
    Left = 0
    Top = 0
    Width = 877
    Height = 69
    HorzScrollBar.Visible = False
    VertScrollBar.Visible = False
    Align = alTop
    Constraints.MaxHeight = 69
    Constraints.MinHeight = 69
    Constraints.MinWidth = 600
    Color = clNone
    ParentColor = False
    TabOrder = 0
    inherited IWFrameRegion: TIWRegion
      Width = 877
      inherited rectRedTop: TIWRectangle
        Width = 744
      end
      inherited edSearch: TIWEdit
        Left = 731
      end
      inherited imgSearchText: TIWImageFile
        Left = 648
      end
      inherited imgSearchButton: TIWImageFile
        Left = 856
      end
      inherited imgSignIn: TIWImageFile
        Left = 609
      end
      inherited imgAccount: TIWImageFile
        Left = 679
      end
      inherited imgCart: TIWImageFile
        Left = 761
      end
      inherited lnkSignIn: TIWLink
        Left = 622
      end
      inherited lnkAccount: TIWLink
        Left = 689
      end
      inherited lnkCart: TIWLink
        Left = 773
      end
      inherited imgServices: TIWImageFile
        Left = 807
      end
      inherited lnkServices: TIWLink
        Left = 820
      end
    end
  end
  inline LeftTree: TISFProductTree
    Left = 0
    Top = 69
    Width = 142
    Height = 462
    Align = alLeft
    Constraints.MaxWidth = 142
    Constraints.MinWidth = 142
    Color = clNone
    ParentColor = False
    ParentShowHint = False
    ShowHint = False
    TabOrder = 1
    inherited IWFrameRegion: TIWRegion
      Height = 462
      inherited lnkSource: TIWLink
        Top = 443
      end
      inherited rectRight: TIWRectangle
        Height = 462
      end
    end
  end
end
