unit usr_uDonate;

interface

uses
  Classes, SysUtils, IWAppForm, IWApplication, IWTypes, IWHTMLControls,
  IWCompButton, IWCompEdit, IWCompLabel, IWBaseControl,
  IWControl, IWCompRectangle, Controls, Forms, IWVCLBaseControl,
  IWBaseHTMLControl, IWCompMemo;

type
  TISFDonate = class(TIWAppForm)
    rectMain: TIWRectangle;
    rectLeft: TIWRectangle;
    rectTitle: TIWRectangle;
    lblRegisterNew: TIWLabel;
    IWMemo1: TIWMemo;
    iwbReturn: TIWButton;
    procedure iwbReturnClick(Sender: TObject);
    procedure IWAppFormCreate(Sender: TObject);
  public
  protected
  end;

implementation
{$R *.dfm}

uses
  ServerController,
  usr_uDBInterface;


procedure TISFDonate.iwbReturnClick(Sender: TObject);
begin
  //UserSession.AfterDonate;
end;

procedure TISFDonate.IWAppFormCreate(Sender: TObject);
begin
  //ArcIWPayPalDonation2.DonationText := UserSession.ThisProgram + ' donation';
end;

end.
