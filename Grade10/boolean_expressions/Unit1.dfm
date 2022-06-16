object Boolean_Expressions: TBoolean_Expressions
  Left = 0
  Top = 0
  Caption = 'Boolean_Expressions'
  ClientHeight = 434
  ClientWidth = 336
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Value1: TLabel
    Left = 48
    Top = 24
    Width = 32
    Height = 13
    Caption = 'Value1'
  end
  object Label1: TLabel
    Left = 208
    Top = 24
    Width = 35
    Height = 13
    Caption = 'Value 2'
  end
  object sedValue1: TSpinEdit
    Left = 32
    Top = 43
    Width = 121
    Height = 22
    MaxValue = 0
    MinValue = 0
    TabOrder = 0
    Value = 0
  end
  object sedValue2: TSpinEdit
    Left = 184
    Top = 43
    Width = 121
    Height = 22
    MaxValue = 0
    MinValue = 0
    TabOrder = 1
    Value = 0
  end
  object btnEvaluate: TButton
    Left = 32
    Top = 88
    Width = 273
    Height = 25
    Caption = 'Evaluate'
    TabOrder = 2
    OnClick = btnEvaluateClick
  end
  object GroupBox1: TGroupBox
    Left = 32
    Top = 119
    Width = 121
    Height = 82
    Caption = 'Value1 = Value2'
    TabOrder = 3
    object lblEqual: TLabel
      Left = 40
      Top = 40
      Width = 36
      Height = 13
      Caption = 'lblEqual'
    end
  end
  object GroupBox2: TGroupBox
    Left = 184
    Top = 119
    Width = 121
    Height = 82
    Caption = 'Value1 <> Value2'
    TabOrder = 4
    object lblNotEqual: TLabel
      Left = 32
      Top = 40
      Width = 53
      Height = 13
      Caption = 'lblNotEqual'
    end
  end
  object GroupBox3: TGroupBox
    Left = 32
    Top = 216
    Width = 121
    Height = 81
    Caption = 'Value1 > Value2'
    TabOrder = 5
    object lblGreater: TLabel
      Left = 29
      Top = 40
      Width = 47
      Height = 13
      Caption = 'lblGreater'
    end
  end
  object GroupBox4: TGroupBox
    Left = 184
    Top = 216
    Width = 121
    Height = 81
    Caption = 'Value1 >= Value2'
    TabOrder = 6
    object lblGreaterThanEqual: TLabel
      Left = 16
      Top = 40
      Width = 97
      Height = 13
      Caption = 'lblGreaterThanEqual'
    end
  end
  object GroupBox5: TGroupBox
    Left = 32
    Top = 312
    Width = 121
    Height = 73
    Caption = 'Value1 < Value2'
    TabOrder = 7
    object lblLess: TLabel
      Left = 40
      Top = 40
      Width = 31
      Height = 13
      Caption = 'lblLess'
    end
  end
  object GroupBox6: TGroupBox
    Left = 184
    Top = 320
    Width = 121
    Height = 65
    Caption = 'Value <= Value2'
    TabOrder = 8
    object lblLessThanEqual: TLabel
      Left = 24
      Top = 32
      Width = 81
      Height = 13
      Caption = 'lblLessThanEqual'
    end
  end
  object BitBtn1: TBitBtn
    Left = 120
    Top = 401
    Width = 75
    Height = 25
    DoubleBuffered = True
    Kind = bkRetry
    ParentDoubleBuffered = False
    TabOrder = 9
    OnClick = BitBtn1Click
  end
end
