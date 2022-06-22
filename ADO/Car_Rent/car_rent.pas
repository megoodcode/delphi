unit car_rent;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,dbConnection, Grids, DBGrids, ComCtrls, StdCtrls, DB, ADODB, ExtCtrls,
  Buttons, Menus;

type
  TfrmCarRent = class(TForm)
    dbgRentals: TDBGrid;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    grpNavigation: TGroupBox;
    btnRentalsFirst: TButton;
    btnRentalsLast: TButton;
    btnRentalsNext: TButton;
    btnRentalsPrior: TButton;
    MainMenu1: TMainMenu;
    File1: TMenuItem;
    RestoreDatabase1: TMenuItem;
    Close1: TMenuItem;
    redOutput: TRichEdit;
    btnInsert: TButton;
    grpSorting: TGroupBox;
    lblSort: TLabel;
    cmbRentalColumns: TComboBox;
    chkAsc: TCheckBox;
    chkDesc: TCheckBox;
    btnPrint: TButton;
    btnTotalStartKm: TButton;
    btnTotalRecords: TButton;
    btnRecordCount: TButton;
    grpInsert: TGroupBox;
    lblVechileID: TLabel;
    edtVehicle_ID: TEdit;
    lblDriver_ID: TLabel;
    edtDriver_ID: TEdit;
    edtStart_Km: TEdit;
    edtStop_Km: TEdit;
    edtStart_Date: TEdit;
    edtStop_Date: TEdit;
    lblStart_Km: TLabel;
    lblStop_Km: TLabel;
    lblStart_Date: TLabel;
    lblStop_Date: TLabel;
    btnInsertHardCode: TButton;
    lblRental_ID: TLabel;
    edtRental_ID: TEdit;
    btnEdit: TButton;
    btnDelete: TButton;
    btnDeleteYearTwenty: TButton;
    procedure FormShow(Sender: TObject);
    procedure connect;
    procedure restoreDatabase;
    procedure btnRentalsFirstClick(Sender: TObject);
    procedure btnRentalsLastClick(Sender: TObject);
    procedure btnRentalsNextClick(Sender: TObject);
    procedure btnRentalsPriorClick(Sender: TObject);
    procedure RestoreDatabase1Click(Sender: TObject);
    procedure Close1Click(Sender: TObject);
    procedure btnInsertClick(Sender: TObject);
    procedure cmbRentalColumnsChange(Sender: TObject);
    procedure btnPrintClick(Sender: TObject);
    procedure btnTotalStartKmClick(Sender: TObject);
    procedure btnTotalRecordsClick(Sender: TObject);
    procedure btnRecordCountClick(Sender: TObject);
    procedure btnInsertHardCodeClick(Sender: TObject);
    procedure updateTextBoxes;
    procedure dbgRentalsCellClick(Column: TColumn);
    procedure btnEditClick(Sender: TObject);
    procedure btnDeleteClick(Sender: TObject);
    procedure btnDeleteYearTwentyClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCarRent: TfrmCarRent;

  // DB SQL component
  sSQL : string;

  // Database will automaticall connect
  // These are the two tables that you work with
  tblRentals : TADOTable;
  tblVehicles : TADOTable;
  tblRates : TADOTable;

implementation

{$R *.dfm}

//==============================================================================
//  When First, Next, Prior or Last is used we will update the corresponding
//  records values to the text boxes
//==============================================================================

procedure TfrmCarRent.updateTextBoxes;
begin
  edtRental_ID.Text := inttostr(tblRentals['Rental_ID']);
  edtVehicle_ID.Text := inttostr(tblRentals['Vehicle_ID']);
  edtDriver_ID.Text := inttostr(tblRentals['Driver_ID']);
  edtStart_Km.Text := inttostr(tblRentals['Start_Km']);
  edtStop_Km.Text := inttostr(tblRentals['Stop_Km']);
  edtStart_Date.Text := datetostr(tblRentals['Start_Date']);
  edtStop_Date.Text := datetostr(tblRentals['Stop_Date']);
end;


//==============================================================================
//  Edit
//==============================================================================
procedure TfrmCarRent.btnDeleteClick(Sender: TObject);
begin
  tblRentals.Delete;
  redOutput.Clear;
  redOutput.Lines.Add('Record Delete Successfully');
end;

procedure TfrmCarRent.btnDeleteYearTwentyClick(Sender: TObject);
var iCount : integer;
begin
  iCount := 0;
  tblRentals.First;
  while not tblRentals.Eof do
  begin
      if pos('2020',datetostr(tblRentals['Start_Date'])) > 0 then
      begin
          tblRentals.Delete;
          inc(iCount);
          tblRentals.First;
      end;
      tblRentals.Next;
  end;
  redOutput.Lines.Add(inttostr(iCount) + ' Records Deleted');
