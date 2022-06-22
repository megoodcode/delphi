program Question1P;

uses
  Forms,
  Question1U in 'Question1U.pas' {frmRec};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TfrmRec, frmRec);
  Application.Run;
end.
