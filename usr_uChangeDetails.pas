unit usr_uChangeDetails;

interface

uses
  Classes, SysUtils, IWAppForm, IWApplication, IWTypes, IWHTMLControls,
  IWCompButton, IWCompEdit, IWCompLabel, IWBaseControl,
  IWControl, IWCompRectangle, Controls, Forms, IWVCLBaseControl,
  IWBaseHTMLControl;

type
  TISFChangeUserDetails = class(TIWAppForm)
    rectMain: TIWRectangle;
    rectLeft: TIWRectangle;
    IWLabel5: TIWLabel;
    IWLabel6: TIWLabel;
    edRegisterDisplayName: TIWEdit;
    edRegisterPassword: TIWEdit;
    edRegisterRepeatPassword: TIWEdit;
    IWLabel10: TIWLabel;
    rectTitle: TIWRectangle;
    lnkSubmit: TIWLink;
    lblRegisterNew: TIWLabel;
    lblEMailError: TIWLabel;
    lblPassError: TIWLabel;
    lblConfirmPassError: TIWLabel;
    edRegisterLastname: TIWEdit;
    edRegisterfirstname: TIWEdit;
    IWLabel1: TIWLabel;
    IWLabel2: TIWLabel;
    edRegisterEMail: TIWEdit;
    IWLabel3: TIWLabel;
    lblDisplayNameError: TIWLabel;
    lblLastnameError: TIWLabel;
    lblfirstnameError: TIWLabel;
    procedure lnkSubmitClick(Sender: TObject);
    procedure IWAppFormCreate(Sender: TObject);
  public
  protected
    function Validate : Boolean ;
    procedure ClearErrorMessages ;
  end;

implementation
{$R *.dfm}

uses
  ServerController,
  usr_uDBInterface;

procedure TISFChangeUserDetails.lnkSubmitClick(Sender: TObject);
var
  LError : string;
  //AccessRights : string;
begin
  // Change user details
  if Validate then
  begin
    ClearErrorMessages;
    if ChangeUserDetails(uppercase(UserSession.UserID), UserSession.UserPassword,
                edRegisterPassword.Text, edRegisterRepeatPassword.Text,
                edRegisterDisplayName.Text, lowercase(edRegisterEmail.Text), edRegisterLastname.Text,
                edRegisterFirstName.Text, LError) then
    begin
       UserSession.UserPassword := edRegisterPassword.Text;
       UserSession.UserDisplayName := edRegisterDisplayName.Text;
       UserSession.AfterLogin;
    end else
    begin
       lblPassError.Caption := LError;
    end;
  end;

end;

procedure TISFChangeUserDetails.IWAppFormCreate(Sender: TObject);
var
  tmpLastName, tmpFirstName, tmpEMail : string;
  //AccessRights : string;
begin
  lblEMailError.Caption := '';
  lblPassError.Caption := '';
  lblConfirmPassError.Caption := '';
  lblLastnameError.Caption := '';
  lblFirstnameError.Caption := '';
  lblDisplayNameError.Caption := '';
  GetUserDetails(UserSession.UserID,tmpLastName,tmpFirstName,tmpEmail);
  edRegisterDisplayName.Text := UserSession.UserDisplayName;
  edRegisterEmail.Text := lowercase(tmpEMail);
  edRegisterFirstName.Text := tmpFirstName;
  edRegisterLastName.Text := tmpLastName;
end;

function TISFChangeUserDetails.Validate: Boolean;
begin
  Result := true;
  ClearErrorMessages;
  if (Trim(edRegisterEmail.Text) = '') then
    begin
      lblEMailError.Caption := '''EMail'' must not be left blank.';
      Result := false;
    end;
  if (edRegisterPassword.Text = '') then
    begin
      lblPassError.Caption := '''Password'' must not be left blank.';
      Result := false;
    end;
  if (Trim(edRegisterDisplayName.Text) = '') then
    begin
      lblDisplayNameError.Caption := '''Displayname'' must not be left blank.';
      Result := false;
    end;
  if (Trim(edRegisterLastname.Text) = '') then
    begin
      lblLastnameError.Caption := '''Lastname'' must not be left blank.';
      Result := false;
    end;
  if (Trim(edRegisterFirstname.Text) = '') then
    begin
      lblFirstnameError.Caption := '''Firstname'' must not be left blank.';
      Result := false;
    end;
  if (edRegisterPassword.Text <> edRegisterRepeatPassword.Text) then
    begin
      lblConfirmPassError.Caption := 'Password fields do not match.';
      Result := false;
    end;
  if (Result = false) then
    begin
      Exit;
    end;
end;

procedure TISFChangeUserDetails.ClearErrorMessages;
begin
  lblEMailError.Caption := '';
  lblPassError.Caption := '';
  lblConfirmPassError.Caption := '';
  lblLastnameError.Caption := '';
  lblFirstnameError.Caption := '';
  lblDisplayNameError.Caption := '';
end;

end.
