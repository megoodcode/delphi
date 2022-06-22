program Question3_P;

uses
  Forms,
  Question3_U in 'Question3_U.pas' {frmQuestion3},
  Player_U in 'Player_U.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmQuestion3, frmQuestion3);
  Application.Run;
end.
