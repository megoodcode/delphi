program Project1;

uses
  Forms,
  Unit1 in 'Unit1.pas' {Boolean_Expressions};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TBoolean_Expressions, Boolean_Expressions);
  Application.Run;
end.
