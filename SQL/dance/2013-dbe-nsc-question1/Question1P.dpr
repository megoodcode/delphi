program Question1P;

uses
  Forms,
  Question1U in 'Question1U.pas' {frmQ1};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TfrmQ1, frmQ1);
  Application.Run;
end.
