program ProjTstForgotten;

uses
  Vcl.Forms,
  tstForgotton in 'tstForgotton.pas' {Form1},
  usr_constants in 'usr_constants.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
