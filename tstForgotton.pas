unit tstForgotton;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, IdMessage, IdIMAP4,
  IdBaseComponent, IdComponent, IdTCPConnection, IdTCPClient,
  IdExplicitTLSClientServerBase, IdMessageClient, IdSMTPBase, IdSMTP, IdSASL,
  IdSASLAnonymous, IdSASLPlain, IdSASLUserPass, IdSASLLogin, IdSASLExternal,
  IdIOHandler, IdIOHandlerSocket, IdIOHandlerStack, IdSSL, IdSSLOpenSSL;

type
  TForm1 = class(TForm)
    IdSMTP1: TIdSMTP;
    IdIMAP41: TIdIMAP4;
    IdMessage1: TIdMessage;
    Button1: TButton;
    edEmail: TEdit;
    lblInvalid: TLabel;
    Button2: TButton;
    IdSSLIOHandlerSocketOpenSSL1: TIdSSLIOHandlerSocketOpenSSL;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    tmpUserID,tmpPassword : string;
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

uses usr_constants;

procedure TForm1.Button1Click(Sender: TObject);
begin
  tmpUserID := 'BruceUserID';
  tmpPassword := 'BrucePassword';
  if IdSMTP1.Connected then IdSMTP1.Disconnect;
  if Pos('@',Trim(edEMail.Text)) > 0 then
  begin
    IdSMTP1.Host := HostName;
    IdSMTP1.UserName := EmailUserID;
    IdSMTP1.Password := EmailPassword;
    //IdSMTP1.MailAgent := 'BEtest';
    IdMessage1.Body.Clear;
    // text string of senders email address
    IdMessage1.From.Address := FromEmailAddress;
    IdMessage1.From.Name := FromName;  // name of sender
    // email address from database
    IdMessage1.Recipients.Add.Address := Trim(edEMail.Text);

    IdMessage1.Subject := 'User information';  // subject text
    // lines for the message body
    IdMessage1.Body.Add('Your userid and password for use with '+'BEtest'+' is:');
    IdMessage1.Body.Add('   UserID = '+tmpUserID);
    IdMessage1.Body.Add('   Password = '+tmpPassword);
    IdMessage1.Body.Add(' ');
    IdMessage1.Body.Add('Please do not give these details to others and do not leave them where others can find them.');
    IdMessage1.Body.Add('The continued integrity of this database depends on use by individuals who know what they are doing.');
    IdMessage1.Body.Add(' ');
    IdMessage1.Body.Add('Thanks');
    IdMessage1.Body.Add('  Bruce Eglington');
    try
      IdSMTP1.Connect;
      if IdSMTP1.Connected then
      begin
        IdSMTP1.Send(IdMessage1);
        lblInvalid.Caption := 'An email has been sent to you';
      end else
      begin
        lblInvalid.Caption := 'Not able to connect to mail server';
      end;
    finally
      IdSMTP1.Disconnect;
    end;
  end else
  begin
    lblInvalid.Caption := 'Invalid email address';
  end;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  tmpUserID := 'BruceUserID';
  tmpPassword := 'BrucePassword';
  if IdIMAP41.Connected then IdIMAP41.Disconnect;
  if Pos('@',Trim(edEMail.Text)) > 0 then
  begin
    IdIMAP41.Host := HostName;
    IdIMAP41.UserName := EmailUserID;
    IdIMAP41.Password := EmailPassword;
    //IdIMAP41.MailAgent := 'BEtest';
    IdMessage1.Body.Clear;
    // text string of senders email address
    IdMessage1.From.Address := FromEmailAddress;
    IdMessage1.From.Name := FromName;  // name of sender
    // email address from database
    IdMessage1.Recipients.Add.Address := Trim(edEMail.Text);

    IdMessage1.Subject := 'User information';  // subject text
    // lines for the message body
    IdMessage1.Body.Add('Your userid and password for use with '+'BEtest'+' is:');
    IdMessage1.Body.Add('   UserID = '+tmpUserID);
    IdMessage1.Body.Add('   Password = '+tmpPassword);
    IdMessage1.Body.Add(' ');
    IdMessage1.Body.Add('Please do not give these details to others and do not leave them where others can find them.');
    IdMessage1.Body.Add('The continued integrity of this database depends on use by individuals who know what they are doing.');
    IdMessage1.Body.Add(' ');
    IdMessage1.Body.Add('Thanks');
    IdMessage1.Body.Add('  Bruce Eglington');
    try
      IdIMAP41.Connect;
      if IdIMAP41.Connected then
      begin
        IdIMAP41.SendMsg(IdMessage1);
        lblInvalid.Caption := 'An email has been sent to you';
      end else
      begin
        lblInvalid.Caption := 'Not able to connect to mail server';
      end;
    finally
      IdIMAP41.Disconnect;
    end;
  end else
  begin
    lblInvalid.Caption := 'Invalid email address';
  end;
end;

end.
