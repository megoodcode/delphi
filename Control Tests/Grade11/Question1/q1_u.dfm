object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Q1 - Customer Portal'
  ClientHeight = 448
  ClientWidth = 592
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 16
    Top = 8
    Width = 128
    Height = 13
    Caption = '1.1 - User Code Generator'
  end
  object Label5: TLabel
    Left = 296
    Top = 8
    Width = 130
    Height = 13
    Caption = '1.2 - Transaction Interface'
  end
  object Label10: TLabel
    Left = 16
    Top = 237
    Width = 216
    Height = 13
    Caption = '1.3 - Social Responsibility Discount Calculator'
  end
  object Label14: TLabel
    Left = 296
    Top = 240
    Width = 132
    Height = 13
    Caption = '1.4 - Ingredient Description'
  end
  object pnlQ1_1: TPanel
    Left = 16
    Top = 23
    Width = 257
    Height = 201
    BorderWidth = 5
    BorderStyle = bsSingle
    TabOrder = 0
    object Label2: TLabel
      Left = 8
      Top = 19
      Width = 59
      Height = 13
      Caption = 'Buyer Type:'
    end
    object Label3: TLabel
      Left = 8
      Top = 59
      Width = 62
      Height = 13
      Caption = 'Buyer Name:'
    end
    object Label4: TLabel
      Left = 8
      Top = 131
      Width = 83
      Height = 13
      Caption = 'Generated Code:'
    end
    object cmbBuyerType: TComboBox
      Left = 104
      Top = 16
      Width = 137
      Height = 21
      ItemIndex = 0
      TabOrder = 0
      Text = 'DISTRIBUTOR'
      Items.Strings = (
        'DISTRIBUTOR'
        'WHOLESALER'
        'CUSTOMER')
    end
    object edtBuyerName: TEdit
      Left = 104
      Top = 56
      Width = 137
      Height = 21
      TabOrder = 1
    end
    object btnQ1_1: TButton
      Left = 8
      Top = 86
      Width = 75
      Height = 25
      Caption = 'Generate'
      TabOrder = 2
      OnClick = btnQ1_1Click
    end
    object edtGenCode: TEdit
      Left = 104
      Top = 128
      Width = 137
      Height = 21
      ReadOnly = True
      TabOrder = 3
    end
  end
  object pnlQ1_2: TPanel
    Left = 296
    Top = 22
    Width = 281
    Height = 203
    BorderStyle = bsSingle
    TabOrder = 1
    object Label6: TLabel
      Left = 8
      Top = 23
      Width = 79
      Height = 13
      Caption = 'Credit Available:'
    end
    object Label7: TLabel
      Left = 8
      Top = 63
      Width = 128
      Height = 13
      Caption = 'Select a product category:'
    end
    object Label8: TLabel
      Left = 8
      Top = 138
      Width = 104
      Height = 13
      Caption = 'Items you qualify for:'
    end
    object Label9: TLabel
      Left = 8
      Top = 168
      Width = 85
      Height = 13
      Caption = 'Remaining Credit:'
    end
    object sedCredit: TSpinEdit
      Left = 136
      Top = 20
      Width = 129
      Height = 22
      Increment = 100
      MaxValue = 20000
      MinValue = 100
      TabOrder = 0
      Value = 100
    end
    object lstProductsQ1_2: TListBox
      Left = 136
      Top = 63
      Width = 129
      Height = 66
      ItemHeight = 13
      Items.Strings = (
        'Crate of 12 (1.25 Litre)'
        'Pack of 6 (1 Litre)'
        'Pack of 4 (2 Litre)'
        'Pack of 4 (2.25 Litre)')
      TabOrder = 1
      OnClick = lstProductsQ1_2Click
    end
    object edtItemsQualify: TEdit
      Left = 136
      Top = 135
      Width = 129
      Height = 21
      ReadOnly = True
      TabOrder = 2
    end
    object edtCredRemaining: TEdit
      Left = 136
      Top = 162
      Width = 129
      Height = 21
      ReadOnly = True
      TabOrder = 3
    end
  end
  object pnlQ1_3: TPanel
    Left = 16
    Top = 256
    Width = 257
    Height = 185
    BorderStyle = bsSingle
    TabOrder = 2
    object Label11: TLabel
      Left = 8
      Top = 19
      Width = 100
      Height = 13
      Caption = 'Transaction Amount:'
    end
    object Label12: TLabel
      Left = 125
      Top = 53
      Width = 45
      Height = 13
      Caption = 'Discount:'
    end
    object Label13: TLabel
      Left = 125
      Top = 109
      Width = 52
      Height = 13
      Caption = 'Final Price:'
    end
    object sedTransAmount: TSpinEdit
      Left = 123
      Top = 10
      Width = 110
      Height = 22
      Increment = 25
      MaxValue = 20000
      MinValue = 100
      TabOrder = 0
      Value = 100
    end
    object edtDiscount: TEdit
      Left = 125
      Top = 72
      Width = 121
      Height = 21
      ReadOnly = True
      TabOrder = 1
    end
    object edtFinalPrice: TEdit
      Left = 125
      Top = 128
      Width = 121
      Height = 21
      ReadOnly = True
      TabOrder = 2
    end
  end
  object rgpDiscQ1_3: TRadioGroup
    Left = 26
    Top = 309
    Width = 111
    Height = 113
    Caption = 'Discount Category'
    ItemIndex = 0
    Items.Strings = (
      'None'
      'Urban School'
      'Rural School'
      'Rural Shop'
      'Informal Trader')
    TabOrder = 3
    OnClick = rgpDiscQ1_3Click
  end
  object pnlQ1_4: TPanel
    Left = 296
    Top = 257
    Width = 281
    Height = 183
    BorderStyle = bsSingle
    TabOrder = 4
    object Label15: TLabel
      Left = 8
      Top = 16
      Width = 54
      Height = 13
      Caption = 'Ingredient:'
    end
    object cmbIngredQ1_4: TComboBox
      Left = 120
      Top = 8
      Width = 145
      Height = 21
      ItemIndex = 0
      TabOrder = 0
      Text = 'NONE'
      OnChange = cmbIngredQ1_4Change
      Items.Strings = (
        'NONE'
        'Acesulfame Potassium'
        'Beta-Carotene'
        'Calcium Carbonate'
        'EDTA'
        'Green Tea'
        'Lactic Acid'
        'Niacin / Niacinamide'
        'Pantothenic Acid'
        'Saccharin'
        'Taurine'
        'Yerba Mate Extract')
    end
    object memOutput: TMemo
      Left = 8
      Top = 35
      Width = 257
      Height = 134
      ReadOnly = True
      TabOrder = 1
    end
  end
end
