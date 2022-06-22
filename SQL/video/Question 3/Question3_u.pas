unit Question3_u;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls, ComCtrls, ExtCtrls, dbConnection_u, DB,
  ADODB;

type
  TQuestion_3 = class(TForm)
    dbgVideos: TDBGrid;
    btnRestoreDB: TButton;
    dbgProfiles: TDBGrid;
    dbgResults: TDBGrid;
    redDisplay: TRichEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    btnQuestion3_1_1: TButton;
    btnQuestion3_1_4: TButton;
    btnQuestion3_2_1: TButton;
    btnQuestion3_2_2: TButton;
    btnQuestion3_1_5: TButton;
    btnQuestion3_1_2: TButton;
    btnQuestion3_1_3: TButton;
    procedure btnQuestion3_1_1Click(Sender: TObject);
    procedure btnRestoreDBClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnQuestion3_1_2Click(Sender: TObject);
    procedure btnQuestion3_1_3Click(Sender: TObject);
    procedure btnQuestion3_1_4Click(Sender: TObject);
    procedure btnQuestion3_1_5Click(Sender: TObject);
    procedure btnQuestion3_2_2Click(Sender: TObject);
    procedure btnQuestion3_2_1Click(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Question_3: TQuestion_3;
  // --- Global variables provided ---
  // Provided code - do not change
  dbCONN: TConnection;
  qryDB: TADOQuery;
  tblProfiles, tblVideos: TADOTable;
  // Provided code - do not change

implementation

{$R *.dfm}
{$R+}

//=====================================================================
//  Question 3.1.1   4 marks
//=====================================================================
procedure TQuestion_3.btnQuestion3_1_1Click(Sender: TObject);
var
  sSQL1: String;
begin

  sSQL1 := '';

  // Provided code - do not change
  dbCONN.runSQL(sSQL1);
   // Provided code - do not change
end;


//=====================================================================
//  Question 3.1.2   9 marks
//=====================================================================
procedure TQuestion_3.btnQuestion3_1_2Click(Sender: TObject);
// Provided code - do not change/
var
  sline : string;
  sSQL2: String;
// Provided code - do not change/
begin
  // Provided code - do not change//////////////////////
  sline := inputbox('Enter Name of Profile','','DonDoe');
  // Provided code - do not change//////////////////////

  sSQL2 := '';

  // Provided code - do not change
  dbCONN.runSQL(sSQL2);
  // Provided code - do not change
end;

//=====================================================================
//  Question 3.1.3   4 marks
//=====================================================================
procedure TQuestion_3.btnQuestion3_1_3Click(Sender: TObject);
// Provided code - do not change
var
  sSQL3: String;
// Provided code - do not change
begin

  sSQL3 := '';

  // Provided code - do not change
  dbCONN.runSQL(sSQL3);
  // Provided code - do not change
end;

//=====================================================================
//  Question 3.1.4   4 marks
//=====================================================================
procedure TQuestion_3.btnQuestion3_1_4Click(Sender: TObject);
// Provided code - do not change
var
  sSQL4: String;
// Provided code - do not change
begin

  sSQL4 := '';

  // Provided code - do not change
  dbCONN.executeSQL(sSQL4,dbgProfiles,dbgVideos,dbgResults);
  // Provided code - do not change
end;

//=====================================================================
//  Question 3.1.5   3 marks
//=====================================================================
procedure TQuestion_3.btnQuestion3_1_5Click(Sender: TObject);
// Provided code - do not change
var
  sSQL5: String;
// Provided code - do not change
begin

  sSQL5 := '';

 // Provided code - do not change
 dbCONN.executeSQL(sSQL5, dbgProfiles,dbgVideos, dbgResults);
 // Provided code - do not change
end;


//=====================================================================
//  Question 3.2.1   7 marks
//=====================================================================
procedure TQuestion_3.btnQuestion3_2_1Click(Sender: TObject);
begin
/// enter your code below//


end;

//=====================================================================
//  Question 3.2.2   6 marks
//=====================================================================
procedure TQuestion_3.btnQuestion3_2_2Click(Sender: TObject);
begin
/// enter your code below//


end;




// Provided code - do not change
{$REGION DB CONNECTION}
 // Provided code - do not change
//Setup DB connections - DO NOT CHANGE!
procedure TQuestion_3.btnRestoreDBClick(Sender: TObject);
begin
  // Restores the Database
  dbCONN.RestoreDatabase(dbgProfiles, dbgVideos, dbgResults);
  reddisplay.Clear;
  // Formatting field datatypes
  tblProfiles := dbCONN.tblOne;
  tblVideos := dbCONN.tblMany;
  qryDB := dbCONN.qrymovies;
end;
 // Provided code - do not change
 // Provided code - do not change
procedure TQuestion_3.FormActivate(Sender: TObject);
var
  AnsW: string;
begin
  // Sets up the connection to database and opens the tables.
  dbCONN := TConnection.Create;
  dbCONN.dbConnect;
  tblProfiles := dbCONN.tblOne;
  tblVideos := dbCONN.tblMany;
  qryDB := dbCONN.qrymovies;
  dbCONN.setupGrids(dbgProfiles, dbgVideos, dbgResults);
 end;
// Provided code - do not change
procedure TQuestion_3.FormClose(Sender: TObject; var Action: TCloseAction);
begin // Disconnects from database and closes all open connections
  dbCONN.dbDisconnect;
end;
 // Provided code - do not change
{$ENDREGION}
// Provided code - do not change
end.
