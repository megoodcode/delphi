program Question2P;

uses
  Forms,
  Question2U in 'Question2U.pas' {frmQ2},
  uQuest2 in 'uQuest2.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TfrmQ2, frmQ2);
  Application.Run;
end.
