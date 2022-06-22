object frmQuestion2: TfrmQuestion2
  Left = 195
  Top = 55
  Caption = 'Question 2'
  ClientHeight = 468
  ClientWidth = 791
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesigned
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 16
  object pgcQst2: TPageControl
    Left = 1
    Top = 0
    Width = 790
    Height = 465
    ActivePage = tsQst21
    TabOrder = 0
    object tsQst21: TTabSheet
      Caption = 'Qst 2.1 SQL'
      object Label3: TLabel
        Left = 16
        Top = 13
        Width = 232
        Height = 29
        Caption = 'LAN FANatics - SQL'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -24
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label5: TLabel
        Left = 24
        Top = 48
        Width = 105
        Height = 19
        Caption = 'Query Result'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object dbgSQL: TDBGrid
        Left = 16
        Top = 73
        Width = 721
        Height = 134
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -13
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
      end
      object btnSQLqst211: TButton
        Left = 24
        Top = 240
        Width = 265
        Height = 41
        Caption = '2.1.1  Show All Players'
        TabOrder = 1
        OnClick = btnSQLqst211Click
      end
      object Button2: TButton
        Left = 616
        Top = 384
        Width = 153
        Height = 36
        Caption = 'Restore Database'
        TabOrder = 2
        OnClick = btnRestoreClick
      end
      object btnSQLqst212: TButton
        Left = 24
        Top = 303
        Width = 265
        Height = 41
        Caption = '2.1.2  Players Born in September'
        TabOrder = 3
        OnClick = btnSQLqst212Click
      end
      object btnSQLqst213: TButton
        Left = 24
        Top = 366
        Width = 265
        Height = 41
        Caption = '2.1.3  Average Game Times'
        TabOrder = 4
        OnClick = btnSQLqst213Click
      end
      object btnSQLqst214: TButton
        Left = 352
        Top = 240
        Width = 265
        Height = 41
        Caption = '2.1.4  Highest Score'
        TabOrder = 5
        OnClick = btnSQLqst214Click
      end
      object btnSQLqst215: TButton
        Left = 352
        Top = 303
        Width = 265
        Height = 41
        Caption = '2.1.5  Add Game'
        TabOrder = 6
        OnClick = btnSQLqst215Click
      end
    end
    object tsQst22: TTabSheet
      Caption = 'Qst 2.2 DB'
      ImageIndex = 1
      object Label1: TLabel
        Left = 8
        Top = 0
        Width = 213
        Height = 29
        Caption = 'Lan FANatics - DB'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -24
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label2: TLabel
        Left = 8
        Top = 41
        Width = 127
        Height = 23
        Caption = 'Players Table'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label4: TLabel
        Left = 8
        Top = 202
        Width = 122
        Height = 23
        Caption = 'Games Table'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label6: TLabel
        Left = 504
        Top = 208
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
      object dbgPlayers: TDBGrid
        Left = 8
        Top = 64
        Width = 513
        Height = 129
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -13
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
      end
      object dbgGames: TDBGrid
        Left = 8
        Top = 228
        Width = 465
        Height = 121
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -13
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
      end
      object redDisplay: TRichEdit
        Left = 499
        Top = 225
        Width = 270
        Height = 187
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        Lines.Strings = (
          'Display output here')
        ParentFont = False
        TabOrder = 2
      end
      object btnDomainUsersCount: TButton
        Left = 552
        Top = 64
        Width = 217
        Height = 35
        Caption = '2.2.1  Domain Users Count'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
        OnClick = btnDomainUsersCountClick
      end
      object btnChangeScore: TButton
        Left = 552
        Top = 110
        Width = 217
        Height = 35
        Caption = '2.2.2  Change Score'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 4
        OnClick = btnChangeScoreClick
      end
      object btnAddRiver: TButton
        Left = 552
        Top = 153
        Width = 217
        Height = 35
        Caption = '2.2.3  Add Game'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 5
        OnClick = btnAddRiverClick
      end
      object btnRestore: TButton
        Left = 8
        Top = 376
        Width = 153
        Height = 36
        Caption = 'Restore Database'
        TabOrder = 6
        OnClick = btnRestoreClick
      end
    end
  end
end
