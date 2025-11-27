object ISFDonate: TISFDonate
  Left = 0
  Top = 0
  Width = 761
  Height = 487
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
  DesignLeft = 2
  DesignTop = 2
  object rectMain: TIWRectangle
    AlignWithMargins = False
    Left = 83
    Top = 0
    Width = 678
    Height = 487
    Align = alClient
    Font.PxSize = 13
    Font.Color = clWebBLACK
    BorderOptions.Width = 0
    FriendlyName = 'rectMain'
    Color = clWebWHITE
    Alignment = taLeftJustify
    VAlign = vaMiddle
  end
  object rectLeft: TIWRectangle
    AlignWithMargins = False
    Left = 0
    Top = 0
    Width = 83
    Height = 487
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
  object lblRegisterNew: TIWLabel
    AlignWithMargins = False
    Left = 164
    Top = 44
    Width = 246
    Height = 29
    ZIndex = 3
    Font.FontName = 'Verdana'
    Font.Size = 18
    Font.Style = [fsBold]
    Font.PxSize = 24
    Font.Color = clWebGRAY
    HasTabOrder = False
    FriendlyName = 'lblRegisterNew'
    Caption = 'Make a Donation'
  end
  object IWMemo1: TIWMemo
    AlignWithMargins = False
    Left = 96
    Top = 124
    Width = 633
    Height = 213
    StyleRenderOptions.RenderBorder = False
    BGColor = clNone
    Editable = False
    Font.FontName = 'Arial'
    Font.PxSize = 13
    InvisibleBorder = True
    HorizScrollBar = False
    VertScrollBar = False
    Required = False
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
    AlignWithMargins = False
    Left = 468
    Top = 368
    Width = 145
    Height = 25
    Caption = 'Return to main form'
    Color = clWebLIGHTGREEN
    FriendlyName = 'iwbReturn'
    TabOrder = 1
    OnClick = iwbReturnClick
  end
end