end;

procedure TfrmCarRent.btnEditClick(Sender: TObject);
begin
  tblRentals.Edit;
    tblRentals['Vehicle_ID'] := strtoint(edtVehicle_ID.Text);
    tblRentals['Driver_ID'] := strtoint(edtDriver_ID.Text);
    tblRentals['Start_Km'] := strtoint(edtStart_Km.Text);
    tblRentals['Stop_Km'] := strtoint(edtStop_Km.Text);
    tblRentals['Start_Date'] := strToDate(edtStart_Date.Text);
    tblRentals['Stop_Date'] := strToDate(edtStop_Date.Text);
  tblRentals.Post;

  redOutput.Clear;
  redOutput.Lines.Add('New Record Succesfully Edited');
end;

//==============================================================================
//  Insert
//==============================================================================

procedure TfrmCarRent.btnInsertClick(Sender: TObject);
begin

try
  tblRentals.Insert;
    tblRentals['Vehicle_ID'] := strtoint(edtVehicle_ID.Text);
    tblRentals['Driver_ID'] := strtoint(edtDriver_ID.Text);
    tblRentals['Start_Km'] := strtoint(edtStart_Km.Text);
    tblRentals['Stop_Km'] := strtoint(edtStop_Km.Text);
    tblRentals['Start_Date'] := strToDate(edtStart_Date.Text);
    tblRentals['Stop_Date'] := strToDate(edtStop_Date.Text);
  tblRentals.Post;

  redOutput.Clear;
  redOutput.Lines.Add('New Record Succesfully Inserted');
except
  On E : Exception do
    ShowMessage(E.ClassName+' error raised, with message : '+E.Message);
end;

end;

//==============================================================================
// Navigation
//==============================================================================
{$region navigation}
procedure TfrmCarRent.btnInsertHardCodeClick(Sender: TObject);
begin

  tblRentals.Insert;
  tblRentals['Vehicle_ID'] := 2;
  tblRentals['Driver_ID'] := 3;
  tblRentals['Start_Km'] := 10000;
  tblRentals['Stop_Km'] := 15000;
  tblRentals['Start_Date'] := '2020/04/19';
  tblRentals['Stop_Date'] := '2020/05/20';
  tblRentals.Post;

  redOutput.Clear;
  redOutput.Lines.Add('New Record Succesfully Inserted');
end;

