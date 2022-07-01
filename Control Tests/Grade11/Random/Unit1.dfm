object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 488
  ClientWidth = 730
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 8
    Top = 8
    Width = 705
    Height = 472
    Caption = 'Random Functions'
    TabOrder = 0
    object lblRandom: TLabel
      Left = 153
      Top = 33
      Width = 266
      Height = 13
      Caption = 'Enter In Value for Random Function ie: Random(value):'
    end
    object Label1: TLabel
      Left = 153
      Top = 129
      Width = 103
      Height = 13
      Caption = 'Enter In Two Values: '
    end
    object btnRandom: TButton
      Left = 16
      Top = 30
      Width = 75
      Height = 25
      Caption = 'Random'
      TabOrder = 0
      OnClick = btnRandomClick
    end
    object btnRandomRange: TButton
      Left = 16
      Top = 124
      Width = 105
      Height = 25
      Caption = 'Random Range'
      TabOrder = 1
      OnClick = btnRandomRangeClick
    end
    object redOutput: TRichEdit
      Left = 16
      Top = 248
      Width = 665
      Height = 180
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      Lines.Strings = (
        'redOutput')
      ParentFont = False
      ScrollBars = ssVertical
      TabOrder = 2
      Zoom = 100
    end
    object edtRandom: TEdit
      Left = 456
      Top = 30
      Width = 121
      Height = 21
      TabOrder = 3
    end
    object btnClear: TButton
      Left = 16
      Top = 168
      Width = 75
      Height = 25
      Caption = 'Clear'
      TabOrder = 4
      OnClick = btnClearClick
    end
    object btnNoRandomize: TButton
      Left = 153
      Top = 77
      Width = 168
      Height = 25
      Caption = 'Without Randomize'
      TabOrder = 5
      OnClick = btnNoRandomizeClick
    end
    object edtRandomRange1: TEdit
      Left = 272
      Top = 126
      Width = 121
      Height = 21
      TabOrder = 6
    end
    object edtRandomRange2: TEdit
      Left = 456
      Top = 126
      Width = 121
      Height = 21
      TabOrder = 7
    end
  end
  object btnRandomize: TButton
    Left = 24
    Top = 85
    Width = 105
    Height = 25
    Caption = 'Randomize'
    TabOrder = 1
    OnClick = btnRandomizeClick
  end
end
