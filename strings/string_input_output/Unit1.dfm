object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'String Input Output'
  ClientHeight = 345
  ClientWidth = 630
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
  object grbInput: TGroupBox
    Left = 8
    Top = 8
    Width = 402
    Height = 329
    Caption = 'Input Components'
    TabOrder = 0
    object Grade: TLabel
      Left = 16
      Top = 24
      Width = 51
      Height = 13
      Caption = 'ComboBox'
    end
    object Label1: TLabel
      Left = 16
      Top = 74
      Width = 34
      Height = 13
      Caption = 'ListBox'
    end
    object lblTEdIt: TLabel
      Left = 185
      Top = 152
      Width = 24
      Height = 13
      Caption = 'TEdit'
    end
    object lblCheckBox: TLabel
      Left = 16
      Top = 206
      Width = 53
      Height = 13
      Caption = 'TCheckBox'
    end
    object chkLibrary: TCheckBox
      Left = 16
      Top = 225
      Width = 97
      Height = 17
      Caption = 'Library Access'
      TabOrder = 0
    end
    object cmbGrade: TComboBox
      Left = 16
      Top = 43
      Width = 145
      Height = 21
      TabOrder = 1
      Text = 'Grade 10'
      Items.Strings = (
        'Grade 10'
        'Grade 11'
        'Grade 12')
    end
    object edtName: TEdit
      Left = 185
      Top = 171
      Width = 121
      Height = 21
      TabOrder = 2
      Text = 'John Doe'
    end
    object lstSubject: TListBox
      Left = 16
      Top = 93
      Width = 121
      Height = 97
      ItemHeight = 13
      Items.Strings = (
        'Mathematics'
        'IT'
        'Biology'
        'Science'
        'Life Orientation'
        'History'
        'Geography'
        'Afrikaans'
        'Zulu'
        'English')
      TabOrder = 3
    end
    object rgpStudent: TRadioGroup
      Left = 184
      Top = 24
      Width = 185
      Height = 105
      Caption = 'RadioGroup'
      Items.Strings = (
        'Part Time Student'
        'Full Time Student')
      TabOrder = 4
    end
    object btnEnroll: TButton
      Left = 16
      Top = 257
      Width = 354
      Height = 40
      Caption = 'Enroll'
      TabOrder = 5
      OnClick = btnEnrollClick
    end
  end
  object grbOutput: TGroupBox
    Left = 431
    Top = 8
    Width = 186
    Height = 329
    Caption = 'Output Components'
    TabOrder = 1
    object lblOutputTEdit: TLabel
      Left = 16
      Top = 24
      Width = 24
      Height = 13
      Caption = 'TEdit'
    end
    object lblRichEdit: TLabel
      Left = 16
      Top = 74
      Width = 38
      Height = 13
      Caption = 'RichEdit'
    end
    object lblOutput: TLabel
      Left = 22
      Top = 206
      Width = 147
      Height = 13
      Caption = 'lblOutput'
    end
    object edtOutput: TEdit
      Left = 19
      Top = 43
      Width = 121
      Height = 21
      TabOrder = 0
    end
    object redOutput: TRichEdit
      Left = 16
      Top = 93
      Width = 153
      Height = 89
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
  end
end
