object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'String Functions'
  ClientHeight = 294
  ClientWidth = 482
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object lblFullName: TLabel
    Left = 8
    Top = 21
    Width = 276
    Height = 13
    Caption = 'Enter In Your Name and Surname, Seperated by a space:'
  end
  object edtFullName: TEdit
    Left = 304
    Top = 18
    Width = 161
    Height = 21
    TabOrder = 0
    Text = 'A.C Milan'
  end
  object redOutput: TRichEdit
    Left = 8
    Top = 40
    Width = 276
    Height = 246
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
  end
  object btnUpCase: TButton
    Left = 304
    Top = 45
    Width = 161
    Height = 25
    Caption = 'UpCase'
    TabOrder = 2
    OnClick = btnUpCaseClick
  end
  object btnUpperCase: TButton
    Left = 304
    Top = 76
    Width = 161
    Height = 25
    Caption = 'UpperCase'
    TabOrder = 3
    OnClick = btnUpperCaseClick
  end
  object btnLowerCase: TButton
    Left = 304
    Top = 107
    Width = 161
    Height = 25
    Caption = 'LowerCase'
    TabOrder = 4
    OnClick = btnLowerCaseClick
  end
  object btnCopy: TButton
    Left = 304
    Top = 138
    Width = 161
    Height = 25
    Caption = 'Copy'
    TabOrder = 5
    OnClick = btnCopyClick
  end
  object btnDelete: TButton
    Left = 304
    Top = 169
    Width = 161
    Height = 25
    Caption = 'Delete'
    TabOrder = 6
    OnClick = btnDeleteClick
  end
  object btnPos: TButton
    Left = 304
    Top = 200
    Width = 161
    Height = 25
    Caption = 'Pos'
    TabOrder = 7
    OnClick = btnPosClick
  end
  object btnIN: TButton
    Left = 304
    Top = 231
    Width = 161
    Height = 25
    Caption = 'IN'
    TabOrder = 8
    OnClick = btnINClick
  end
  object BitBtn1: TBitBtn
    Left = 304
    Top = 262
    Width = 161
    Height = 25
    DoubleBuffered = True
    Kind = bkClose
    ParentDoubleBuffered = False
    TabOrder = 9
  end
end
