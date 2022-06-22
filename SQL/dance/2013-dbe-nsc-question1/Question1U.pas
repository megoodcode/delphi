unit Question1U;
{Type your examination number here}
interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, ADODB, Grids, DBGrids, ExtCtrls, Buttons, Menus;

type
  TfrmQ1 = class(TForm)
    qryRec: TADOQuery;
    dsrQry: TDataSource;
    grdQ1: TDBGrid;
    mnuMain: TMainMenu;
    mnuOptionA: TMenuItem;
    mnuOptionB: TMenuItem;
    mnuOptionC: TMenuItem;
    mnuOptionD: TMenuItem;
    mnuOptionE: TMenuItem;
    mnuOptionF: TMenuItem;
    mnuOptionG: TMenuItem;
    mnuQuit: TMenuItem;
    procedure mnuOptionAClick(Sender: TObject);
    procedure mnuOptionBClick(Sender: TObject);
    procedure mnuOptionCClick(Sender: TObject);
    procedure mnuOptionDClick(Sender: TObject);
    procedure mnuOptionEClick(Sender: TObject);
    procedure mnuOptionFClick(Sender: TObject);
    procedure mnuOptionGClick(Sender: TObject);
    procedure mnuQuitClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmQ1: TfrmQ1;

implementation

{$R *.dfm}
//===============================================================
procedure TfrmQ1.mnuOptionAClick(Sender: TObject);
begin
  qryRec.Close;
  qryRec.SQL.Text :=  '';
  qryRec.Open;
end;
//===============================================================
procedure TfrmQ1.mnuOptionBClick(Sender: TObject);
begin
  qryRec.Close;
  qryRec.SQL.Text := '';
  qryRec.Open;
end;
//===============================================================
procedure TfrmQ1.mnuOptionCClick(Sender: TObject);
var
  sX : String;
begin
  sX := InputBox('Question 1', 'Question 1', '');
  qryRec.Close;
  qryRec.SQL.Text :=  '';
  qryRec.Open;
end;
//===============================================================
procedure TfrmQ1.mnuOptionDClick(Sender: TObject);
begin
  qryRec.Close;
  qryRec.SQL.Text := '';
  qryRec.Open;
end;
//===============================================================
procedure TfrmQ1.mnuOptionEClick(Sender: TObject);
begin
  qryRec.Close;
  qryRec.SQL.Text := '';
  qryRec.Open;
end;
//===============================================================
procedure TfrmQ1.mnuOptionFClick(Sender: TObject);
begin
  qryRec.Close;
  qryRec.SQL.Text :=  '';
  qryRec.Open;
end;
//===============================================================
procedure TfrmQ1.mnuOptionGClick(Sender: TObject);
begin
  qryRec.Close;
  qryRec.SQL.Text := '';
  qryRec.ExecSQL;
  MessageDlg('Records Processed Successfully',mtInformation,[mbok],0);
end;
//===============================================================
procedure TfrmQ1.mnuQuitClick(Sender: TObject);
begin
   Application.Terminate;
end;

end.
