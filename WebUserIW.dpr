program WebUserIW;

uses
  Forms,
  IWMain,
  ServerController in 'ServerController.pas' {IWServerController: TIWServerController},
  usrIW_dm in 'usrIW_dm.pas' {dmUser: TDataModule},
  usr_uRegister in 'usr_uRegister.pas' {ISFRegister: TIWAppForm},
  usr_uDBInterface in 'usr_uDBInterface.pas',
  usr_uMain in 'usr_uMain.pas',
  usr_uLogin in 'usr_uLogin.pas' {ISFLogin: TIWAppForm},
  usr_frTopBar in 'usr_frTopBar.pas' {ISFTopBar: TFrame},
  usr_frProductTree in 'usr_frProductTree.pas' {ISFProductTree: TFrame};

{$R *.res}

begin
  Application.Initialize;
  Application.Title := 'UserControl';
  Application.CreateForm(TformIWMain, formIWMain);
  Application.Run;
end.
