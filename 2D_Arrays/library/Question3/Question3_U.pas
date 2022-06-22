//Enter your examination number here

unit Question3_U;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, ComCtrls, pngimage;

type
  TfrmQ3 = class(TForm)
    redOutputQ3: TRichEdit;
    grpQ3_2: TGroupBox;
    btnQ3_2: TButton;
    grpQ3_1: TGroupBox;
    cmbStaff: TComboBox;
    Panel1: TPanel;
    Image1: TImage;
    procedure btnQ3_2Click(Sender: TObject);
    procedure Display;
    procedure cmbStaffChange(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

  // ===========================================================================
  // Provided code: Declarations
  // ===========================================================================
const
  iMaxRow = 3;
  iMaxCol = 6;

var
  frmQ3: TfrmQ3;
  arrStaff: array [1 .. 6] of String = (
    'Trevor',
    'Nkosi',
    'Tamzin',
    'Anette',
    'Bongi',
    'Simon'
  );

  arrPlacements: array [1 .. 3, 1 .. 6] of String =
    (('Nkosi', 'Simon','Anette', 'Bongi', 'Tamzin', 'Trevor'),
     ('Anette', 'Tamzin','Simon', 'Trevor', 'Bongi', 'Nkosi'),
     ('Bongi', 'XXXXX', 'Trevor','Nkosi', 'Nkosi', 'Tamzin'));

implementation

{$R *.dfm}

// ===========================================================================
// Provided code:  Procedure Display
// ===========================================================================
procedure TfrmQ3.Display;
Var
  sLine: String;
  iCnt, iR, iC: integer;
begin
  redOutputQ3.Clear;
  sLine := '' + #9#9;
  for iCnt := 1 to iMaxCol do
  begin
    sLine := sLine + 'Day ' + IntToStr(iCnt) + #9#9;
  end;
  redOutputQ3.Lines.Add(sLine);

  for iR := 1 to iMaxRow do
  begin
    sLine := 'Library ' + IntToStr(iR) + #9;
    for iC := 1 to iMaxCol do
    begin
      sLine := sLine + arrPlacements[iR, iC] + #9#9;
    end;
    redOutputQ3.Lines.Add(sLine);
  end;
end;

procedure TfrmQ3.FormActivate(Sender: TObject);
Begin
  Display;
end;

//=========================================================================
// Question 3.1
// ===========================================================================
procedure TfrmQ3.cmbStaffChange(Sender: TObject);

begin
  //Question 3.1
end;

// ===========================================================================
// Question 3.2
// ===========================================================================
procedure TfrmQ3.btnQ3_2Click(Sender: TObject);

begin
  //Question 3.2
end;


end.
