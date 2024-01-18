unit lims_addaliquots;

interface

uses
  Classes, SysUtils, IWAppForm, IWApplication, IWTypes,
  Controls, Forms, IWBaseControl, IWControl, IWCompRectangle,
  IWCompButton, IWCompLabel, IWCompEdit, IWCompListbox, IWCompCheckbox,
  IWVCLBaseControl, IWBaseHTMLControl, lims_frTopBar;

type
  TISFAddAliquots = class(TIWAppForm)
    iweFrom: TIWEdit;
    IWLabel1: TIWLabel;
    iwbSubmit: TIWButton;
    IWLabel2: TIWLabel;
    IWLabel3: TIWLabel;
    iweTo: TIWEdit;
    lblFromError: TIWLabel;
    lblToError: TIWLabel;
    rectLeft: TIWRectangle;
    TopBar: TISFTopBar;
    procedure IWAppFormRender(Sender: TObject);
    procedure IWAppFormCreate(Sender: TObject);
    procedure iwbSubmitClick(Sender: TObject);
  public
  protected
    function Validate : Boolean ;
    procedure ClearErrorMessages ; 
  end;

implementation

{$R *.dfm}

uses
  ServerController, lims_constants, lims_sites, lims_samples;




procedure TISFAddAliquots.IWAppFormRender(Sender: TObject);
begin
  TopBar.lnkSignIn.Visible := not UserSession.LoggedIn;
  if UserSession.LoggedIn then
  begin
    TopBar.lblWelcome.Caption := 'Welcome ' + UserSession.UserDisplayName;
  end;
  iwLabel1.Caption := 'Show sites ranging';
  if (UserSession.UnitSender = usSites) then iwLabel1.Caption := 'Show sites ranging';
  if (UserSession.UnitSender = usSamples) then iwLabel1.Caption := 'Show samples ranging';
  iweFrom.Text := UserSession.StartFrom;
  iweTo.Text := UserSession.EndWith;
end;

procedure TISFAddAliquots.IWAppFormCreate(Sender: TObject);
begin
  ClearErrorMessages;
  TopBar.lnkSignIn.Visible := not UserSession.LoggedIn;
  if UserSession.LoggedIn then
  begin
    TopBar.lblWelcome.Caption := 'Welcome ' + UserSession.UserDisplayName;
  end;
  iweFrom.Text := UserSession.StartFrom;
  iweTo.Text := UserSession.EndWith;
end;

procedure TISFAddAliquots.iwbSubmitClick(Sender: TObject);
begin
  UserSession.StartFrom := iweFrom.Text;
  UserSession.EndWith := iweTo.Text;
  if Validate then
  begin
    {
    UserSession.ParameterChosen := NothingChosen;
    }
    UserSession.LastVisitedForm := TIWAppFormClass(WebApplication.ActiveForm.ClassType);
    TIWAppForm(WebApplication.ActiveForm).Hide;
    if (UserSession.UnitSender = usSites) then
    begin
      TISFSites.Create(WebApplication).Show;
    end;
    if (UserSession.UnitSender = usSamples) then
    begin
      TISFSamples.Create(WebApplication).Show;
    end;
  end;
end;

function TISFAddAliquots.Validate: Boolean;
begin
  Result := true;
  ClearErrorMessages;
  if (Trim(iweFrom.Text) = '') then
  begin
    lblFromError.Caption := '''Ranging from'' requires a value.';
    Result := false;
  end;
  if (Trim(iweTo.Text) = '') then
  begin
    lblToError.Caption := '''Ranging to'' requires a value.';
    Result := false;
  end;
  if (Result = false) then
  begin
    Exit;
  end;
end;

procedure TISFAddAliquots.ClearErrorMessages;
begin
  lblFromError.Caption := '';
  lblToError.Caption := '';
end;

end.
