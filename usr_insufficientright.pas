unit usr_insufficientright;

interface

uses
  Classes, SysUtils, IWAppForm, IWApplication, IWTypes,
  Controls, Forms, IWBaseControl, IWControl, IWCompRectangle,
  IWCompLabel, IWCompMemo, IWDBStdCtrls, IWCompListbox, IWCompEdit,
  IWCompButton, IWVCLBaseControl, IWBaseHTMLControl;

type
  TISFInsufficientRights = class(TIWAppForm)
    iwbOK: TIWButton;
    rectLeft: TIWRectangle;
    IWLabel5: TIWLabel;
    IWLabel1: TIWLabel;
    procedure iwbOKClick(Sender: TObject);
    procedure IWAppFormCreate(Sender: TObject);
  public
  end;

implementation

{$R *.dfm}

uses
  ServerController, usrIW_dm, usr_constants, usr_uDBInterface;




procedure TISFInsufficientRights.iwbOKClick(Sender: TObject);
begin
  //WebApplication.TerminateAndRedirect(GetURLonTerminate(UserSession.ThisProgram));
  WebApplication.TerminateAndRedirect(URLonTerminate);
end;

procedure TISFInsufficientRights.IWAppFormCreate(Sender: TObject);
//var
  //AccessRights : string;
begin
  try
    dmUser.SetFormData2('Insufficient AccessRights');
  except
  end;
end;

end.
