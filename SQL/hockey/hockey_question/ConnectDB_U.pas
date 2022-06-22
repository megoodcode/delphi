unit ConnectDB_U;

interface

uses
  Forms, SysUtils, Classes, DB, ADODB, StdCtrls, DBGrids, DBCtrls;

type
  TConnection = class(TObject)
  private
  public
    dbConnection: TADOConnection;
    dsrOne, dsrMany, dsrQRYA, dsrQRYB: TDataSource;
    tblOne, tblMany: TADOTable;
    qryA, qryB: TADOQuery;

    procedure dbConnect;
    procedure dbDisconnect;
    procedure RestoreDatabase;
    // procedure getFieldValues(Tabel, Veld : string; var cboX : TCombobox);

    procedure setupGrids(var GridOne, GridMany, GridSQL: TDBGrid);
    procedure setupControls(var grp1, grpM: TGroupBox);

    procedure DisplayAllPlayers(var QrX: TADOQuery; TableX: string);

    procedure RunSQL(Statement: string);
    procedure ExecuteSQL(Statement: string; VAR Changed: Boolean);
  end;

var
  MyForm: Tform;

implementation

{ TConnection }
uses Controls, Dialogs;

const
  DBFileName: String = 'HockeyDB.mdb';
  OneTableName: string = 'tblTeams';
  ManyTableName: string = 'tblPlayers';
  BackupOneTblName: string = 'CopytblTeams';
  BackupManyTblName: string = 'CopytblPlayers';

procedure TConnection.dbConnect;
begin
  dbConnection := TADOConnection.Create(MyForm);
  dbConnection.LoginPrompt := False;
  dbConnection.ConnectionString :=
    'Provider=Microsoft.Jet.OLEDB.4.0;' + 'Data Source=' + DBFileName + ';' +
    'Mode=ReadWrite;' + 'Persist Security Info=False;' +
    'Jet OLEDB:Database Password=**********';
  dbConnection.Provider := 'Provider=Microsoft.Jet.OLEDB.4.0;';
  dbConnection.Open;

  tblOne := TADOTable.Create(MyForm);
  tblOne.Connection := dbConnection;
  tblOne.TableName := OneTableName;
  tblOne.Open;
  tblOne.Sort := 'TeamName ASC';
  tblOne.First;

  tblMany := TADOTable.Create(MyForm);
  tblMany.Connection := dbConnection;
  tblMany.TableName := ManyTableName;
  tblMany.Open;
  tblMany.Sort := 'PlayerID ASC';
  tblMany.First;

  qryA := TADOQuery.Create(MyForm);
  qryA.Connection := dbConnection;
  qryB := TADOQuery.Create(MyForm);
  qryB.Connection := dbConnection;

  dsrOne := TDataSource.Create(MyForm);
  dsrOne.DataSet := tblOne;

  dsrMany := TDataSource.Create(MyForm);
  dsrMany.DataSet := tblMany;

  dsrQRYA := TDataSource.Create(MyForm);
  dsrQRYA.DataSet := qryA;

  dsrQRYB := TDataSource.Create(MyForm);
  dsrQRYB.DataSet := qryB;
end;

procedure TConnection.dbDisconnect;
begin
  qryA.Free;
  qryA := nil;
  qryB.Free;
  qryB := nil;
  tblOne.Free;
  tblOne := nil;
  tblMany.Free;
  tblMany := nil;
  dbConnection.Close;
  dbConnection.Free;
  dbConnection := nil;
end;

procedure TConnection.DisplayAllPlayers(var QrX: TADOQuery; TableX: string);
begin
  QrX.Close;
  QrX.SQL.Text := Format('SELECT * FROM %s', [TableX]);
  QrX.Open;
end;

procedure TConnection.ExecuteSQL(Statement: string; VAR Changed: Boolean);
begin
  if length(Statement) <> 0 then
  begin
    qryA.Close;
    qryA.SQL.Text := Statement;
    qryA.ExecSQL;
    DisplayAllPlayers(qryA, 'tblTeams');
    Changed := True;
  end
  else
  begin
    MessageDlg('ERROR: No SQL statement!', mtError, [mbOk], 0);
    Changed := False;
  end;
end;

procedure TConnection.RestoreDatabase;
var
  sMsg: string;
begin
  // restore the orginal data in database.
  sMsg := 'Are you sure you want to reset the database?';
  if MessageDlg(sMsg, mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  begin
    try
      Screen.Cursor := crHourGlass;
      try
        tblOne.Close;
        tblMany.Close;
        qryA.Close;
        qryA.SQL.Clear;
        qryB.Close;
        qryB.SQL.Clear;
        qryA.SQL.Text := Format('DELETE * FROM %s', [ManyTableName]);
        qryA.ExecSQL;
        qryA.Close;
        qryB.SQL.Text := Format('DELETE * FROM %s', [OneTableName]);
        qryB.ExecSQL;
        qryB.Close;
        qryB.SQL.Text := Format('INSERT INTO %s SELECT * FROM %s',
          [OneTableName, BackupOneTblName]);
        qryB.ExecSQL;
        qryB.Close;
        qryA.SQL.Text := Format('INSERT INTO %s SELECT * FROM %s',
          [ManyTableName, BackupManyTblName]);
        qryA.ExecSQL;
        qryA.Close;

        tblOne.Open;
        tblOne.Sort := 'TeamName ASC';
        tblMany.Open;
        tblMany.Sort := 'PlayerID ASC';

      except
        on E: Exception do
        begin
          ShowMessage(E.Message);
        end;
      end;
    finally
      Screen.Cursor := crDefault;
    end;
    MessageDlg('Database reset complete.', mtInformation, [mbOk], 0);
  end; // if
end;

procedure TConnection.RunSQL(Statement: string);
begin
  if length(Statement) <> 0 then
  begin
    qryA.Close;
    qryA.SQL.Text := Statement;
    qryA.Open;
  end
  else
  begin
    MessageDlg('ERROR: No SQL statement.', mtError, [mbOk], 0);
  end;
end;

procedure TConnection.setupControls(var grp1, grpM: TGroupBox);
begin
  grp1.Caption := tblOne.TableName;
  grpM.Caption := tblMany.TableName;
end;

procedure TConnection.setupGrids(var GridOne, GridMany, GridSQL: TDBGrid);
begin
  GridOne.DataSource := dsrOne;
  GridMany.DataSource := dsrMany;
  GridSQL.DataSource := dsrQRYA;

  GridOne.Columns[0].Width := 110;
  GridOne.Columns[1].Width := 190;
  GridOne.Columns[2].Width := 200;
  GridOne.Columns[3].Width := 200;
  GridOne.Width := 800;

  GridMany.Columns[0].Width := 80;
  GridMany.Columns[1].Width := 110;
  GridMany.Columns[2].Width := 120;
  GridMany.Columns[3].Width := 120;
  GridMany.Columns[4].Width := 90;
  GridMany.Columns[5].Width := 80;
  GridMany.Columns[6].Width := 100;
  GridMany.Width := 800;
   tblOne.First;
   tblMany.First;
end;

end.
