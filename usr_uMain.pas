{
  ISFMain main user window

  This is the first page the user sees when accessing this application.
}

unit usr_uMain;

interface

uses
  Classes, SysUtils, IWAppForm, IWApplication, IWTypes, Controls,
  IWBaseControl, IWControl, IWCompButton, Forms,
  IWVCLBaseControl, IWCompRectangle, IWCompLabel,
  IWCompText, IWExtCtrls, usr_frProductTree, usr_frTopBar,
  IWBaseHTMLControl;

type
  TISFMain = class(TIWAppForm)
    rectMain: TIWRectangle;
    lblWelcome: TIWLabel;
    txtWelcome: TIWText;
    lblPopular: TIWLabel;
    rectPopular: TIWRectangle;
    imgProduct: TIWImage;
    txtTest: TIWText;
    TopBar: TISFTopBar;
    LeftTree: TISFProductTree;
    procedure IWAppFormCreate(Sender: TObject);
  public
  protected
    procedure LoadWelcomeMessage;
  end;

type
  TISFMainClass = class of TISFMain;

implementation
{$R *.dfm}

uses
  ServerController, usrIW_dm, IWHTMLControls, IWColor, Graphics,
  IWBaseForm, jpeg;

procedure TISFMain.IWAppFormCreate(Sender: TObject);
begin
  LoadWelcomeMessage;
end;

procedure TISFMain.LoadWelcomeMessage;
begin
  if UserSession.LoggedIn then
  begin
    dmUser.qCheckUser.Close;
    dmUser.qCheckUser.ParamByName('USERNAMEID').AsString := UserSession.UserID;
    dmUser.cdsUserSpecific.Close;
    dmUser.cdsUserSpecific.Open;
    if (not dmUser.cdsUserSpecific.Eof) then
    begin
      UserSession.UserDisplayName := dmUser.cdsUserSpecificUSERDISPLAYNAME.AsString;
      lblWelcome.Caption := 'Welcome ' + UserSession.UserDisplayName;
    end;
    dmUser.cdsUserSpecific.Close;
  end;
end;

initialization
  TISFMain.SetAsMainForm;
end.
