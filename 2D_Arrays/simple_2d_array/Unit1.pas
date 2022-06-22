unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls;

type
  TForm1 = class(TForm)
    lblTitle: TLabel;
    redOutput: TRichEdit;
    btnInitialize: TButton;
    btnPrintArray: TButton;
    btnPrintElements: TButton;
    btnAddRow: TButton;
    btnAddColumns: TButton;
    procedure btnPrintArrayClick(Sender: TObject);
    procedure btnInitializeClick(Sender: TObject);
    procedure btnPrintElementsClick(Sender: TObject);
    procedure btnAddRowClick(Sender: TObject);
    procedure btnAddColumnsClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  var arrNums : array[1..3,1..4] of integer;

implementation

{$R *.dfm}

procedure TForm1.btnAddColumnsClick(Sender: TObject);
var row,col,colSum : integer;
begin
  for col := 1 to 4 do
  begin
    colSum := 0;
    for row := 1 to 3 do
    begin
      colSum := arrNums[row,col] + colSum;
    end;
    redOutput.Lines.Add('Sum of col:' + inttostr(col) + ' = ' + inttostr(colSum));
  end;
end;

procedure TForm1.btnAddRowClick(Sender: TObject);
var row,col,rowSum : integer;
begin
  for row := 1 to 3 do
  begin
    rowSum  := 0;
    for col := 1 to 4 do
    begin
      rowSum := arrNums[row,col] + rowSum;
    end;
    redOutput.Lines.Add('Sum of row:' + inttostr(row) + ' = ' + inttostr(rowSum));
  end;
end;

procedure TForm1.btnInitializeClick(Sender: TObject);
var row,col : integer;
begin
  for row := 1 to 3 do
    for col := 1 to 4 do
      begin
        arrNums[row,col] := random(9)+1;
      end;
end;

procedure TForm1.btnPrintArrayClick(Sender: TObject);
var row,col : integer;
str : string;
begin
  for row := 1 to 3 do
  begin
    str := '';
    for col := 1 to 4 do
      begin
        str := str + '['+inttostr(row)+']'+'['+inttostr(col)+']' + ' ';
      end;
      redOutput.Lines.Add(str);
   end;
end;

procedure TForm1.btnPrintElementsClick(Sender: TObject);
var row,col : integer;
str : string;
begin
  for row := 1 to 3 do
  begin
    str := '';
    for col := 1 to 4 do
      begin
        str := str +  inttostr(arrNums[row,col]) + ' ';
      end;
      redOutput.Lines.Add(str);
   end;
end;



end.
