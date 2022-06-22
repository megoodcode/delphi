program Question2_p;

uses
  Forms,
  Question2_u in 'Question2_u.pas' {Question2},
  VideoClass in 'VideoClass.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TQuestion2, Question2);
  Application.Run;
end.