//==============================================================================
// Print : Responsible for outputing values to the richEdit
// We should have written a procedure for this purpose, as
// in the case of the UpdateTextBoxes. However we call this procedure
// by using btnPrint.Click;
//==============================================================================
procedure TfrmCarRent.btnPrintClick(Sender: TObject);
begin
  redOutput.Lines.Clear;
  redOutput.Paragraph.TabCount := 1;
  redOutput.Paragraph.Tab[0] := 80;

  redOutput.Lines.Add('Rental_ID:' + #9 +  inttostr(tblRentals['Rental_ID']));
  redOutput.Lines.Add('Vehicle_ID:' + #9 + inttostr(tblRentals['Vehicle_ID']));
  redOutput.Lines.Add('Driver_ID:' + #9 + inttostr(tblRentals['Driver_ID']));
  redOutput.Lines.Add('Start_Km:' + #9 +  inttostr(tblRentals['Start_Km']));
  redOutput.Lines.Add('Stop_Km:' + #9 + inttostr(tblRentals['Stop_Km']));
  redOutput.Lines.Add('Start_Date:' + #9 + datetostr(tblRentals['Start_Date']));
  redOutput.Lines.Add('Stop_Date:' + #9 + datetostr(tblRentals['Stop_Date']));

end;

procedure TfrmCarRent.btnRecordCountClick(Sender: TObject);
begin
  redOutput.Clear;
  redOutput.Lines.Add('TotalRecords = ' + inttostr(tblRentals.RecordCount));
end;

procedure TfrmCarRent.btnRentalsFirstClick(Sender: TObject);
begin
  tblRentals.First;
  btnPrint.Click;
  updateTextBoxes;
end;

procedure TfrmCarRent.btnRentalsLastClick(Sender: TObject);
begin
  tblRentals.Last;
  btnPrint.Click;
  updateTextBoxes;
end;

procedure TfrmCarRent.btnRentalsNextClick(Sender: TObject);
begin
  tblRentals.Next;
  btnPrint.Click;
  updateTextBoxes;
end;

procedure TfrmCarRent.btnRentalsPriorClick(Sender: TObject);
begin
  tblRentals.Prior;
  btnPrint.Click;
  updateTextBoxes;
end;

procedure TfrmCarRent.btnTotalRecordsClick(Sender: TObject);
var iTotalRecords : integer;
begin
  iTotalRecords := 0;
  tblRentals.First;
  while not tblRentals.Eof do
  begin
    inc(iTotalRecords);
    tblRentals.Next;
  end;
  redOutput.Clear;
  redOutput.Lines.Add('TotalRecords = ' + inttostr(iTotalRecords));
end;

procedure TfrmCarRent.btnTotalStartKmClick(Sender: TObject);
var iSum : integer;
begin
  iSum := 0;
  tblRentals.First;
  while not tblRentals.Eof do
  begin
    iSum := iSum  + tblRentals['Start_Km'];
    tblRentals.Next;
  end;

  redOutput.Clear;
  redOutput.Lines.Add('Total Start_Km = ' + inttostr(iSum) + ' Kms');

end;

{$endregion}


//==============================================================================
// Sorting
//==============================================================================
procedure TfrmCarRent.cmbRentalColumnsChange(Sender: TObject);
var sColName,sOrder : string;
begin

  // Get the selected column to sort the table by
    sColName := cmbRentalColumns.Items[cmbRentalColumns.ItemIndex];

  //  Alternate way to get the value from the combobox
  //  sColName := cmbRentalColumns.Text;

  // get the order
  if chkAsc.Checked = True then
    sOrder := 'ASC'
  else
    sOrder := 'DESC';

  // run the sort query
  tblRentals.Sort := sColName + ' ' + sOrder;

  // output the query to the richedit
  redOutput.Clear;
  redOutput.SelAttributes.Style := [fsBold,fsUnderline];
  redOutput.Lines.Add('Sort Table');
  redOutput.Lines.Add('tblRentals.Sort := '+ sColName + ' ' + sOrder);

end;

//==============================================================================
// Supplied Connection Code - DO NOT CHANGE.
// Database will automatically connect when run
//==============================================================================

{$region Connect}

var
  dbConn : TConnection;
  qryCarRent : TADOQuery;

  dsrRentals : TDataSource;
  dsrVehicles : TDataSource;
  dsrRates : TDataSource;

procedure TfrmCarRent.FormDestroy(Sender: TObject);
begin
    restoreDatabase;
end;

procedure TfrmCarRent.FormShow(Sender: TObject);
begin
  dbConn := TConnection.Create;
  dbConn.dbConnect;
  connect;
  pagecontrol1.ActivePageIndex := 0;

end;

procedure TfrmCarRent.connect;
var i : integer;
begin
  tblRentals := TADotable.Create(frmCarRent);
  tblRentals.Connection := dbConn.dbConnection;
  tblRentals.TableName := 'tblRentals';
  tblRentals.Open;

  dsrRentals := TDataSource.Create(frmCarRent);
  dsrRentals.DataSet := tblRentals;
  dbgRentals.DataSource := dsrRentals;

  // populate comboxbox with fieldnames form the database
  tblRentals.Fields.GetFieldNames(cmbRentalColumns.Items);

  // set sorting checkbox to default asc
  chkAsc.Checked := true;

end;

//==============================================================================
// When the User selects a record by clicking on the dbGrid, then update
// our textboxes to show the record values
//==============================================================================
procedure TfrmCarRent.dbgRentalsCellClick(Column: TColumn);
begin
  updateTextBoxes;
end;

procedure TfrmCarRent.restoreDatabase;
var
  bFail: boolean;
begin
  try
    dbConn.dbConnection.Close;

    tblRentals.Destroy;

    DeleteFile('CarRent.mdb');
    CopyFile('CarRentBackup.mdb','CarRent.mdb',bFail);

    dbConn.dbConnect;
    connect;
  except
    on E : Exception do
      ShowMessage(E.ClassName+' error raised, with message : '+E.Message);
end;
end;

procedure TfrmCarRent.RestoreDatabase1Click(Sender: TObject);
begin
  try
    restoreDatabase;
  except
    on E : Exception do
    begin
    ShowMessage(E.ClassName+' error raised, with message : '+E.Message);
    Exit;
    end;
  end;
  MessageDlg('Database Restored Successfully',mtInformation,[mbOk],0);
end;

procedure TfrmCarRent.Close1Click(Sender: TObject);
begin
  Application.Terminate;
end;

{$endregion}

end.
