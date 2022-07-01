object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Q2 - Sales Portal'
  ClientHeight = 344
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
    Left = 8
    Top = 5
    Width = 68
    Height = 13
    Caption = '2.1 Load Data'
  end
  object Label2: TLabel
    Left = 263
    Top = 8
    Width = 82
    Height = 13
    Caption = '2.2 Process Data'
  end
  object pnlLoad: TPanel
    Left = 8
    Top = 24
    Width = 249
    Height = 313
    BorderStyle = bsSingle
    TabOrder = 0
    object btnDisplay2_1_2: TButton
      Left = 150
      Top = 17
      Width = 75
      Height = 25
      Caption = 'Display'
      TabOrder = 0
      OnClick = btnDisplay2_1_2Click
    end
    object redOutput: TRichEdit
      Left = 16
      Top = 48
      Width = 209
      Height = 249
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 1
    end
    object btnGenerate2_1_1: TButton
      Left = 16
      Top = 17
      Width = 75
      Height = 25
      Caption = 'Generate'
      TabOrder = 2
      OnClick = btnGenerate2_1_1Click
    end
  end
  object pnlProcess: TPanel
    Left = 263
    Top = 25
    Width = 374
    Height = 312
    BorderStyle = bsSingle
    TabOrder = 1
    object btnMaxSales2_2_1: TButton
      Left = 5
      Top = 16
      Width = 108
      Height = 25
      Caption = 'Highest Sales'
      TabOrder = 0
      OnClick = btnMaxSales2_2_1Click
    end
    object edtHighest: TEdit
      Left = 160
      Top = 18
      Width = 193
      Height = 21
      ReadOnly = True
      TabOrder = 1
    end
    object btnSearch2_2_2: TButton
      Left = 5
      Top = 55
      Width = 108
      Height = 25
      Caption = 'Search'
      TabOrder = 2
      OnClick = btnSearch2_2_2Click
    end
    object edtSearch: TEdit
      Left = 160
      Top = 57
      Width = 193
      Height = 21
      ReadOnly = True
      TabOrder = 3
    end
    object btnAveSales2_2_3: TButton
      Left = 5
      Top = 96
      Width = 108
      Height = 25
      Caption = 'Average Sales'
      TabOrder = 4
      OnClick = btnAveSales2_2_3Click
    end
    object btnAboveAve2_2_4: TButton
      Left = 5
      Top = 136
      Width = 348
      Height = 25
      Caption = 'Products with above-average sales:'
      TabOrder = 5
      OnClick = btnAboveAve2_2_4Click
    end
    object edtAverage: TEdit
      Left = 160
      Top = 98
      Width = 193
      Height = 21
      ReadOnly = True
      TabOrder = 6
    end
    object memAbvAve: TMemo
      Left = 5
      Top = 167
      Width = 348
      Height = 130
      TabOrder = 7
    end
  end
end
