object frmQuestion4: TfrmQuestion4
  Left = 0
  Top = 0
  Caption = 'Question 4'
  ClientHeight = 360
  ClientWidth = 626
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 16
  object Label1: TLabel
    Left = 32
    Top = 16
    Width = 436
    Height = 29
    Caption = 'LAN FANatics Master Players League'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -24
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 328
    Top = 58
    Width = 46
    Height = 16
    Caption = 'Display'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object redDisplay: TRichEdit
    Left = 328
    Top = 80
    Width = 273
    Height = 257
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    ScrollBars = ssVertical
    TabOrder = 0
  end
  object btnload: TButton
    Left = 56
    Top = 96
    Width = 201
    Height = 41
    Caption = 'Load Scores (Supplied Code)'
    TabOrder = 1
    OnClick = btnloadClick
  end
  object btnRemoveDuplicates: TButton
    Left = 56
    Top = 200
    Width = 201
    Height = 41
    Caption = '4.1  Remove Duplicates'
    TabOrder = 2
    OnClick = btnRemoveDuplicatesClick
  end
  object btnMasterPlayers: TButton
    Left = 56
    Top = 272
    Width = 201
    Height = 41
    Caption = '4.2  Display Master Players'
    TabOrder = 3
    OnClick = btnMasterPlayersClick
  end
end
