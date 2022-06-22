object frmCarRent: TfrmCarRent
  Left = 0
  Top = 0
  Caption = 'Car Rent'
  ClientHeight = 577
  ClientWidth = 735
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  Position = poDesktopCenter
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 8
    Top = 8
    Width = 721
    Height = 225
    ActivePage = TabSheet1
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = 'tblRentals'
      ExplicitLeft = -256
      ExplicitTop = 0
      ExplicitHeight = 525
      object dbgRentals: TDBGrid
        Left = 3
        Top = 19
        Width = 696
        Height = 153
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        OnCellClick = dbgRentalsCellClick
      end
    end
  end
  object grpNavigation: TGroupBox
    Left = 8
    Top = 254
    Width = 201
    Height = 113
    Caption = 'Navigation'
    TabOrder = 1
    object btnRentalsFirst: TButton
      Left = 16
      Top = 32
      Width = 75
      Height = 25
      Caption = 'First'
      TabOrder = 0
      OnClick = btnRentalsFirstClick
    end
    object btnRentalsLast: TButton
      Left = 16
      Top = 63
      Width = 75
      Height = 25
      Caption = 'Last'
      TabOrder = 1
      OnClick = btnRentalsLastClick
    end
    object btnRentalsNext: TButton
      Left = 97
      Top = 32
      Width = 75
      Height = 25
      Caption = 'Next'
      TabOrder = 2
      OnClick = btnRentalsNextClick
    end
    object btnRentalsPrior: TButton
      Left = 97
      Top = 63
      Width = 75
      Height = 25
      Caption = 'Prior'
      TabOrder = 3
      OnClick = btnRentalsPriorClick
    end
  end
  object redOutput: TRichEdit
    Left = 226
    Top = 448
    Width = 288
    Height = 113
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
  end
  object grpSorting: TGroupBox
    Left = 226
    Top = 254
    Width = 288
    Height = 75
    Caption = 'Sorting'
    Color = clBtnFace
    ParentBackground = False
    ParentColor = False
    TabOrder = 3
    object lblSort: TLabel
      Left = 11
      Top = 30
      Width = 38
      Height = 13
      Caption = 'Sort By '
    end
    object cmbRentalColumns: TComboBox
      Left = 65
      Top = 30
      Width = 96
      Height = 21
      TabOrder = 0
      OnChange = cmbRentalColumnsChange
    end
    object chkAsc: TCheckBox
      Left = 176
      Top = 32
      Width = 41
      Height = 17
      Caption = 'Asc'
      TabOrder = 1
    end
    object chkDesc: TCheckBox
      Left = 223
      Top = 32
      Width = 49
      Height = 17
      Caption = 'Desc'
      TabOrder = 2
    end
  end
  object btnPrint: TButton
    Left = 8
    Top = 386
    Width = 201
    Height = 25
    Caption = 'Print Current Record'
    TabOrder = 4
    OnClick = btnPrintClick
  end
  object btnTotalStartKm: TButton
    Left = 8
    Top = 417
    Width = 201
    Height = 25
    Caption = 'Total Start Km'
    TabOrder = 5
    OnClick = btnTotalStartKmClick
  end
  object btnTotalRecords: TButton
    Left = 8
    Top = 448
    Width = 201
    Height = 25
    Caption = 'Total Records In Table'
    TabOrder = 6
    OnClick = btnTotalRecordsClick
  end
  object btnRecordCount: TButton
    Left = 8
    Top = 479
    Width = 201
    Height = 25
    Caption = 'Record Count'
    TabOrder = 7
    OnClick = btnRecordCountClick
  end
  object grpInsert: TGroupBox
    Left = 520
    Top = 254
    Width = 207
    Height = 315
    Caption = 'Insert A Record'
    TabOrder = 8
    object lblVechileID: TLabel
      Left = 16
      Top = 48
      Width = 50
      Height = 13
      Caption = 'Vehicle_ID'
    end
    object lblDriver_ID: TLabel
      Left = 16
      Top = 80
      Width = 46
      Height = 13
      Caption = 'Driver_ID'
    end
    object lblStart_Km: TLabel
      Left = 16
      Top = 107
      Width = 44
      Height = 13
      Caption = 'Start_Km'
    end
    object lblStop_Km: TLabel
      Left = 16
      Top = 134
      Width = 42
      Height = 13
      Caption = 'Stop_Km'
    end
    object lblStart_Date: TLabel
      Left = 16
      Top = 168
      Width = 50
      Height = 13
      Caption = 'Start Date'
    end
    object lblStop_Date: TLabel
      Left = 16
      Top = 192
      Width = 48
      Height = 13
      Caption = 'Stop Date'
    end
    object lblRental_ID: TLabel
      Left = 16
      Top = 24
      Width = 48
      Height = 13
      Caption = 'Rental_ID'
    end
    object edtVehicle_ID: TEdit
      Left = 83
      Top = 46
      Width = 121
      Height = 21
      TabOrder = 0
    end
    object edtDriver_ID: TEdit
      Left = 83
      Top = 73
      Width = 121
      Height = 21
      TabOrder = 1
    end
    object edtStart_Km: TEdit
      Left = 83
      Top = 100
      Width = 121
      Height = 21
      TabOrder = 2
    end
    object edtStop_Km: TEdit
      Left = 83
      Top = 127
      Width = 121
      Height = 21
      TabOrder = 3
    end
    object edtStart_Date: TEdit
      Left = 83
      Top = 162
      Width = 121
      Height = 21
      TabOrder = 4
    end
    object edtStop_Date: TEdit
      Left = 83
      Top = 189
      Width = 121
      Height = 21
      TabOrder = 5
    end
    object btnInsert: TButton
      Left = 16
      Top = 224
      Width = 188
      Height = 25
      Caption = 'Insert'
      TabOrder = 6
      OnClick = btnInsertClick
    end
    object btnInsertHardCode: TButton
      Left = 16
      Top = 255
      Width = 188
      Height = 25
      Caption = 'Insert Hard Code'
      TabOrder = 7
      OnClick = btnInsertHardCodeClick
    end
    object edtRental_ID: TEdit
      Left = 83
      Top = 19
      Width = 121
      Height = 21
      Enabled = False
      TabOrder = 8
    end
    object btnEdit: TButton
      Left = 16
      Top = 287
      Width = 188
      Height = 25
      Caption = 'Edit'
      TabOrder = 9
      OnClick = btnEditClick
    end
  end
  object btnDelete: TButton
    Left = 8
    Top = 510
    Width = 201
    Height = 25
    Caption = 'Delete Selected Record'
    TabOrder = 9
    OnClick = btnDeleteClick
  end
  object btnDeleteYearTwenty: TButton
    Left = 8
    Top = 544
    Width = 201
    Height = 25
    Caption = 'Delete Start Date Year 2020'
    TabOrder = 10
    OnClick = btnDeleteYearTwentyClick
  end
  object MainMenu1: TMainMenu
    Left = 65200
    Top = 136
    object File1: TMenuItem
      Caption = 'File'
      object RestoreDatabase1: TMenuItem
        Caption = 'Restore Database'
        OnClick = RestoreDatabase1Click
      end
      object Close1: TMenuItem
        Caption = 'Close'
        OnClick = Close1Click
      end
    end
  end
end
