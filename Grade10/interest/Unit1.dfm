object Investment: TInvestment
  Left = 0
  Top = 0
  Caption = 'Investment'
  ClientHeight = 279
  ClientWidth = 273
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
    Width = 66
    Height = 13
    Caption = 'Initial Balance'
  end
  object Label2: TLabel
    Left = 16
    Top = 38
    Width = 65
    Height = 13
    Caption = 'Interest Rate'
  end
  object Label3: TLabel
    Left = 243
    Top = 38
    Width = 11
    Height = 13
    Caption = '%'
  end
  object edtBalance: TEdit
    Left = 116
    Top = 8
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object edtRate: TEdit
    Left = 116
    Top = 35
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object btnGrow: TButton
    Left = 64
    Top = 72
    Width = 121
    Height = 25
    Caption = 'Grow For 4 Years'
    TabOrder = 2
    OnClick = btnGrowClick
  end
  object redOutput: TRichEdit
    Left = 16
    Top = 120
    Width = 221
    Height = 97
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
  end
  object BitBtn1: TBitBtn
    Left = 16
    Top = 240
    Width = 75
    Height = 25
    Caption = '&Reset'
    DoubleBuffered = True
    Kind = bkRetry
    ParentDoubleBuffered = False
    TabOrder = 4
    OnClick = BitBtn1Click
  end
  object BitBtn2: TBitBtn
    Left = 162
    Top = 240
    Width = 75
    Height = 25
    DoubleBuffered = True
    Kind = bkClose
    ParentDoubleBuffered = False
    TabOrder = 5
  end
end
