object ISFInsufficientRights: TISFInsufficientRights
  Left = 0
  Top = 0
  Width = 896
  Height = 202
  RenderInvisibleControls = False
  AllowPageAccess = True
  ConnectionMode = cmAny
  Title = 'EggSoft_Insuff_Rights'
  OnCreate = IWAppFormCreate
  Background.Fixed = False
  HandleTabs = False
  LeftToRight = True
  LockUntilLoaded = False
  LockOnSubmit = True
  ShowHint = True
  OnDefaultAction = iwbOKClick
  DesignLeft = 2
  DesignTop = 2
  object iwbOK: TIWButton
    Left = 397
    Top = 146
    Width = 105
    Height = 25
    Caption = 'OK'
    Color = clWebLIGHTGREEN
    Font.Color = clNone
    Font.FontName = 'Verdana'
    Font.Size = 9
    Font.Style = []
    FriendlyName = 'iwbOK'
    OnClick = iwbOKClick
  end
  object rectLeft: TIWRectangle
    Left = 0
    Top = 0
    Width = 83
    Height = 202
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
    Left = 112
    Top = 39
    Width = 734
    Height = 20
    Alignment = taCenter
    Font.Color = clWebRED
    Font.FontName = 'Verdana'
    Font.Size = 13
    Font.Style = [fsBold]
    HasTabOrder = False
    FriendlyName = 'IWLabel1'
    Caption = 
      'You do not have the correct user permissions to use this program' +
      ' or feature.'
  end
  object IWLabel1: TIWLabel
    Left = 231
    Top = 87
    Width = 437
    Height = 14
    Alignment = taCenter
    Font.Color = clWebBLACK
    Font.FontName = 'Verdana'
    Font.Size = 9
    Font.Style = []
    HasTabOrder = False
    FriendlyName = 'IWLabel1'
    Caption = 
      'Please contact the system administrator  or developer to correct' +
      ' this.'
  end
end
