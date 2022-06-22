unit question4_U;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls;

type
  TfrmQuestion4 = class(TForm)
    Label1: TLabel;
    redDisplay: TRichEdit;
    Label2: TLabel;
    btnload: TButton;
    btnRemoveDuplicates: TButton;
    btnMasterPlayers: TButton;
    procedure btnloadClick(Sender: TObject);
    procedure Display;
    procedure btnRemoveDuplicatesClick(Sender: TObject);
    procedure btnMasterPlayersClick(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmQuestion4: TfrmQuestion4;
  arrNames: array [1..50] of String;
  arrScores: array [1..50] of Integer;
  iCount: integer = 0;

  arrMasters: array[1..30] of String;
  iMastCount: Integer;

implementation

{$R *.dfm}


procedure TfrmQuestion4.btnRemoveDuplicatesClick(Sender: TObject);

begin
   // Question 4.1 Remove lower duplicates

     Display;
end;


procedure TfrmQuestion4.btnMasterPlayersClick(Sender: TObject);

begin
  // Question 4.2 Get Masters and display sorted list

end;



// Supplied Code

procedure TfrmQuestion4.btnloadClick(Sender: TObject);
var
  tScoresFile: TextFile;
  sLine : String;
  p: Integer;
begin
   iCount :=0;
   AssignFile(tScoresFile, 'Scores.txt');
   Reset(tScoresFile);
   while NOT EOF(tScoresFile) do
    begin
      Inc(iCount);
      Readln(tScoresFile, sLine);
      p := Pos(',',sLine);
      arrNames[iCount] := Copy(sLine,1,p-1);
      arrScores[iCount] := StrToInt(Copy(sLine,p+1));
    end;
    CloseFile(tScoresFile);
    Display;
end;


procedure TfrmQuestion4.display;
var
  i : integer;
begin
   redDisplay.clear;
   redDisplay.Paragraph.TabCount := 1;
   redDisplay.Paragraph.Tab[0] := 120;
   redDisplay.Lines.Add('NAME' + #9 + 'SCORE');
   for i := 1 to iCount do
    begin
      redDisplay.Lines.Add(arrNames[i] + #9 + IntToStr(arrScores[i]));
    end;
end;

end.
