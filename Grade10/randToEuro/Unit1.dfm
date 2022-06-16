object Currency_Converter: TCurrency_Converter
  Left = 0
  Top = 0
  Caption = 'Currency_Converter'
  ClientHeight = 173
  ClientWidth = 446
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object lblRand: TLabel
    Left = 32
    Top = 16
    Width = 25
    Height = 13
    Caption = 'Rand'
  end
  object lblEuro: TLabel
    Left = 264
    Top = 16
    Width = 22
    Height = 13
    Caption = 'Euro'
  end
  object edtRand: TEdit
    Left = 16
    Top = 35
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object edtEuro: TEdit
    Left = 232
    Top = 35
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object btnConvertToEuro: TButton
    Left = 16
    Top = 62
    Width = 121
    Height = 25
    Caption = 'Convert To Euro'
    TabOrder = 2
    OnClick = btnConvertToEuroClick
  end
  object btnConvertToRand: TButton
    Left = 232
    Top = 62
    Width = 121
    Height = 25
    Caption = 'Convert To Rand'
    TabOrder = 3
    OnClick = btnConvertToRandClick
  end
  object BitBtn1: TBitBtn
    Left = 152
    Top = 104
    Width = 75
    Height = 25
    Caption = '&Reset'
    DoubleBuffered = True
    Kind = bkRetry
    ParentDoubleBuffered = False
    TabOrder = 4
    OnClick = BitBtn1Click
  end
end
