unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, Buttons;

type
  TForm1 = class(TForm)
    lblFullName: TLabel;
    edtFullName: TEdit;
    redOutput: TRichEdit;
    btnUpCase: TButton;
    btnUpperCase: TButton;
    btnLowerCase: TButton;
    btnCopy: TButton;
    btnDelete: TButton;
    btnPos: TButton;
    btnIN: TButton;
    BitBtn1: TBitBtn;
    procedure btnUpCaseClick(Sender: TObject);
    procedure btnUpperCaseClick(Sender: TObject);
    procedure btnLowerCaseClick(Sender: TObject);
    procedure btnCopyClick(Sender: TObject);
    procedure btnDeleteClick(Sender: TObject);
    procedure btnPosClick(Sender: TObject);
    procedure btnINClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  sFullName : string;

implementation

{$R *.dfm}

procedure TForm1.btnCopyClick(Sender: TObject);
begin
  redOutput.Clear;
  sFullName := edtFullName.Text;
  redOutput.Lines.Add('Original = ' + sFullName);

  redOutput.Lines.Add('Copy the first 3 characters = ' + copy(sFullname,1,3));
end;

procedure TForm1.btnDeleteClick(Sender: TObject);
begin
  redOutput.Clear;
  sFullName := edtFullName.Text;
  redOutput.Lines.Add('Original = ' + sFullName);

  delete(sFullName,1,3);
  redOutput.Lines.Add('Delete the first 3 characters = ' + sFullName);
end;

procedure TForm1.btnINClick(Sender: TObject);
var iCount, i : integer;
begin
  redOutput.Clear;
  sFullName := edtFullName.Text;
  redOutput.Lines.Add('Original = ' + sFullName);

  //determine how many vowels inside of sFullName
  iCount := 0; // initialize iCount to 0 which will count how many vowels

  // loop through the string
  for i := 1 to length(sFullName) do // loop start at beginning of string go to end
   begin
     // sString[i] is the individual characters inside of the string
     if sFullName[i] IN ['a','e','i','o','u','A','E','I','O','U'] then
      iCount := iCount + 1;
    end;
  // Once the loop has finished print the number of vowels if any
  redOutput.Lines.Add('Number of vowels: ' + inttostr(iCount));

end;

procedure TForm1.btnLowerCaseClick(Sender: TObject);
begin
  redOutput.Clear;
  sFullName := edtFullName.Text;
  redOutput.Lines.Add('Original = ' + sFullName);

  redOutput.Lines.Add('Lowercase = ' + Lowercase(sFullName));

end;

procedure TForm1.btnPosClick(Sender: TObject);
begin
  redOutput.Clear;
  sFullName := edtFullName.Text;
  redOutput.Lines.Add('Original = ' + sFullName);

  redOutput.Lines.Add('Position of the whitespace = ' + inttostr(pos(' ',sFullName)));

end;

procedure TForm1.btnUpCaseClick(Sender: TObject);
begin
  redOutput.Clear;
  sFullName := edtFullName.Text;
  redOutput.Lines.Add('Original = ' + sFullName);

  //easy way of using upcase, you need to know the position of the letter you want
  //to change. To keep it simple, we will stick to the first character
  redOutput.Lines.Add('Upcase First Letter= ' + upcase(sFullName[1]));

  //complex way of using upcase
  redOutput.Lines.Add('UpCase Last Letter = ' + upCase(sFullName[length(sFullName)]));
end;

procedure TForm1.btnUpperCaseClick(Sender: TObject);
begin
  redOutput.Clear;
  sFullName := edtFullName.Text;
  redOutput.Lines.Add('Original = ' + sFullName);

  redOutput.Lines.Add('Uppercase = ' + Uppercase(sFullName));
end;

end.
