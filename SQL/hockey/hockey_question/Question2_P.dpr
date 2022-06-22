program Question2_P;

uses
  Forms,
  ConnectDB_U in 'ConnectDB_U.pas',
  Question2_U in 'Question2_U.pas' {frmDBQuestion2};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmDBQuestion2, frmDBQuestion2);
  Application.CreateForm(TfrmDBQuestion2, frmDBQuestion2);
  Application.Run;
end.
