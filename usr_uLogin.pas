unit usr_uLogin;

interface

uses
  Classes, SysUtils, IWAppForm, IWApplication, IWTypes,
  Controls, Forms, IWCompLabel, IWBaseControl,
  IWControl, IWCompEdit, IWCompButton, IWCompMemo, 
  IWCompRectangle, IWHTMLControls,
  IWVCLBaseControl, IWBaseHTMLControl;

type
  TISFLogin = class(TIWAppForm)
    rectMain: TIWRectangle;
    edUserID: TIWEdit;
    IWLabel2: TIWLabel;
    IWLabel3: TIWLabel;
    lblUserInvalid: TIWLabel;
    rectLeft: TIWRectangle;
    rectTitle: TIWRectangle;
    lblSignIn: TIWLabel;
    lnkSignIn: TIWLink;
    lnkRegister: TIWLink;
    lblRegister: TIWLabel;
    lblPassInvalid: TIWLabel;
    edPassword: TIWEdit;
    lnkForgotten: TIWLink;
    lnkChange: TIWLink;
    IWLabel1: TIWLabel;
    IWLabel4: TIWLabel;
    procedure IWAppFormCreate(Sender: TObject);
    procedure lnkSignInClick(Sender: TObject);
    procedure lnkRegisterClick(Sender: TObject);
    procedure lnkForgottenClick(Sender: TObject);
    procedure lnkChangeClick(Sender: TObject);
    procedure IWAppFormRefreshForm(Sender: TObject);
  protected
    function ValidateSignIn : Boolean;
    procedure ResetLabels;
  public
  end;

implementation
{$R *.dfm}

uses
  usr_uDBInterface, usr_uRegister,
  ServerController, usr_uForgotten, usr_uChangeDetails, usr_uRenew,
  usr_constants, usr_cookies, usrIW_dm;

procedure TISFLogin.IWAppFormCreate(Sender: TObject);
begin
  ResetLabels;
  edUserID.Text := GetCookieValue('USERID');
end;

procedure TISFLogin.lnkSignInClick(Sender: TObject);
const
  KeepCookieForNumDays : double = 1296000.0;
//var
  //AccessRights : string;
begin
  // set temporarily to avoid login each time
  {
  edUserID.Text := 'BruceEglington';
  edPassword.Text := 'tamryn';
  }
  //UserSession.UserAccessRights.Text := '';
  //dmUser.SetDeveloperData('Login activated');
  if ValidateSignIn then
  begin
    ResetLabels;
    if CheckUser(edUserID.Text, edPassword.Text) then
    begin
      UserSession.IsDeveloper := true; //temporary to check some stuff
      dmUser.SetDeveloperData('accepted');
      //dmUser.SetDeveloperData(tmpcheckstr);
      //WebApplication.ShowMessage('accepted');
      UserSession.UserPassword := edPassword.Text;
      UserSession.UserID := uppercase(edUserID.Text);
      edUserID.Text := UserSession.UserID;
      SetCookie('USERID',UserSession.UserID,KeepCookieForNumDays);
      //originally used to be
      //with WebApplication.Response.Cookies.Add do
      //begin
      //  Name := 'USERID';
      //  Value := UserSession.UserID;
      //  Path := WebApplication.AppURLBase;
      //  Expires := Now + SessionExpiryTime;
      //end;
      //dmUser.SetDeveloperData('after ValidateSignIn');
      //UserSession.AfterLogin;  omitted 20200325
      //dmUser.SetDeveloperData('after AfterLogin');

      if CheckUserPayedUp(UserSession.UserID, UserSession.ThisProgram) then
      begin
        //GetUserAccessRights2(UserSession.UserID, UserSession.UserPassword, AccessRights);
        UserSession.AfterLogin;
      end else
      begin
        TISFRenew.Create(WebApplication).Show;
        Release;
      end;
    end else
    begin
      lblUserInvalid.Caption := 'Invalid user name or password.';
    end;
  end;
end;

procedure TISFLogin.lnkRegisterClick(Sender: TObject);
begin
  TISFRegister.Create(WebApplication).Show;
  Release;
end;

function TISFLogin.ValidateSignIn: Boolean;
begin
  edUserID.Text := uppercase(Trim(edUserID.Text));
  edPassword.Text := Trim(edPassword.Text);
  Result := True;
  if (edUserID.Text = '') then begin
    lblUserInvalid.Caption := 'UserID must not be left blank.';
    Result := False;
  end else if (edPassword.Text = '') then begin
    lblPassInvalid.Caption := 'Password must not be left blank.';
    Result := False;
  end;
end;

procedure TISFLogin.ResetLabels;
begin
  lblUserInvalid.Caption := '';
  lblPassInvalid.Caption := '';
end;

procedure TISFLogin.lnkForgottenClick(Sender: TObject);
begin
  TISFForgotten.Create(WebApplication).Show;
  Release;
end;

procedure TISFLogin.IWAppFormRefreshForm(Sender: TObject);
begin
  edUserID.Text := uppercase(edUserID.Text);
end;

procedure TISFLogin.lnkChangeClick(Sender: TObject);
begin
  //UserSession.UserAccessRights.Text := '';
  if ValidateSignIn then begin
    ResetLabels;
    if CheckUser(edUserID.Text, edPassword.Text) then
    begin
      UserSession.UserPassword := trim(edPassword.Text);
      UserSession.UserID := trim(edUserID.Text);
      edUserID.Text := UserSession.UserID;
      TISFChangeUserDetails.Create(WebApplication).Show;
      Release;
    end else
    begin
      lblUserInvalid.Caption := 'Invalid user name or password.';
    end;
  end;
end;

end.

