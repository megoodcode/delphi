unit dbConnection_u;

interface

uses
  Forms, SysUtils, Classes, DB, ADODB, StdCtrls, DBGrids, DBCtrls,
  Windows;

type
  TConnection = class(TObject)
  private
  public
    dbConnection: TADOConnection;
    dsrOne, dsrMany, dsrQRY: TDataSource;
    tblOne, tblMany: TADOTable;
    qrymovies : TADOQuery;
    procedure dbConnect;
    procedure dbDisconnect;
    procedure RestoreDatabase(var GridOne, GridMany, GridSQL: TDBGrid);
    procedure setupGrids(var GridOne, GridMany, GridSQL: TDBGrid);
    procedure DisplayAllprofiles(var QrX: TADOQuery; TableX: string);
    procedure ResetTables(GridOne, GridMany: TDBGrid);
    procedure runSQL(sSQL: string);
    procedure executeSQL(sSQL: string; GridOne, GridMany, GridSQL: TDBGrid);
    procedure setgridforsql(var gridsql : tdbgrid);
end;

var
  MyForm: Tform;

implementation

{ TConnection }
uses Controls, Dialogs;

const
  DBFileName: String = 'VideoClub.mdb';
  DBBackup: String = 'VideoClubBackup.mdb';
  ProfilesTable: string = 'Profile';
  VideosTable: string = 'Video';

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

  tblOne := TADOTable.Create(MyForm);
  tblOne.Connection := dbConnection;
  tblOne.TableName := ProfilesTable;
  tblOne.Open;
  tblOne.Sort := 'ProfileID ASC';
  tblOne.First;

  tblMany := TADOTable.Create(MyForm);
  tblMany.Connection := dbConnection;
  tblMany.TableName := VideosTable;
  tblMany.Open;
  tblMany.Sort := 'VideoTitle ASC';
  tblMany.First;

  qrymovies := TADOQuery.Create(MyForm);
  qrymovies.Connection := dbConnection;
  dsrOne := TDataSource.Create(MyForm);
  dsrOne.DataSet := tblOne;
  dsrMany := TDataSource.Create(MyForm);
  dsrMany.DataSet := tblMany;
  dsrQRY := TDataSource.Create(MyForm);
  dsrQRY.DataSet := qrymovies;

end;

procedure TConnection.dbDisconnect;
begin
  qrymovies.Free;
  qrymovies := nil;
  tblOne.Free;
  tblOne := nil;
  tblMany.Free;
  tblMany := nil;
  dbConnection.Close;
  dbConnection.Free;
  dbConnection := nil;
end;

procedure TConnection.DisplayAllProfiles(var QrX: TADOQuery; TableX: string);
begin
  QrX.Close;
  QrX.SQL.Text := Format('SELECT * FROM %s', [TableX]);
  QrX.Open;
end;

procedure TConnection.ResetTables(GridOne, GridMany: TDBGrid);
begin
  tblMany.Free;
  tblMany := nil;
  tblMany := TADOTable.Create(MyForm);
  tblMany.Connection := dbConnection;
  tblMany.TableName := VideosTable;
  tblMany.Open;
  tblMany.Sort := 'VideoTitle ASC';
  tblMany.First;
  dsrMany.DataSet := tblMany;
  GridMany.datasource := dsrMany;

  tblone.Free;
  tblone := nil;
  tblone := TADOTable.Create(MyForm);
  tblone.Connection := dbConnection;
  tblone.TableName := ProfilesTable;
  tblone.Open;
  tblone.Sort := 'ProfileID ASC';
  tblone.First;
  dsrOne.DataSet := tblone;
  GridOne.datasource := dsrOne;

end;

procedure TConnection.RestoreDatabase(var GridOne, GridMany, GridSQL: TDBGrid);
var
  sMsg: string;
  bfail: boolean;
begin
  // restore the original data in database.
  sMsg := 'Are you sure you want to reset the database?';
  if MessageDlg(sMsg, mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  begin
    try
      Screen.Cursor := crHourGlass;
      try
        dbConnection.Close;
        tblOne.Destroy;
        tblMany.Destroy;
        bfail := False;
        DeleteFile(PChar(DBFileName));
        CopyFile(PChar(DBBackup), PChar(DBFileName), bfail);
        dbConnect;
        setupGrids(GridOne, GridMany, GridSQL);
        tblOne.Open;
        tblOne.Sort := 'ProfileID ASC';
        tblMany.Open;
        tblMany.Sort := 'VideoTitle ASC';
      except
        on E: Exception do
        begin
          Showmessage(E.Message);
        end;
      end;
    finally
      Screen.Cursor := crDefault;
    end;
    MessageDlg('Database reset complete.', mtInformation, [mbOK], 0);
  end; // if
end;

procedure TConnection.runSQL(sSQL: string);
begin
  if length(sSQL) <> 0 then
  begin
    qrymovies.Close;
    qrymovies.SQL.Text := sSQL;
    qrymovies.Open;
  end
  else
    Showmessage('No SQL statement entered');
end;

procedure TConnection.executeSQL(sSQL: string; GridOne,GridMany,GridSQL: TDBGrid);
var srefresh : string;
begin
  if length(sSQL) <> 0 then
  begin
    qrymovies.Close;
    qrymovies.SQL.Text := sSQL;
    qrymovies.ExecSQL;
    Showmessage('Database changed.');
    if pos('Profile', ssql) <> 0 then
      begin
        qrymovies.Close;
        qrymovies.SQL.Text := 'Select * from Profile';
        qrymovies.Open;
      end
      else
      begin
        qrymovies.Close;
        qrymovies.SQL.Text := 'Select DatePublished, VideoTitle from Video order by DatePublished';
        qrymovies.Open;
      end;
    ResetTables(GridOne,GridMany);
    setupGrids(GridOne, GridMany, GridSQL);
 end
  else
    Showmessage('No SQL statement entered');
end;


procedure TConnection.setgridforsql(var gridsql: tdbgrid);
begin
  GridSQL.datasource := dsrQRY;
   gridsql.columns[0].width := 50;
    gridsql.columns[1].width := 50;
    gridsql.columns[2].width := 50;
end;

procedure TConnection.setupGrids(var GridOne, GridMany, GridSQL: TDBGrid);
begin
    GridOne.datasource := dsrOne;
    gridone.columns[0].width := 50;
    gridone.columns[1].width := 120;
    gridone.columns[2].width := 64;
    GridMany.datasource := dsrMany;
    gridmany.columns[0].width := 80;
    gridmany.columns[1].width := 300;
    gridmany.columns[2].width := 70;
    gridmany.columns[3].width := 40;
    gridmany.columns[4].width := 40;
    gridmany.columns[5].width := 40;
    gridmany.columns[6].width := 55;
    gridmany.columns[7].width := 50;
    GridSQL.datasource := dsrQRY;
    //gridsql.columns[0].width :=50;
    //gridsql.columns[1].width := 50;
    //gridsql.columns[2].width := 50;
end;

end.
