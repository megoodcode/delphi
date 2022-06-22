object Question_3: TQuestion_3
  Left = 0
  Top = 0
  Caption = 'Question 3'
  ClientHeight = 545
  ClientWidth = 742
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnActivate = FormActivate
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 364
    Width = 48
    Height = 13
    Caption = 'PROFILES'
  end
  object Label2: TLabel
    Left = 8
    Top = 190
    Width = 37
    Height = 13
    Caption = 'VIDEOS'
  end
  object Label3: TLabel
    Left = 8
    Top = 17
    Width = 203
    Height = 13
    Caption = 'Question 3.1  Display area (SQL RESULTS)'
  end
  object Label4: TLabel
    Left = 314
    Top = 364
    Width = 133
    Height = 13
    Caption = 'Question 3.2    Display area'
  end
  object dbgVideos: TDBGrid
    Left = 8
    Top = 209
    Width = 724
    Height = 137
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object btnRestoreDB: TButton
    Left = 8
    Top = 518
    Width = 116
    Height = 24
    Caption = 'Restore Database'
    TabOrder = 1
    OnClick = btnRestoreDBClick
  end
  object dbgProfiles: TDBGrid
    Left = 8
    Top = 383
    Width = 281
    Height = 129
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object dbgResults: TDBGrid
    Left = 8
    Top = 36
    Width = 724
    Height = 144
    TabOrder = 3
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object redDisplay: TRichEdit
    Left = 314
    Top = 383
    Width = 420
    Height = 154
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    ScrollBars = ssBoth
    TabOrder = 4
  end
  object btnQuestion3_1_1: TButton
    Left = 252
    Top = 5
    Width = 75
    Height = 25
    Caption = '3.1.1'
    TabOrder = 5
    OnClick = btnQuestion3_1_1Click
  end
  object btnQuestion3_1_4: TButton
    Left = 543
    Top = 5
    Width = 75
    Height = 25
    Caption = '3.1.4'
    TabOrder = 6
    OnClick = btnQuestion3_1_4Click
  end
  object btnQuestion3_2_1: TButton
    Left = 487
    Top = 352
    Width = 75
    Height = 25
    Caption = '3.2.1'
    TabOrder = 7
    OnClick = btnQuestion3_2_1Click
  end
  object btnQuestion3_2_2: TButton
    Left = 608
    Top = 352
    Width = 75
    Height = 25
    Caption = '3.2.2'
    TabOrder = 8
    OnClick = btnQuestion3_2_2Click
  end
  object btnQuestion3_1_5: TButton
    Left = 641
    Top = 5
    Width = 75
    Height = 25
    Caption = '3.1.5'
    TabOrder = 9
    OnClick = btnQuestion3_1_5Click
  end
  object btnQuestion3_1_2: TButton
    Left = 349
    Top = 5
    Width = 75
    Height = 25
    Caption = '3.1.2'
    TabOrder = 10
    OnClick = btnQuestion3_1_2Click
  end
  object btnQuestion3_1_3: TButton
    Left = 446
    Top = 5
    Width = 75
    Height = 25
    Caption = '3.1.3'
    TabOrder = 11
    OnClick = btnQuestion3_1_3Click
  end
end
