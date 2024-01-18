unit usr_uForgotten;

interface

uses
  Classes, SysUtils, IWAppForm, IWApplication, IWTypes,
  Controls, Forms, IWCompLabel, IWBaseControl,
  IWControl, IWCompEdit, IWCompButton, IWCompMemo,
  IWCompRectangle, IWHTMLControls,
  IWVCLBaseControl, IWBaseHTMLControl, IdMessage, IdBaseComponent,
  IdComponent, IdTCPConnection, IdTCPClient, IdMessageClient, IdSMTP,
  IdExplicitTLSClientServerBase, IdSMTPBase, IdIOHandler, IdIOHandlerSocket,
  IdIOHandlerStack, IdSSL, IdSSLOpenSSL, IdUserPassProvider, IdSASL,
  IdSASLUserPass, IdSASLLogin;

type
  TISFForgotten = class(TIWAppForm)
    rectMain: TIWRectangle;
    edEmail: TIWEdit;
    IWLabel2: TIWLabel;
    lblInvalid: TIWLabel;
    rectLeft: TIWRectangle;
    rectTitle: TIWRectangle;
    lblSignIn: TIWLabel;
    lnkSubmit: TIWLink;
    procedure IWAppFormCreate(Sender: TObject);
    procedure lnkSubmitClick(Sender: TObject);
  protected
    function ValidateEmail : Boolean;
    procedure ResetLabels;
    procedure SendIt(tmpUserID, tmpPassword : string);
  public
  end;

implementation
{$R *.dfm}

uses
  ServerController, usr_constants, usr_uDBInterface, usrIW_dm, usr_uLogin;

procedure TISFForgotten.IWAppFormCreate(Sender: TObject);
begin
  ResetLabels;
end;

function TISFForgotten.ValidateEMail: Boolean;
begin
  Result := True;
  edEmail.Text := lowercase(Trim(edEmail.Text));
  if (edEmail.Text = '') then begin
    lblInvalid.Caption := 'Email address must not be left blank.';
    dmUser.SetDeveloperData('Email address must not be left blank.');
    Result := False;
  end;
end;

procedure TISFForgotten.ResetLabels;
begin
  lblInvalid.Caption := '';
  //dmUser.SetDeveloperData('ResetLabels');
end;

procedure TISFForgotten.lnkSubmitClick(Sender: TObject);
var
  tmpUserID,tmpPassword : string;
begin
  UserSession.IsDeveloper := true;
  UserSession.LoggedIn := true;
  //dmUser.SetDeveloperData('before Validate');
  if ValidateEmail then begin
    //dmUser.SetDeveloperData('in Validate before ResetLabels');
    ResetLabels;
    GetUserFromEmail(lowercase(Trim(edEMail.Text)),tmpUserID,tmpPassword);
    if ((tmpUserID <> '') and (tmpPassword <> '')) then
    begin
      //dmUser.SetDeveloperData('tmpUserID = '+tmpUserID+'*** tmpPassword = '+tmpPassword);
      SendIt(tmpUserID,tmpPassword);
    end else
    begin
      lblInvalid.Caption := 'Email address not found in database';
      dmUser.SetDeveloperData('Email address not found in database');
    end;
  end;
  TIsFLogin.Create(WebApplication).Show;
  Release;
end;


procedure TISFForgotten.SendIt(tmpUserID, tmpPassword : string);
var
  SSL1: TIdSSLIOHandlerSocketOpenSSL;
  SMTP: TIdSMTP;
  msg: TIdMessage;
begin
  SMTP := TIdSMTP.Create(nil);
  SSL1 := TIdSSLIOHandlerSocketOpenSSL.Create(nil);
  msg := TIdMessage.Create(nil);
  if SMTP.Connected then SMTP.Disconnect;
  if (Pos('@',Trim(edEMail.Text)) > 0) and (Length(Trim(edEMail.Text)) > 6) then
  begin
    // Set up SMTP to use SSL
    SMTP.IOHandler := SSL1;
    SMTP.UseTLS := utUseRequireTLS;
    // Office 365 settings
    SMTP.Host := HostName;
    SMTP.Port := StrToInt(HostPort);
    // Authentication settings
    SMTP.Username := EmailUserID;
    SMTP.Password := EmailPassword;

    // Set up message
    msg.From.Address := SMTP.Username;
    msg.Recipients.EMailAddresses := edEmail.Text;
    msg.Body.Clear;
    msg.Subject := 'User information';  // subject text
    // lines for the message body
    msg.Body.Add('Your userid and password for use with '+UserSession.ThisProgram+' is:');
    msg.Body.Add('   UserID = '+tmpUserID);
    msg.Body.Add('   Password = '+tmpPassword);
    msg.Body.Add(' ');
    msg.Body.Add('Please do not give these details to others and do not leave them where others can find them.');
    msg.Body.Add('The continued integrity of this database depends on use by individuals who know what they are doing.');
    msg.Body.Add(' ');
    msg.Body.Add('Thanks');
    msg.Body.Add('  Bruce Eglington');
    //dmUser.SetDeveloperData('IdMessage1.Body.Text');
    try
      try
        SMTP.Connect;
        SMTP.Send(msg);
      except
      end;
    finally
      if SMTP.Connected then SMTP.Disconnect;
    end;
    msg.Destroy;
    SMTP.IOHandler := nil;
    SMTP.Destroy;
    SSL1.Destroy;
  end;
  TIsFLogin.Create(WebApplication).Show;
  Release;
end;


end.

