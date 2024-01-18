object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 290
  ClientWidth = 554
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object lblInvalid: TLabel
    Left = 48
    Top = 144
    Width = 42
    Height = 13
    Caption = 'lblInvalid'
  end
  object Button1: TButton
    Left = 56
    Top = 192
    Width = 75
    Height = 25
    Caption = 'SMTP'
    TabOrder = 0
    OnClick = Button1Click
  end
  object edEmail: TEdit
    Left = 48
    Top = 72
    Width = 305
    Height = 21
    TabOrder = 1
    Text = 'bruce.eglington@usask.ca'
  end
  object Button2: TButton
    Left = 208
    Top = 192
    Width = 75
    Height = 25
    Caption = 'IMAP4'
    TabOrder = 2
    OnClick = Button2Click
  end
  object IdSMTP1: TIdSMTP
    IOHandler = IdSSLIOHandlerSocketOpenSSL1
    MailAgent = 'BEtest'
    Host = 'smtp.usask.ca'
    Password = 'zbxc456'
    SASLMechanisms = <>
    UseTLS = utUseExplicitTLS
    Username = 'bre255'
    Left = 440
    Top = 40
  end
  object IdIMAP41: TIdIMAP4
    SASLMechanisms = <>
    MilliSecsToWaitToClearBuffer = 10
    Left = 440
    Top = 112
  end
  object IdMessage1: TIdMessage
    AttachmentEncoding = 'UUE'
    BccList = <>
    CCList = <>
    Encoding = meDefault
    FromList = <
      item
      end>
    Recipients = <>
    ReplyTo = <>
    ConvertPreamble = True
    Left = 440
    Top = 176
  end
  object IdSSLIOHandlerSocketOpenSSL1: TIdSSLIOHandlerSocketOpenSSL
    Destination = 'smtp.usask.ca:572'
    Host = 'smtp.usask.ca'
    MaxLineAction = maException
    Port = 572
    DefaultPort = 0
    SSLOptions.Mode = sslmUnassigned
    SSLOptions.VerifyMode = []
    SSLOptions.VerifyDepth = 0
    Left = 424
    Top = 240
  end
end
