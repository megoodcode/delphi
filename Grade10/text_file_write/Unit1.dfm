object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Text File Write'
  ClientHeight = 303
  ClientWidth = 211
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
    Left = 56
    Top = 184
    Width = 102
    Height = 13
    Caption = 'Enter In A Line Below'
  end
  object redOutput: TRichEdit
    Left = 8
    Top = 8
    Width = 185
    Height = 161
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
  end
  object btnWrite: TButton
    Left = 64
    Top = 249
    Width = 81
    Height = 25
    Caption = 'Write To File'
    TabOrder = 1
    OnClick = btnWriteClick
  end
  object edtInput: TEdit
    Left = 8
    Top = 214
    Width = 185
    Height = 21
    TabOrder = 2
  end
end
