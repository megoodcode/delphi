program Question3_p;

uses
  Forms,
  Question3_u in 'Question3_u.pas' {Question_3};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TQuestion_3, Question_3);
  Application.Run;
end.
