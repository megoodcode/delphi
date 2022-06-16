object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'textFileRead'
  ClientHeight = 250
  ClientWidth = 202
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object btnRead: TButton
    Left = 64
    Top = 183
    Width = 75
    Height = 25
    Caption = 'Read File'
    TabOrder = 0
    OnClick = btnReadClick
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
    TabOrder = 1
  end
end
