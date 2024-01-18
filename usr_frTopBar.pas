unit usr_frTopBar;

interface

uses
  Windows, Messages, SysUtils, {$IFNDEF VER130}Variants, {$ENDIF}Classes, Graphics, Controls, Forms,
  Dialogs, IWBaseControl, IWControl, IWHTMLControls,
  IWCompLabel, IWHTMLTag, IWVCLBaseControl, IWCompEdit, IWCompRectangle,
  IWVCLBaseContainer, IWContainer, IWRegion, IWBaseHTMLControl,
  IWHTMLContainer, IWCompExtCtrls, IWHTML40Container;

type
  TISFTopBar = class(TFrame)
    IWFrameRegion: TIWRegion;
    imgSloganTop: TIWImageFile;
    rectBlackTop: TIWRectangle;
    rectRedTop: TIWRectangle;
    edSearch: TIWEdit;
    imgSearchText: TIWImageFile;
    imgSearchButton: TIWImageFile;
    imgSignIn: TIWImageFile;
    imgAccount: TIWImageFile;
    imgCart: TIWImageFile;
    lnkSignIn: TIWLink;
    lnkAccount: TIWLink;
    lnkCart: TIWLink;
    imgServices: TIWImageFile;
    lnkServices: TIWLink;
    imgSloganBottom: TIWImageFile;
    procedure SignIn(Sender: TObject);
    procedure Account(Sender: TObject);
    procedure Cart(Sender: TObject);
  private
  public
  end;

implementation
{$R *.dfm}

uses
  IWInit, IWAppForm,
  usrIW_ServerController,
  IWApplication;

procedure TISFTopBar.SignIn(Sender: TObject);
begin
  UserSession.NeedLogin(TIWAppFormClass(WebApplication.ActiveForm.ClassType));
end;

procedure TISFTopBar.Account(Sender: TObject);
begin
  if UserSession.LoggedIn then begin
    TIWAppForm(WebApplication.ActiveForm).Release;
    {
    TISFOrderHistory.Create(WebApplication).Show;
    }
  end else begin
    SignIn(nil);
  end;
end;

procedure TISFTopBar.Cart(Sender: TObject);
begin
  TIWAppForm(WebApplication.ActiveForm).Release;
  {
  TISFShoppingCart.Create(WebApplication).Show;
  }
end;


end.

