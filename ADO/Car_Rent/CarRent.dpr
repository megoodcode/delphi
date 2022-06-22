program CarRent;

uses
  Forms,
  car_rent in 'car_rent.pas' {frmCarRent},
  dbConnection in 'dbConnection.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmCarRent, frmCarRent);
  Application.Run;
end.
