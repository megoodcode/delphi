unit Question2_u;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, StdCtrls, ExtCtrls, ComCtrls, VideoClass, jpeg;

type
  TQuestion2 = class(TForm)
    redComments: TRichEdit;
    imgVideo: TImage;
    Label2: TLabel;
    Label3: TLabel;
    Q2_2_3btnView: TButton;
    pnlStats: TPanel;
    pnlRatings: TPanel;
    bitbtnDislike: TBitBtn;
    bitbtnLike: TBitBtn;
    pnlComment: TPanel;
    Q2_2_4btnSubmit: TButton;
    edtcomment: TEdit;
    Label4: TLabel;
    edtname: TEdit;
    Label1: TLabel;
    Label6: TLabel;
    lblvideo: TLabel;
    lbxvideos: TListBox;
    procedure Q2_2_3btnViewClick(Sender: TObject);
    procedure lbxvideosClick(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
//Provided code // Do NOT change or delete//
  Question2: TQuestion2;
  objVideo : tvideo;
  Systemdate : string;


implementation

{$R *.dfm}

procedure TQuestion2.lbxvideosClick(Sender: TObject);
begin
//Provided code // Do NOT change or delete//
 pnlstats.visible := false;
 pnlcomment.visible := false;
 redcomments.Clear;
 edtcomment.clear;
 edtname.Clear;
 pnlratings.Caption := '';
//// Enter your code below for Question 2.1.1////////



end;

procedure TQuestion2.Q2_2_3btnViewClick(Sender: TObject);
begin
//Provided code // Do NOT change or delete//
 pnlstats.visible := true;
 pnlcomment.visible := true;
 imgvideo.picture.loadfromfile(lbxvideos.items[lbxvideos.itemindex] + '.jpg');
 lblvideo.Caption := lbxvideos.items[lbxvideos.itemindex];
 systemdate := datetostr(date);
///Add your code below for quetsion 2.2.3 ///




end;



end.
