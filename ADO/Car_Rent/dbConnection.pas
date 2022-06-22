unit dbConnection;

interface

uses
  Forms,DB,ADODB;
type
  TConnection = class(TObject)

  public
    dbConnection : TADOConnection;
    procedure dbConnect;
  end;

var
  MyForm : Tform;

implementation

uses
  Controls, Dialogs;

const
  DBFileName : String = 'CarRent.mdb';

procedure TConnection.dbConnect;
begin
  dbConnection := TADOConnection.Create(MyForm);
  dbConnection.LoginPrompt := False;
  dbConnection.ConnectionString :=
    'Provider=Microsoft.Jet.OLEDB.4.0;' + 'Data Source=' + DBFileName + ';' +
    'Mode=ReadWrite;' + 'Persist Security Info=False;' +
    'Jet OLEDB:Database Password=*************';
  dbConnection.Provider := 'Provider=Microsoft.Jet.OLEDB.4.0;';
  dbConnection.Open;

end;

end.
