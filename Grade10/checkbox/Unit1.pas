unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    chkYes: TCheckBox;
    btnTellMe: TButton;
    chkNo: TCheckBox;
    Label1: TLabel;
    procedure btnTellMeClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.btnTellMeClick(Sender: TObject);
begin
if (chkYes.Checked) and (chkNo.Checked = false) then
 ShowMessage('Have A Good Day')
else if (chkNo.Checked) and (chkYes.Checked = false) then
 ShowMessage('Are You Sick?')
else if (chkNo.Checked) and (chkYes.Checked) then
 ShowMessage('Are You Still Sleeping? ')
else
 ShowMessage('User dosnt care about choosing a option');
end;


end.
