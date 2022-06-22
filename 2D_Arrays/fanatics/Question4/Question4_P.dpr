program question4_P;

uses
  Forms,
  question4_U in 'question4_U.pas' {frmQuestion4};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmQuestion4, frmQuestion4);
  Application.Run;
end.
