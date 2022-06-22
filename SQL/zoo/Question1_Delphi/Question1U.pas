unit Question1U;
   //TYPE IN YOUR EXAMINATION NUMBER .....
interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, ADODB, Grids, DBGrids, ExtCtrls, Buttons, Menus;

type
  TfrmRec = class(TForm)
    qryRec: TADOQuery;
    dsrQry: TDataSource;
    grdRec: TDBGrid;
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
  frmRec: TfrmRec;

implementation

{$R *.dfm}

procedure TfrmRec.mnuOptionAClick(Sender: TObject);
begin
  qryRec.Close;
  qryRec.SQL.Text :=  '';
  qryRec.Open;
end;

procedure TfrmRec.mnuOptionBClick(Sender: TObject);
var
   sX : String;
begin
  sX := INPUTBOX('Question 1', 'Question 1', '');
  qryRec.Close;
  qryRec.SQL.Text :=  '';
  qryRec.Open;
end;

procedure TfrmRec.mnuOptionCClick(Sender: TObject);
begin
  qryRec.Close;
  qryRec.SQL.Text :=  '';
  qryRec.Open;
end;

procedure TfrmRec.mnuOptionDClick(Sender: TObject);
begin
  qryRec.Close;
  qryRec.SQL.Text :=  '';
  qryRec.Open;
end;

procedure TfrmRec.mnuOptionEClick(Sender: TObject);
begin
  qryRec.Close;
  qryRec.SQL.Text :=  '';
  qryRec.ExecSQL;
  MessageDlg('Record Processed Successfully',mtInformation,[mbok],0);
end;

procedure TfrmRec.mnuOptionFClick(Sender: TObject);
var
   sX : String;
begin
  sX := INPUTBOX('Question 1', 'Question 1', '1');
  qryRec.Close;
  qryRec.SQL.Text :=  '';
  qryRec.Open;
end;

procedure TfrmRec.mnuOptionGClick(Sender: TObject);
begin
  qryRec.Close;
  qryRec.SQL.Text :=  '';
  qryRec.ExecSQL;
  MessageDlg('Record Processed Successfully',mtInformation,[mbok],0);
end;

procedure TfrmRec.mnuQuitClick(Sender: TObject);
begin
   Application.Terminate;
end;

end.
