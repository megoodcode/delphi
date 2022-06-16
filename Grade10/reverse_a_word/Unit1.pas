unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    edtInput: TEdit;
    btnReverse: TButton;
    procedure btnReverseClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.btnReverseClick(Sender: TObject);
var sWord,sNewWord : string;
    iCount : integer;
    sNames : array[1..20] of String;
begin
    sWord := edtInput.Text;
    sNewWord := '';

    for iCount := Length(sWord) downto 1 do
    begin
      sNewWord := sNewWord + sWord[iCount];
    end;

    // Alternate Solution
    {for iCount := 1 to Length(sWord) do
    begin
      sNewWord := sWord[iCount] + sNewWord;
    end;}
    sNames[1] := 'Happy';

    edtInput.Text := sNewWord;
end;

end.
