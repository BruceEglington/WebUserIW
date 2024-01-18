object ISFTopBar: TISFTopBar
  Left = 0
  Top = 0
  Width = 822
  Height = 69
  HorzScrollBar.Visible = False
  VertScrollBar.Visible = False
  Constraints.MaxHeight = 69
  Constraints.MinHeight = 69
  Constraints.MinWidth = 600
  Color = clNone
  ParentColor = False
  TabOrder = 0
  object IWFrameRegion: TIWRegion
    Left = 0
    Top = 0
    Width = 822
    Height = 69
    HorzScrollBar.Visible = False
    VertScrollBar.Visible = False
    RenderInvisibleControls = True
    TabOrder = 0
    Align = alClient
    BorderOptions.NumericWidth = 0
    BorderOptions.BorderWidth = cbwNumeric
    BorderOptions.Style = cbsSolid
    BorderOptions.Color = clNone
    ClipRegion = False
    ZIndex = -1
    DesignSize = (
      822
      69)
    object imgSloganTop: TIWImageFile
      Left = 0
      Top = 0
      Width = 491
      Height = 46
      BorderOptions.Width = 0
      TabOrder = -1
      UseSize = True
      Cacheable = True
      FriendlyName = 'imgSloganTop'
      ImageFile.Filename = 
        'W:\source\IntraWeb6.0\Demos\Win32\Delphi\DieFlyDie\Files\die_fly' +
        '_die.gif'
    end
    object rectBlackTop: TIWRectangle
      Left = 0
      Top = 47
      Width = 134
      Height = 22
      Font.Color = clWebBLACK
      Font.Size = 10
      Font.Style = []
      BorderOptions.Width = 0
      FriendlyName = 'rectBlackTop'
      Color = clWebBLACK
      Alignment = taLeftJustify
      VAlign = vaMiddle
    end
    object rectRedTop: TIWRectangle
      Left = 133
      Top = 47
      Width = 689
      Height = 22
      Anchors = [akLeft, akTop, akRight]
      Font.Color = clWebBLACK
      Font.Size = 10
      Font.Style = []
      BorderOptions.Width = 0
      FriendlyName = 'rectRedTop'
      Color = 157
      Alignment = taLeftJustify
      VAlign = vaBottom
    end
    object edSearch: TIWEdit
      Left = 676
      Top = 47
      Width = 122
      Height = 21
      Anchors = [akTop, akRight]
      ZIndex = 10
      StyleRenderOptions.RenderBorder = False
      NonEditableAsLabel = True
      Font.Color = clNone
      Font.Size = 10
      Font.Style = []
      FriendlyName = 'IWEdit1'
      SubmitOnAsyncEvent = True
      TabOrder = 0
    end
    object imgSearchText: TIWImageFile
      Left = 593
      Top = 48
      Width = 79
      Height = 20
      Anchors = [akTop, akRight]
      ZIndex = 10
      BorderOptions.Width = 0
      TabOrder = -1
      UseSize = True
      Cacheable = True
      FriendlyName = 'imgSearchText'
      ImageFile.Filename = 
        'W:\source\IntraWeb6.0\Demos\Win32\Delphi\DieFlyDie\Files\search.' +
        'gif'
    end
    object imgSearchButton: TIWImageFile
      Left = 801
      Top = 48
      Width = 20
      Height = 20
      Anchors = [akTop, akRight]
      ZIndex = 10
      BorderOptions.Width = 0
      TabOrder = -1
      UseSize = True
      Cacheable = True
      FriendlyName = 'imgSearchButton'
      ImageFile.Filename = 
        'W:\source\IntraWeb6.0\Demos\Win32\Delphi\DieFlyDie\Files\arrowbu' +
        'tton.gif'
    end
    object imgSignIn: TIWImageFile
      Left = 554
      Top = 0
      Width = 54
      Height = 30
      Anchors = [akTop, akRight, akBottom]
      BorderOptions.Width = 0
      TabOrder = -1
      UseSize = True
      OnClick = SignIn
      Cacheable = True
      FriendlyName = 'imgSignIn'
      ImageFile.Filename = 
        'W:\source\IntraWeb6.0\Demos\Win32\Delphi\DieFlyDie\Files\sign_in' +
        '.gif'
    end
    object imgAccount: TIWImageFile
      Left = 624
      Top = 0
      Width = 75
      Height = 30
      Anchors = [akTop, akRight, akBottom]
      BorderOptions.Width = 0
      TabOrder = -1
      UseSize = True
      OnClick = Account
      Cacheable = True
      FriendlyName = 'imgAccount'
      ImageFile.Filename = 
        'W:\source\IntraWeb6.0\Demos\Win32\Delphi\DieFlyDie\Files\account' +
        '.gif'
    end
    object imgCart: TIWImageFile
      Left = 706
      Top = 0
      Width = 46
      Height = 30
      Anchors = [akTop, akRight, akBottom]
      BorderOptions.Width = 0
      TabOrder = -1
      UseSize = True
      OnClick = Cart
      Cacheable = True
      FriendlyName = 'imgCart'
      ImageFile.Filename = 
        'W:\source\IntraWeb6.0\Demos\Win32\Delphi\DieFlyDie\Files\cart.gi' +
        'f'
    end
    object lnkSignIn: TIWLink
      Left = 567
      Top = 32
      Width = 53
      Height = 17
      Anchors = [akTop, akRight, akBottom]
      RenderSize = False
      StyleRenderOptions.RenderSize = False
      Alignment = taLeftJustify
      Color = clNone
      Font.Color = clWebBLACK
      Font.FontFamily = 'Verdana'
      Font.Size = 10
      Font.Style = []
      HasTabOrder = True
      DoSubmitValidation = False
      FriendlyName = 'lnkSignIn'
      OnClick = SignIn
      TabOrder = 1
      RawText = False
      Caption = 'Sign In'
    end
    object lnkAccount: TIWLink
      Left = 634
      Top = 32
      Width = 64
      Height = 17
      Anchors = [akTop, akRight, akBottom]
      RenderSize = False
      StyleRenderOptions.RenderSize = False
      Alignment = taLeftJustify
      Color = clNone
      Font.Color = clWebBLACK
      Font.FontFamily = 'Verdana'
      Font.Size = 10
      Font.Style = []
      HasTabOrder = True
      DoSubmitValidation = False
      FriendlyName = 'lnkAccount'
      OnClick = Account
      TabOrder = 2
      RawText = False
      Caption = 'Account'
    end
    object lnkCart: TIWLink
      Left = 718
      Top = 32
      Width = 37
      Height = 17
      Anchors = [akTop, akRight, akBottom]
      RenderSize = False
      StyleRenderOptions.RenderSize = False
      Alignment = taLeftJustify
      Color = clNone
      Font.Color = clWebBLACK
      Font.FontFamily = 'Verdana'
      Font.Size = 10
      Font.Style = []
      HasTabOrder = True
      DoSubmitValidation = False
      FriendlyName = 'lnkCart'
      OnClick = Cart
      TabOrder = 3
      RawText = False
      Caption = 'Cart'
    end
    object imgServices: TIWImageFile
      Left = 752
      Top = 0
      Width = 69
      Height = 30
      Anchors = [akTop, akRight, akBottom]
      BorderOptions.Width = 0
      TabOrder = -1
      UseSize = True
      Cacheable = True
      FriendlyName = 'imgServices'
      ImageFile.Filename = 
        'W:\source\IntraWeb6.0\Demos\Win32\Delphi\DieFlyDie\Files\service' +
        's.gif'
    end
    object lnkServices: TIWLink
      Left = 765
      Top = 32
      Width = 63
      Height = 17
      Anchors = [akTop, akRight, akBottom]
      RenderSize = False
      StyleRenderOptions.RenderSize = False
      Alignment = taLeftJustify
      Color = clNone
      Font.Color = clWebBLACK
      Font.FontFamily = 'Verdana'
      Font.Size = 10
      Font.Style = []
      HasTabOrder = True
      DoSubmitValidation = False
      FriendlyName = 'lnkServices'
      TabOrder = 4
      RawText = False
      Caption = 'Services'
    end
    object imgSloganBottom: TIWImageFile
      Left = 142
      Top = 48
      Width = 309
      Height = 19
      ZIndex = 10
      BorderOptions.Width = 0
      TabOrder = -1
      UseSize = True
      Cacheable = True
      FriendlyName = 'imgSloganBottom'
      ImageFile.Filename = 
        'W:\source\IntraWeb6.0\Demos\Win32\Delphi\DieFlyDie\Files\funfora' +
        'll.GIF'
    end
  end
end
