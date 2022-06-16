object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 174
  ClientWidth = 447
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 16
    Top = 8
    Width = 155
    Height = 13
    Caption = 'Are You Going To School Today?'
  end
  object chkYes: TCheckBox
    Left = 16
    Top = 34
    Width = 97
    Height = 17
    Caption = 'Yes'
    TabOrder = 0
  end
  object btnTellMe: TButton
    Left = 16
    Top = 96
    Width = 75
    Height = 25
    Caption = 'Tell Me'
    TabOrder = 1
    OnClick = btnTellMeClick
  end
  object chkNo: TCheckBox
    Left = 16
    Top = 57
    Width = 97
    Height = 17
    Caption = 'No'
    TabOrder = 2
  end
end
