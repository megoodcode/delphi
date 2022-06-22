unit Question1_U;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, ADODB, Grids, DBGrids, ExtCtrls, Buttons;

type
  TfrmRec = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    btnA: TButton;
    btnB: TButton;
    btnC: TButton;
    btnD: TButton;
    btnE: TButton;
    btnF: TButton;
    btnG: TButton;
    BitBtn1: TBitBtn;
    qryRec: TADOQuery;
    tblRecAg: TDataSource;
    grdRec: TDBGrid;

    procedure btnAClick(Sender: TObject);
    procedure btnBClick(Sender: TObject);
    procedure btnCClick(Sender: TObject);
    procedure btnDClick(Sender: TObject);
    procedure btnEClick(Sender: TObject);
    procedure btnFClick(Sender: TObject);
    procedure btnGClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRec: TfrmRec;

implementation

{$R *.dfm}


procedure TfrmRec.btnAClick(Sender: TObject);
begin
  qryRec.Active := False;
  qryRec.SQL.Text :=  '';
  qryRec.Active := True;
end;

procedure TfrmRec.btnBClick(Sender: TObject);
begin
  qryRec.Active := False;
  qryRec.SQL.Text :=  '';
  qryRec.Active := True;
end;

procedure TfrmRec.btnCClick(Sender: TObject);
begin
  qryRec.Active := False;
  qryRec.SQL.Text :=  '';
  qryRec.Active := True;
end;

procedure TfrmRec.btnDClick(Sender: TObject);
begin
  qryRec.Active := False;
  qryRec.SQL.Text :=  '';
  qryRec.Active := True;
end;

procedure TfrmRec.btnEClick(Sender: TObject);
begin
  qryRec.Active := False;
  qryRec.SQL.Text :=  '';
  qryRec.Active := True;
end;

procedure TfrmRec.btnFClick(Sender: TObject);
begin
  qryRec.Active := False;
  qryRec.SQL.Text :=  '';
  qryRec.ExecSQL;
  MessageDlg('Records Processed Successfully',mtInformation,[mbok],0);
end;

procedure TfrmRec.btnGClick(Sender: TObject);
begin
  qryRec.Active := False;
  qryRec.SQL.Text :=  '';
  qryRec.ExecSQL;
  MessageDlg('Records Processed Successfully',mtInformation,[mbok],0);
end;

end.
