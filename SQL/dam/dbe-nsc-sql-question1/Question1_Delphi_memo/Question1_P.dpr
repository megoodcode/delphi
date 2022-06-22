program Question1_P;

uses
  Forms,
  Question1_U in 'Question1_U.pas' {frmRec};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TfrmRec, frmRec);
  Application.Run;
end.
