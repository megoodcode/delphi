object frmQuestion2: TfrmQuestion2
  Left = 196
  Top = 53
  Width = 800
  Height = 560
  Caption = 'Question 2 - '
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  object redOutput: TRichEdit
    Left = 56
    Top = 16
    Width = 657
    Height = 449
    TabOrder = 0
  end
  object MainMenu1: TMainMenu
    Left = 88
    Top = 40
    object mnuOptionA: TMenuItem
      Caption = 'Option &A'
    end
    object mnuOptionB: TMenuItem
      Caption = 'Option &B'
    end
    object mnuOptionC: TMenuItem
      Caption = 'Option &C'
    end
    object Quit1: TMenuItem
      Caption = '&Quit'
      OnClick = Quit1Click
    end
  end
end
