object frmRec: TfrmRec
  Left = 182
  Top = 202
  Width = 906
  Height = 480
  Caption = 'Question 1 - '
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = [fsBold]
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 881
    Height = 433
    TabOrder = 0
    object grdRec: TDBGrid
      Left = 16
      Top = 8
      Width = 713
      Height = 417
      DataSource = tblRecAg
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Options = [dgEditing, dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
      ParentFont = False
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = [fsBold]
    end
    object Panel2: TPanel
      Left = 736
      Top = 8
      Width = 137
      Height = 417
      BevelInner = bvLowered
      TabOrder = 1
      object btnB: TButton
        Left = 8
        Top = 56
        Width = 121
        Height = 41
        Caption = 'Option &B'
        TabOrder = 0
        OnClick = btnBClick
      end
      object btnE: TButton
        Left = 8
        Top = 200
        Width = 121
        Height = 41
        Caption = 'Option &E'
        TabOrder = 1
        OnClick = btnEClick
      end
      object btnA: TButton
        Left = 8
        Top = 8
        Width = 121
        Height = 41
        Caption = 'Option &A'
        TabOrder = 2
        OnClick = btnAClick
      end
      object btnD: TButton
        Left = 8
        Top = 152
        Width = 121
        Height = 41
        Caption = 'Option &D'
        TabOrder = 3
        OnClick = btnDClick
      end
      object btnF: TButton
        Left = 8
        Top = 248
        Width = 121
        Height = 41
        Caption = 'Option &F'
        TabOrder = 4
        OnClick = btnFClick
      end
      object BitBtn1: TBitBtn
        Left = 8
        Top = 368
        Width = 121
        Height = 41
        TabOrder = 5
        Kind = bkClose
      end
      object btnC: TButton
        Left = 8
        Top = 104
        Width = 121
        Height = 41
        Caption = 'Option &C'
        TabOrder = 6
        OnClick = btnCClick
      end
      object btnG: TButton
        Left = 8
        Top = 296
        Width = 121
        Height = 41
        Caption = 'Option &G'
        TabOrder = 7
        OnClick = btnGClick
      end
    end
  end
  object tblRecAg: TDataSource
    DataSet = qryRec
    Left = 8
    Top = 384
  end
  object qryRec: TADOQuery
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=DamsDB.mdb;Persist ' +
      'Security Info=False'
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      '')
    Left = 48
    Top = 384
  end
end
