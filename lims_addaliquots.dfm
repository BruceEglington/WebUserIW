object ISFAddAliquots: TISFAddAliquots
  Left = 0
  Top = 0
  Width = 727
  Height = 225
  OnRender = IWAppFormRender
  ConnectionMode = cmAny
  SupportedBrowsers = [brIE, brNetscape7, brOpera, brSafari, brNetscape6]
  OnCreate = IWAppFormCreate
  BrowserSecurityCheck = True
  Background.Fixed = False
  HandleTabs = False
  LockUntilLoaded = True
  LockOnSubmit = True
  ShowHint = True
  DesignLeft = 8
  DesignTop = 117
  object iweFrom: TIWEdit
    Left = 142
    Top = 103
    Width = 179
    Height = 21
    Cursor = crAuto
    IW50Hint = False
    ParentShowHint = False
    ShowHint = True
    ZIndex = 0
    RenderSize = True
    Alignment = taLeftJustify
    BGColor = clNone
    FocusColor = clNone
    DoSubmitValidation = True
    Editable = True
    NonEditableAsLabel = True
    Font.Color = clNone
    Font.FontName = 'Verdana'
    Font.Size = 8
    Font.Style = []
    FriendlyName = 'iweFrom'
    MaxLength = 0
    ReadOnly = False
    Required = False
    ScriptEvents = <>
    TabOrder = 0
    PasswordPrompt = False
  end
  object IWLabel1: TIWLabel
    Left = 102
    Top = 80
    Width = 135
    Height = 13
    Cursor = crAuto
    IW50Hint = False
    ParentShowHint = False
    ShowHint = True
    ZIndex = 0
    RenderSize = False
    Alignment = taLeftJustify
    BGColor = clNone
    Font.Color = clNone
    Font.FontName = 'Verdana'
    Font.Size = 8
    Font.Style = [fsBold]
    NoWrap = False
    FriendlyName = 'IWLabel1'
    Caption = 'Show sites ranging'
    RawText = False
  end
  object iwbSubmit: TIWButton
    Left = 196
    Top = 182
    Width = 75
    Height = 25
    Cursor = crAuto
    IW50Hint = False
    ParentShowHint = False
    ShowHint = True
    ZIndex = 0
    RenderSize = True
    Caption = 'Submit'
    DoSubmitValidation = True
    Color = clBtnFace
    Font.Color = clNone
    Font.FontName = 'Verdana'
    Font.Size = 8
    Font.Style = []
    FriendlyName = 'iwbSubmit'
    ScriptEvents = <>
    TabOrder = 4
    OnClick = iwbSubmitClick
  end
  object IWLabel2: TIWLabel
    Left = 102
    Top = 106
    Width = 34
    Height = 13
    Cursor = crAuto
    IW50Hint = False
    ParentShowHint = False
    ShowHint = True
    ZIndex = 0
    RenderSize = False
    Alignment = taLeftJustify
    BGColor = clNone
    Font.Color = clNone
    Font.FontName = 'Verdana'
    Font.Size = 8
    Font.Style = [fsBold]
    NoWrap = False
    FriendlyName = 'IWLabel2'
    Caption = 'from'
    RawText = False
  end
  object IWLabel3: TIWLabel
    Left = 102
    Top = 134
    Width = 14
    Height = 13
    Cursor = crAuto
    IW50Hint = False
    ParentShowHint = False
    ShowHint = True
    ZIndex = 0
    RenderSize = False
    Alignment = taLeftJustify
    BGColor = clNone
    Font.Color = clNone
    Font.FontName = 'Verdana'
    Font.Size = 8
    Font.Style = [fsBold]
    NoWrap = False
    FriendlyName = 'IWLabel3'
    Caption = 'to'
    RawText = False
  end
  object iweTo: TIWEdit
    Left = 142
    Top = 131
    Width = 179
    Height = 21
    Cursor = crAuto
    IW50Hint = False
    ParentShowHint = False
    ShowHint = True
    ZIndex = 0
    RenderSize = True
    Alignment = taLeftJustify
    BGColor = clNone
    FocusColor = clNone
    DoSubmitValidation = True
    Editable = True
    NonEditableAsLabel = True
    Font.Color = clNone
    Font.FontName = 'Verdana'
    Font.Size = 8
    Font.Style = []
    FriendlyName = 'iweTo'
    MaxLength = 0
    ReadOnly = False
    Required = False
    ScriptEvents = <>
    TabOrder = 1
    PasswordPrompt = False
  end
  object lblFromError: TIWLabel
    Left = 353
    Top = 104
    Width = 78
    Height = 13
    Cursor = crAuto
    IW50Hint = False
    ParentShowHint = False
    ShowHint = True
    ZIndex = 0
    RenderSize = False
    Alignment = taLeftJustify
    BGColor = clNone
    Font.Color = clWebRED
    Font.FontName = 'Verdana'
    Font.Size = 8
    Font.Style = []
    NoWrap = False
    FriendlyName = 'lblFromError'
    Caption = 'lblFromError'
    RawText = False
  end
  object lblToError: TIWLabel
    Left = 353
    Top = 132
    Width = 61
    Height = 13
    Cursor = crAuto
    IW50Hint = False
    ParentShowHint = False
    ShowHint = True
    ZIndex = 0
    RenderSize = False
    Alignment = taLeftJustify
    BGColor = clNone
    Font.Color = clWebRED
    Font.FontName = 'Verdana'
    Font.Size = 8
    Font.Style = []
    NoWrap = False
    FriendlyName = 'lblToError'
    Caption = 'lblToError'
    RawText = False
  end
  object rectLeft: TIWRectangle
    Left = 0
    Top = 69
    Width = 83
    Height = 156
    Cursor = crAuto
    Align = alLeft
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
    FriendlyName = 'rectLeft'
    Color = clMoneyGreen
    Alignment = taLeftJustify
    VAlign = vaMiddle
  end
  inline TopBar: TISFTopBar
    Left = 0
    Top = 0
    Width = 727
    Height = 69
    HorzScrollBar.Visible = False
    VertScrollBar.Visible = False
    Align = alTop
    Constraints.MaxHeight = 69
    Constraints.MinHeight = 69
    Constraints.MinWidth = 600
    Color = clNone
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    TabOrder = 0
    inherited IWFrameRegion: TIWRegion
      Width = 727
      DesignSize = (
        727
        69)
      inherited rectRedTop: TIWRectangle
        Width = 594
      end
      inherited lnkSignIn: TIWLink
        Left = 540
      end
      inherited IWRectangleTitle: TIWRectangle
        Width = 513
      end
      inherited lblWelcome: TIWLabel
        Left = 152
        Width = 3
        Height = 15
        Font.Size = 9
      end
    end
  end
end
