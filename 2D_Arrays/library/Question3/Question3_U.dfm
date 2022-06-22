object frmQ3: TfrmQ3
  Left = 0
  Top = 0
  Caption = 'Question 3'
  ClientHeight = 469
  ClientWidth = 713
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  object Image1: TImage
    Left = 716
    Top = 22
    Width = 49
    Height = 49
    Picture.Data = {
      0954506E67496D61676589504E470D0A1A0A0000000D49484452000000370000
      003A08060000001445C198000000017352474200AECE1CE90000000467414D41
      0000B18F0BFC6105000000097048597300000EC300000EC301C76FA864000000
      584944415478DAEDCF010D00200CC030EEDFF213D051B23AE8ECEE3D9F9A72A8
      72AA72AA72AA72AA72AA72AA72AA72AA72AA72AA72AA72AA72AA72AA72AA72AA
      72AA72AA72AA72AA72AA72AA72AA72AA72AA72AA72AAAF730F5998E549786858
      640000000049454E44AE426082}
  end
  object redOutputQ3: TRichEdit
    Left = 8
    Top = 168
    Width = 697
    Height = 297
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
  end
  object grpQ3_2: TGroupBox
    Left = 327
    Top = 54
    Width = 378
    Height = 108
    Caption = 'New staff schedule'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    object btnQ3_2: TButton
      Left = 28
      Top = 42
      Width = 245
      Height = 37
      Caption = '3.2 - Create new staff schedule'
      TabOrder = 0
      OnClick = btnQ3_2Click
    end
  end
  object grpQ3_1: TGroupBox
    Left = 8
    Top = 54
    Width = 313
    Height = 108
    Caption = 'Schedule details'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    object cmbStaff: TComboBox
      Left = 83
      Top = 42
      Width = 166
      Height = 25
      TabOrder = 0
      Text = '3.1 - Select name'
      OnChange = cmbStaffChange
      Items.Strings = (
        'Trevor'
        'Nkosi'
        'Tamzin'
        'Anette'
        'Bongi'
        'Simon')
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = -6
    Width = 710
    Height = 54
    Caption = 'Library staff schedule'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 3
  end
end
