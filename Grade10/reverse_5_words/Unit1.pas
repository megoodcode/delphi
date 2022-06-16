unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Button1: TButton;
    edtSentence: TEdit;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
var arrWords : array[1..5] of string;
sWord,sNewWord,sSentence : string;
iIndex,iCounter : integer;
begin

  // Initializing the array, to the values from the Edit Box
  arrWords[1] := Edit1.Text;
  arrWords[2] := Edit2.Text;
  arrWords[3] := Edit3.Text;
  arrWords[4] := Edit4.Text;
  arrWords[5] := Edit5.Text;

  //This For Loop goes from 1 to 5 for each of the 5 Words
  // So in the First Iteration it Works with the First Word from Edit1.Text which is
  // stores in arrWords[1]
  for iCounter := 1 to 5 do
  begin
    sNewWord := '';
    sWord := arrWords[iCounter];

    // This For Loop, Reverses the Word
    for iIndex := Length(sWord) downto 1 do
      sNewWord := sNewWord + sWord[iIndex];

    // Put Reversed Word Back into Array
    arrWords[iCounter] := sNewWord;
  end;

  sSentence := '';
  for iCounter := 1 to 5 do
    sSentence := sSentence + arrWords[iCounter] + ' ';

  edtSentence.Text := sSentence;
end;
end.
