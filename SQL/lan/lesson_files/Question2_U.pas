unit question2_U;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, StdCtrls, Grids, DBGrids, Mask, DBCtrls, ComCtrls, DateUtils,
  dbConnection_U;

type
  TfrmQuestion2 = class(TForm)
    pgcQst2: TPageControl;
    tsQst21: TTabSheet;
    tsQst22: TTabSheet;
    Label1: TLabel;
    Label2: TLabel;
    Label4: TLabel;
    Label6: TLabel;
    dbgPlayers: TDBGrid;
    dbgGames: TDBGrid;
    redDisplay: TRichEdit;
    btnDomainUsersCount: TButton;
    btnChangeScore: TButton;
    btnAddRiver: TButton;
    btnRestore: TButton;
    Label3: TLabel;
    Label5: TLabel;
    dbgSQL: TDBGrid;
    procedure connect;
    procedure FormShow(Sender: TObject);
    procedure btnDomainUsersCountClick(Sender: TObject);
    procedure btnChangeScoreClick(Sender: TObject);
    procedure btnAddRiverClick(Sender: TObject);
    procedure btnRestoreClick(Sender: TObject);
    procedure btnSQLqst211Click(Sender: TObject);
    procedure btnSQLqst212Click(Sender: TObject);
    procedure btnSQLqst213Click(Sender: TObject);
    procedure btnSQLqst214Click(Sender: TObject);
    procedure btnSQLqst215Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmQuestion2: TfrmQuestion2;

  // Databse will automatically connect
  // These are the two tables that you work with
   tblPlayers: TADOtable;
   tblGames: TADOtable;

  // DB SQL component
  qryLanFans: TADOQuery;
  sSQL : String;

implementation

{$R *.dfm}

//==============================================================================
//   QUESTION 2.1 - SQL
//==============================================================================

procedure TfrmQuestion2.btnSQLqst211Click(Sender: TObject);

begin
   // Question 2.1.1
   sSQL := '';

   qryLanFans.SQL.Clear;
   qryLanFans.SQL.ADD(sSQL);
   qryLanFans.Open;
end;


procedure TfrmQuestion2.btnSQLqst212Click(Sender: TObject);
begin
   // Question 2.1.2
   sSQL := '';

   qryLanFans.SQL.Clear;
   qryLanFans.SQL.ADD(sSQL);
   qryLanFans.Open;
end;

procedure TfrmQuestion2.btnSQLqst213Click(Sender: TObject);
begin
   // Question 2.1.3
    sSQL :=('');

   qryLanFans.SQL.Clear;
   qryLanFans.SQL.ADD(sSQL);
   qryLanFans.Open;
end;

procedure TfrmQuestion2.btnSQLqst214Click(Sender: TObject);
begin
   // Question 2.1.4
   sSQL := '';
   qryLanFans.SQL.Clear;
   qryLanFans.SQL.ADD(sSQL);
   qryLanFans.Open;
end;

procedure TfrmQuestion2.btnSQLqst215Click(Sender: TObject);
begin
   // Question 2.1.5
    sSQL := '';

   qryLanFans.SQL.Clear;
   qryLanFans.SQL.ADD(sSQL);
   qryLanFans.ExecSQL;
   showMessage(IntToStr(qryLanFans.RowsAffected) + ' record/s added.');
end;


//==============================================================================
//   QUESTION 2.2 - Database Code Constructs
//==============================================================================

procedure TfrmQuestion2.btnDomainUsersCountClick(Sender: TObject);
var
  sDomain: String;
  iCount: Integer;
begin
  // Provided
  iCount := 0;
  redDisplay.Clear;
  redDisplay.Paragraph.TabCount := 1;
  redDisplay.Paragraph.Tab[0] := 90;

  // 2.2.1 Players e-mail domain count

end;


procedure TfrmQuestion2.btnChangeScoreClick(Sender: TObject);
begin
   // 2.2.2 Change Score

end;


procedure TfrmQuestion2.btnAddRiverClick(Sender: TObject);

begin
  //  2.2.3 Add Game

end;

{$region Connect}
//==============================================================================
// Supplied Connection Code - DO NOT CHANGE.
// Database will automatically connect when run
//==============================================================================

var
      dbLanFans: TConnection;
      dsrPlayers: TDataSource;
      dsrGames: TDataSource;
      dsrSQL: TDataSource;


procedure TfrmQuestion2.FormShow(Sender: TObject);
begin
  dbLanFans := TConnection.create;
  dbLanFans.dbConnect;
  connect;
  pgcQst2.ActivePageIndex := 0;
end;

procedure TfrmQuestion2.connect;
begin

   tblPlayers := TADOtable.Create(frmQuestion2);
   tblPlayers.Connection := dbLanFans.dbConnection;
   tblPlayers.TableName := 'tblPlayers';
   tblPlayers.Open;

   tblGames := TADOtable.Create(frmQuestion2);
   tblGames.Connection := dbLanFans.dbConnection;
   tblGames.TableName := 'tblGames';
   tblGames.Open;

   dsrPlayers := TdataSource.Create(frmQuestion2);
   dsrPlayers.DataSet := tblPlayers;
   dbgPlayers.DataSource := dsrPlayers;

   dsrGames := TdataSource.Create(frmQuestion2);
   dsrGames.DataSet := tblGames;
   dbgGames.DataSource := dsrGames;

   qryLanFans := TADOQuery.Create(frmQuestion2);
   qryLanFans.Connection := dbLanFans.dbConnection;

   dsrSQL := TdataSource.Create(frmQuestion2);
   dsrSQL.DataSet := qryLanFans;
   dbgSQL.DataSource := dsrSQL;
end;


// Supplied Connection Code - DO NOT CHANGE.
procedure TfrmQuestion2.btnRestoreClick(Sender: TObject);
var
  bFail: boolean;
begin
  dbLanFans.dbConnection.close;
  tblPlayers.Destroy;
  tblGames.Destroy;

  DeleteFile('LanFans.mdb');
  CopyFile('LanFansBackup.mdb','LanFans.mdb',bFail);

  dbLanFans.dbConnect;
  connect;
end;



{$endregion}

end.
