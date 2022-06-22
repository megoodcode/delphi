object frmQ2: TfrmQ2
  Left = 211
  Top = 128
  Width = 696
  Height = 480
  Caption = 'Question 2 -'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Menu = mnuMain
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object redQ2: TRichEdit
    Left = 0
    Top = 0
    Width = 688
    Height = 426
    Align = alClient
    ScrollBars = ssVertical
    TabOrder = 0
  end
  object mnuMain: TMainMenu
    Left = 24
    Top = 144
    object mnuOptionA: TMenuItem
      Caption = 'Option &A'
      OnClick = mnuOptionAClick
    end
    object mnuOptionB: TMenuItem
      Caption = 'Option &B'
      OnClick = mnuOptionBClick
    end
    object mnuQuit: TMenuItem
      Caption = '&Quit'
      OnClick = mnuQuitClick
    end
  end
end
