object frmQuestion3: TfrmQuestion3
  Left = 0
  Top = 0
  Caption = 'Question 3'
  ClientHeight = 346
  ClientWidth = 735
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -15
  Font.Name = 'Arial'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 17
  object grpQ3_2_1: TGroupBox
    Left = 8
    Top = 8
    Width = 305
    Height = 160
    Caption = 'Question 3.2.1'
    TabOrder = 0
    object lblNameOfPlayer: TLabel
      Left = 36
      Top = 32
      Width = 106
      Height = 17
      Caption = 'Name of player: '
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object Label1: TLabel
      Left = 36
      Top = 68
      Width = 109
      Height = 17
      Caption = 'Weight of player:'
    end
    object Label3: TLabel
      Left = 232
      Top = 68
      Width = 15
      Height = 17
      Caption = 'kg'
    end
    object edtNameOfPlayer: TEdit
      Left = 152
      Top = 29
      Width = 119
      Height = 25
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      Text = 'Olaff'
    end
    object edtWeightOfPlayer: TEdit
      Left = 152
      Top = 65
      Width = 74
      Height = 25
      TabOrder = 1
      Text = '70.3'
    end
    object btnQ3_2_1: TButton
      Left = 36
      Top = 112
      Width = 235
      Height = 35
      Caption = '3.2.1 - Instantiate object       '
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnClick = btnQ3_2_1Click
    end
  end
  object grpQ3_2_2: TGroupBox
    Left = 8
    Top = 174
    Width = 305
    Height = 163
    Caption = 'Question 3.2.2'
    TabOrder = 1
    object btnQ3_2_2: TButton
      Left = 36
      Top = 30
      Width = 235
      Height = 35
      Caption = '3.2.2 - Calculate BMI'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = btnQ3_2_2Click
    end
    object redQ3_2_2: TRichEdit
      Left = 36
      Top = 74
      Width = 237
      Height = 83
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
  end
  object grpQ3_2_3: TGroupBox
    Left = 319
    Top = 8
    Width = 408
    Height = 193
    Caption = 'Question 3.2.3'
    TabOrder = 2
    object rgpQ3_2_3: TRadioGroup
      Left = 78
      Top = 29
      Width = 235
      Height = 48
      Caption = 'Select score'
      Columns = 3
      ItemIndex = 0
      Items.Strings = (
        '2'
        '3'
        '5')
      TabOrder = 0
    end
    object btnQ3_2_3: TButton
      Left = 78
      Top = 91
      Width = 235
      Height = 33
      Caption = '3.2.3 - Update score           '
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = btnQ3_2_3Click
    end
    object pnlQ3_2_3: TPanel
      Left = 78
      Top = 139
      Width = 237
      Height = 36
      TabOrder = 2
    end
  end
  object grpQ3_2_4: TGroupBox
    Left = 319
    Top = 204
    Width = 408
    Height = 133
    Caption = 'Question 3.2.4'
    TabOrder = 3
    object lblQ3_2_4: TLabel
      Left = 126
      Top = 96
      Width = 115
      Height = 17
      Caption = 'Result of eligibility'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object btnQ3_2_4: TButton
      Left = 78
      Top = 39
      Width = 235
      Height = 35
      Caption = '3.2.4 - Eligible for selection'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      WordWrap = True
      OnClick = btnQ3_2_4Click
    end
  end
end
