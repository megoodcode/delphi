object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Reverse a Word'
  ClientHeight = 153
  ClientWidth = 152
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
    Left = 40
    Top = 16
    Width = 62
    Height = 13
    Caption = 'Type a Word'
  end
  object edtInput: TEdit
    Left = 16
    Top = 48
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object btnReverse: TButton
    Left = 24
    Top = 88
    Width = 102
    Height = 25
    Caption = 'Reverse The Word'
    TabOrder = 1
    OnClick = btnReverseClick
  end
end
