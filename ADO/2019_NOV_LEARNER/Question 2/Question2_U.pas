// Enter your examination number here
unit Question2_U;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, ConnectDB_U, DB, ADODB, Grids,
  DBGrids, ComCtrls, DateUtils, DBCtrls;

type
  TfrmDBQuestion2 = class(TForm)
    pnlBtns: TPanel;
    bmbClose: TBitBtn;
    bmbRestoreDB: TBitBtn;
    pgcDBAdmin: TPageControl;
    tabsQ2ADO: TTabSheet;
    tabsQ2SQL: TTabSheet;
    btnQ2_1_1: TBitBtn;
    btnQ2_1_2: TBitBtn;
    btnQ2_1_3: TBitBtn;
    btnQ2_1_4: TBitBtn;
    bmbQ2_1_5: TBitBtn;
    grpQ221: TGroupBox;
    grpQ212: TGroupBox;
    btnQ2_2_1: TButton;
    btnQ2_2_2: TButton;
    grpresults: TGroupBox;
    dbgrdSQL: TDBGrid;
    grpQ223: TGroupBox;
    pnlQDB: TPanel;
    cmbQ2_1_3: TComboBox;
    lblQ2_2_1: TLabel;
    redQ2_2_2: TRichEdit;
    Label2: TLabel;
    dbgrdMany: TDBGrid;
    dbgrdONE: TDBGrid;
    procedure bmbRestoreDBClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnQ2_1_1Click(Sender: TObject);
    procedure btnQ2_1_2Click(Sender: TObject);
    procedure btnQ2_1_3Click(Sender: TObject);
    procedure btnQ2_1_4Click(Sender: TObject);
    procedure bmbQ2_1_5Click(Sender: TObject);
    procedure btnQ2_2_1Click(Sender: TObject);
    procedure btnQ2_2_2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
  public
  end;

var
  frmDBQuestion2: TfrmDBQuestion2;
  dbCONN: TConnection;

  // --- Global variables to be used ---
  tblTeams, tblPlayers: TADOTable;

implementation

{$R *.dfm}
{$R+}
// =====================================================
// Question 2.1 - SQL SECTION
// =====================================================
// {$REGION 'Question 2.1'}

// =====================================================
procedure TfrmDBQuestion2.btnQ2_1_1Click(Sender: TObject);
var
  sSQL1: String;
begin // Question 2.1.1
  sSQL1 := '';

  // Provided code
  dbCONN.RunSQL(sSQL1);
end;

// =====================================================
procedure TfrmDBQuestion2.btnQ2_1_2Click(Sender: TObject);
var
  sSQL2: String;
begin // Question 2.1.2
  sSQL2 := '';
  // Provided code
  dbCONN.RunSQL(sSQL2);
end;

// =====================================================
procedure TfrmDBQuestion2.btnQ2_1_3Click(Sender: TObject);
var
  sSQL3: String;
  sTeam: String;
begin // Question 2.1.3
  sTeam := cmbQ2_1_3.Text;
  sSQL3 := '';

  // Provided code
  dbCONN.RunSQL(sSQL3);
end;

// =====================================================
procedure TfrmDBQuestion2.btnQ2_1_4Click(Sender: TObject);
var
  sSQL4: String;

begin // Question 2.1.4
  sSQL4 := '';
  // Provided code
  dbCONN.RunSQL(sSQL4);
end;

// =====================================================
procedure TfrmDBQuestion2.bmbQ2_1_5Click(Sender: TObject);
var
  sSQL5: String;
  bChange: Boolean;
begin // Question 2.1.5

  sSQL5 := '';

  // Provided code.
  dbCONN.ExecuteSQL(sSQL5, bChange);
  if bChange then
    begin
      MessageDlg('Database updated', mtInformation, [mbOK], 0);
      tblTeams.Close;
      tblTeams.Open;
      dbCONN.setupGrids(dbgrdONE, dbgrdMany, dbgrdSQL);
    end;
end;
// =====================================================
// {$ENDREGION}

// =====================================================
// Question 2.2 - Data aware component section
// =====================================================
// {$REGION 'QUESTION 2.2'}

procedure TfrmDBQuestion2.btnQ2_2_1Click(Sender: TObject);
begin
  // Question 2.2.1


  // Provided code
  dbCONN.setupGrids(dbgrdONE, dbgrdMany, dbgrdSQL);
end;

// =====================================================
procedure TfrmDBQuestion2.btnQ2_2_2Click(Sender: TObject);
begin // Question 2.2.2
  // Provided code
  redQ2_2_2.Clear;
  redQ2_2_2.Paragraph.TabCount := 2;
  redQ2_2_2.Paragraph.Tab[0] := 70;
  redQ2_2_2.Paragraph.Tab[1] := 160;
  redQ2_2_2.Lines.Add('Team' + #9 + 'Coach' + #9 + 'Goalkeeper');

  // --------------------------------------------------
  // Type your code here:




  // Provided code
  dbCONN.setupGrids(dbgrdONE, dbgrdMany, dbgrdSQL);
end;

// {$ENDREGION}

// =====================================================
// {$REGION 'Provided code: Setup DB connections - DO NOT CHANGE!'}

// =====================================================
procedure TfrmDBQuestion2.bmbRestoreDBClick(Sender: TObject);
begin
  // Restore the Database
  dbCONN.RestoreDatabase;
  redQ2_2_2.Clear;
  dbCONN.setupGrids(dbgrdONE, dbgrdMany, dbgrdSQL);
end;

// =====================================================
procedure TfrmDBQuestion2.FormClose(Sender: TObject;

  var Action: TCloseAction);
begin // Disconnect from database and close all open connections
  dbCONN.dbDisconnect;
end;

procedure TfrmDBQuestion2.FormCreate(Sender: TObject);
begin
  CurrencyString := 'R';
end;

// =====================================================
procedure TfrmDBQuestion2.FormShow(Sender: TObject);
begin // Sets up the connection to database and opens the tables.
  dbCONN := TConnection.Create;
  dbCONN.dbConnect;
  tblTeams := dbCONN.tblOne;
  tblPlayers := dbCONN.tblMany;

  dbCONN.setupGrids(dbgrdONE, dbgrdMany, dbgrdSQL);
  pgcDBAdmin.ActivePageIndex := 0;
end;
// =====================================================
// {$ENDREGION}

end.
