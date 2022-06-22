program Question3_p;

uses
  Forms,
  Question3_u in 'Question3_u.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
