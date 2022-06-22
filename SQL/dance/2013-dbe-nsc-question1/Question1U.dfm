object frmQ1: TfrmQ1
  Left = 196
  Top = 119
  Width = 681
  Height = 540
  Caption = 'Question 1 - '
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = [fsBold]
  Menu = mnuMain
  OldCreateOrder = False
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 13
  object grdQ1: TDBGrid
    Left = 0
    Top = 0
    Width = 673
    Height = 486
    Align = alClient
    DataSource = dsrQry
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    ReadOnly = True
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = [fsBold]
  end
  object dsrQry: TDataSource
    DataSet = qryRec
    Left = 8
    Top = 384
  end
  object qryRec: TADOQuery
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=Question1DB.mdb;Per' +
      'sist Security Info=False'
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      '')
    Left = 48
    Top = 384
  end
  object mnuMain: TMainMenu
    AutoHotkeys = maManual
    Left = 8
    Top = 344
    object mnuOptionA: TMenuItem
      Caption = 'Option &A'
      ShortCut = 16449
      OnClick = mnuOptionAClick
    end
    object mnuOptionB: TMenuItem
      Caption = 'Option &B'
      OnClick = mnuOptionBClick
    end
    object mnuOptionC: TMenuItem
      Caption = 'Option &C'
      OnClick = mnuOptionCClick
    end
    object mnuOptionD: TMenuItem
      Caption = 'Option &D'
      OnClick = mnuOptionDClick
    end
    object mnuOptionE: TMenuItem
      Caption = 'Option &E'
      OnClick = mnuOptionEClick
    end
    object mnuOptionF: TMenuItem
      Caption = 'Option &F'
      OnClick = mnuOptionFClick
    end
    object mnuOptionG: TMenuItem
      Caption = 'Option &G'
      OnClick = mnuOptionGClick
    end
    object mnuQuit: TMenuItem
      Caption = 'Quit'
      OnClick = mnuQuitClick
    end
  end
end
