object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'ID Program'
  ClientHeight = 246
  ClientWidth = 162
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 8
    Width = 118
    Height = 13
    Caption = 'Enter In Your ID Number'
  end
  object Label2: TLabel
    Left = 91
    Top = 91
    Width = 19
    Height = 13
    Caption = 'Day'
  end
  object Label3: TLabel
    Left = 8
    Top = 91
    Width = 30
    Height = 13
    Caption = 'Month'
  end
  object Year: TLabel
    Left = 8
    Top = 118
    Width = 22
    Height = 13
    Caption = 'Year'
  end
  object edtID: TEdit
    Left = 8
    Top = 27
    Width = 149
    Height = 21
    TabOrder = 0
  end
  object edtDay: TEdit
    Left = 116
    Top = 88
    Width = 41
    Height = 21
    TabOrder = 1
  end
  object edtMonth: TEdit
    Left = 44
    Top = 88
    Width = 41
    Height = 21
    TabOrder = 2
  end
  object edtYear: TEdit
    Left = 44
    Top = 115
    Width = 41
    Height = 21
    TabOrder = 3
  end
  object chkCitizen: TCheckBox
    Left = 8
    Top = 145
    Width = 129
    Height = 17
    Caption = 'South African Citizen'
    TabOrder = 4
  end
  object rgpGender: TRadioGroup
    Left = 8
    Top = 168
    Width = 149
    Height = 66
    Caption = 'Gender'
    Items.Strings = (
      'Male'
      'Female')
    TabOrder = 5
  end
  object btnValidate: TButton
    Left = 8
    Top = 54
    Width = 149
    Height = 25
    Caption = 'Validate'
    TabOrder = 6
    OnClick = btnValidateClick
  end
end
