unit usr_uRegister;

interface

uses
  Classes, SysUtils, IWAppForm, IWApplication, IWTypes, IWHTMLControls,
  IWCompButton, IWCompEdit, IWCompLabel, IWBaseControl,
  IWControl, IWCompRectangle, Controls, Forms, IWVCLBaseControl,
  IWBaseHTMLControl, IWCompMemo;

type
  TISFRegister = class(TIWAppForm)
    rectMain: TIWRectangle;
    rectLeft: TIWRectangle;
    IWLabel5: TIWLabel;
    IWLabel6: TIWLabel;
    IWLabel7: TIWLabel;
    edRegisterDisplayName: TIWEdit;
    edRegisterPassword: TIWEdit;
    edRegisterRepeatPassword: TIWEdit;
    edRegisterUserID: TIWEdit;
    IWLabel10: TIWLabel;
    lblUserIDError: TIWLabel;
    rectTitle: TIWRectangle;
    lnkSubmit: TIWLink;
    lblRegisterNew: TIWLabel;
    lblEMailError: TIWLabel;
    lblPassError: TIWLabel;
    lblConfirmPassError: TIWLabel;
    lblDisplayNameError: TIWLabel;
    lblLastnameError: TIWLabel;
    lblfirstnameError: TIWLabel;
    IWLabel8: TIWLabel;
    edRegisterEMail: TIWEdit;
    IWLabel9: TIWLabel;
    edRegisterLastname: TIWEdit;
    IWLabel11: TIWLabel;
    edRegisterFirstname: TIWEdit;
    IWMemo1: TIWMemo;
    IWLabel1: TIWLabel;
    IWLabel2: TIWLabel;
    IWLabel3: TIWLabel;
    IWLabel4: TIWLabel;
    IWLabel12: TIWLabel;
    IWLabel13: TIWLabel;
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

procedure TISFRegister.lnkSubmitClick(Sender: TObject);
var
  LError : string;
  //AccessRights : string;
begin
  // Register new user
  edRegisterUserID.Text := uppercase(edRegisterUserID.Text);
  if Validate then
  begin
    ClearErrorMessages;
    if AddUser(uppercase(edRegisterUserID.Text), edRegisterPassword.Text, edRegisterRepeatPassword.Text,
                edRegisterDisplayName.Text, lowercase(edRegisterEmail.Text), edRegisterLastname.Text,
                edRegisterFirstName.Text, LError) then
    begin
       UserSession.UserID := uppercase(edRegisterUserID.Text);
       UserSession.UserPassword := edRegisterPassword.Text;
       UserSession.UserDisplayName := edRegisterDisplayName.Text;
       //UserSession.UserEMail := edRegisterEmail.Text;
       //UserSession.UserLastname := edRegisterLastname.Text;
       //UserSession.UserFirstname := edRegisterFirstname.Text;
       UserSession.AfterLogin;
    end else
    begin
       lblUserIDError.Caption := LError;
    end;
  end;

end;

procedure TISFRegister.IWAppFormCreate(Sender: TObject);
begin
  lblUserIDError.Caption := '';
  lblEMailError.Caption := '';
  lblPassError.Caption := '';
  lblConfirmPassError.Caption := '';
  lblLastnameError.Caption := '';
  lblFirstnameError.Caption := '';
  lblDisplayNameError.Caption := '';
end;

function TISFRegister.Validate: Boolean;
begin
  Result := true;
  ClearErrorMessages;
  //check all entries have string entries
  edRegisterUserID.Text := uppercase(edRegisterUserID.Text);
  if (Trim(edRegisterUserID.Text) = '') then
  begin
      lblUserIDError.Caption := '''UserID'' must not be left blank.';
      Result := false;
  end;
  if (Trim(edRegisterEmail.Text) = '') then
  begin
      lblEMailError.Caption := '''EMail'' must not be left blank.';
      Result := false;
  end;
  if (Trim(edRegisterPassword.Text) = '') then
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
  //check maximum permissible length of each string
  if (Length(edRegisterUserID.Text) > 20) then
  begin
      lblUserIDError.Caption := '''UserID'' must not be more than 20 characters.';
      Result := false;
  end;
  if (Length(edRegisterEmail.Text) > 200) then
  begin
      lblEMailError.Caption := '''EMail'' must not be more than 200 characters.';
      Result := false;
  end;
  if (Length(edRegisterPassword.Text) > 8) then
  begin
      lblPassError.Caption := '''Password'' must not be more than 8 characters.';
      Result := false;
  end;
  if (Length(edRegisterDisplayName.Text) > 20) then
  begin
      lblDisplayNameError.Caption := '''Displayname'' must not be more than 20 characters.';
      Result := false;
  end;
  if (Length(edRegisterLastname.Text) > 20) then
  begin
      lblLastnameError.Caption := '''Lastname'' must not be more than 20 characters.';
      Result := false;
  end;
  if (Length(edRegisterFirstname.Text) > 20) then
  begin
      lblFirstnameError.Caption := '''Firstname'' must not be more than 20 characters.';
      Result := false;
  end;

  if (Result = false) then
    begin
      Exit;
    end;
end;

procedure TISFRegister.ClearErrorMessages;
begin
  lblUserIDError.Caption := '';
  lblEMailError.Caption := '';
  lblPassError.Caption := '';
  lblConfirmPassError.Caption := '';
  lblLastnameError.Caption := '';
  lblFirstnameError.Caption := '';
  lblDisplayNameError.Caption := '';
end;

end.
