program Project1;

uses
  Forms,
  Unit1 in 'Unit1.pas' {Investment};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TInvestment, Investment);
  Application.Run;
end.
