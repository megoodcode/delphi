object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 264
  ClientWidth = 363
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object lblTitle: TLabel
    Left = 8
    Top = 8
    Width = 128
    Height = 13
    Caption = 'A simple 2D Array Program'
  end
  object redOutput: TRichEdit
    Left = 166
    Top = 8
    Width = 187
    Height = 248
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    ScrollBars = ssVertical
    TabOrder = 0
  end
  object btnInitialize: TButton
    Left = 8
    Top = 90
    Width = 152
    Height = 25
    Caption = 'Initialize array'
    TabOrder = 1
    OnClick = btnInitializeClick
  end
  object btnPrintArray: TButton
    Left = 8
    Top = 28
    Width = 152
    Height = 25
    Caption = 'Print Array Structure'
    TabOrder = 2
    OnClick = btnPrintArrayClick
  end
  object btnPrintElements: TButton
    Left = 8
    Top = 59
    Width = 152
    Height = 25
    Caption = 'Print Elements in Array'
    TabOrder = 3
    OnClick = btnPrintElementsClick
  end
  object btnAddRow: TButton
    Left = 8
    Top = 121
    Width = 152
    Height = 25
    Caption = 'Add Rows'
    TabOrder = 4
    OnClick = btnAddRowClick
  end
  object btnAddColumns: TButton
    Left = 8
    Top = 152
    Width = 152
    Height = 25
    Caption = 'Add Columns'
    TabOrder = 5
    OnClick = btnAddColumnsClick
  end
end
