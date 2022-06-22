program Question2_P;

uses
  Forms,
  Question2_U in 'Question2_U.pas' {frmQuestion2},
  uHousehold in 'uHousehold.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TfrmQuestion2, frmQuestion2);
  Application.Run;
end.
