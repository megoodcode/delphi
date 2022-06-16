object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Reverse Words'
  ClientHeight = 154
  ClientWidth = 641
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
    Left = 288
    Top = 8
    Width = 67
    Height = 13
    Caption = 'Type 5 Words'
  end
  object Edit1: TEdit
    Left = 8
    Top = 40
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object Edit2: TEdit
    Left = 135
    Top = 40
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object Edit3: TEdit
    Left = 262
    Top = 40
    Width = 121
    Height = 21
    TabOrder = 2
  end
  object Edit4: TEdit
    Left = 389
    Top = 40
    Width = 121
    Height = 21
    TabOrder = 3
  end
  object Edit5: TEdit
    Left = 516
    Top = 40
    Width = 121
    Height = 21
    TabOrder = 4
  end
  object Button1: TButton
    Left = 252
    Top = 67
    Width = 149
    Height = 25
    Caption = 'Reverse and Form Sentence'
    TabOrder = 5
    OnClick = Button1Click
  end
  object edtSentence: TEdit
    Left = 16
    Top = 112
    Width = 617
    Height = 21
    TabOrder = 6
  end
end
