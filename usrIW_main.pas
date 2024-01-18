unit usrIW_main;

interface

uses
  Classes, SysUtils, IWAppForm, IWApplication, IWTypes;

type
  TIWForm1 = class(TIWAppForm)
  public
  end;

implementation

{$R *.dfm}


initialization
  TIWForm1.SetAsMainForm;

end.
