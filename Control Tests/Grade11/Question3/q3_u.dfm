object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Q3 - Production Portal'
  ClientHeight = 263
  ClientWidth = 409
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 16
    Top = 24
    Width = 185
    Height = 193
    TabOrder = 0
    object Label1: TLabel
      Left = 16
      Top = 24
      Width = 28
      Height = 13
      Caption = 'Caps:'
    end
    object Label2: TLabel
      Left = 16
      Top = 72
      Width = 26
      Height = 13
      Caption = 'Clips:'
    end
    object sedCaps: TSpinEdit
      Left = 96
      Top = 21
      Width = 81
      Height = 22
      Increment = 2
      MaxValue = 200
      MinValue = 2
      TabOrder = 0
      Value = 2
    end
    object sedClips: TSpinEdit
      Left = 96
      Top = 69
      Width = 81
      Height = 22
      MaxValue = 200
      MinValue = 1
      TabOrder = 1
      Value = 1
    end
    object btnProcess: TButton
      Left = 48
      Top = 128
      Width = 75
      Height = 25
      Caption = 'Process'
      TabOrder = 2
      OnClick = btnProcessClick
    end
  end
  object redOutput: TRichEdit
    Left = 207
    Top = 24
    Width = 186
    Height = 193
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
  end
  object btnSaveQ3_4: TButton
    Left = 318
    Top = 223
    Width = 75
    Height = 25
    Caption = 'Save'
    Enabled = False
    TabOrder = 2
    OnClick = btnSaveQ3_4Click
  end
end
