object Form3: TForm3
  Left = 0
  Top = 0
  Caption = 'Form3'
  ClientHeight = 559
  ClientWidth = 835
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Menu = MainMenu1
  OnCreate = FormCreate
  TextHeight = 15
  object Label1: TLabel
    Left = 24
    Top = 40
    Width = 50
    Height = 21
    Caption = 'Dato 1'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 24
    Top = 75
    Width = 50
    Height = 21
    Caption = 'Dato 2'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 24
    Top = 110
    Width = 50
    Height = 21
    Caption = 'Dato 3'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label4: TLabel
    Left = 440
    Top = 38
    Width = 50
    Height = 21
    Caption = 'Dato 4'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label5: TLabel
    Left = 440
    Top = 75
    Width = 50
    Height = 21
    Caption = 'Dato 5'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label6: TLabel
    Left = 440
    Top = 110
    Width = 50
    Height = 21
    Caption = 'Dato 6'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object SGridLista: TStringGrid
    Left = 8
    Top = 160
    Width = 801
    Height = 305
    ColCount = 7
    FixedCols = 0
    RowCount = 2
    TabOrder = 0
    ColWidths = (
      133
      116
      122
      127
      110
      94
      87)
  end
  object BitBtn1: TBitBtn
    Left = 8
    Top = 487
    Width = 89
    Height = 33
    Kind = bkClose
    NumGlyphs = 2
    TabOrder = 1
  end
  object Edit1: TEdit
    Left = 112
    Top = 38
    Width = 297
    Height = 28
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
  end
  object Edit2: TEdit
    Left = 112
    Top = 73
    Width = 297
    Height = 28
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 3
  end
  object Edit3: TEdit
    Left = 112
    Top = 108
    Width = 297
    Height = 28
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 4
  end
  object Edit4: TEdit
    Left = 512
    Top = 36
    Width = 297
    Height = 28
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 5
  end
  object Edit5: TEdit
    Left = 512
    Top = 73
    Width = 297
    Height = 28
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 6
  end
  object Edit6: TEdit
    Left = 512
    Top = 107
    Width = 297
    Height = 28
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 7
  end
  object Button1: TButton
    Left = 726
    Top = 487
    Width = 83
    Height = 34
    Caption = 'Registrar'
    TabOrder = 8
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 622
    Top = 487
    Width = 83
    Height = 34
    Caption = 'Ord. Desc'
    TabOrder = 9
    OnClick = Button2Click
  end
  object MainMenu1: TMainMenu
    Left = 376
    Top = 496
    object MetodosyFunciones1: TMenuItem
      Caption = 'Metodos y Funciones'
      object MostrarRegistros1: TMenuItem
        Caption = 'Mostrar Registros'
        OnClick = MostrarRegistros1Click
      end
      object MetodosyFunciones2: TMenuItem
        Caption = 'QuickShort Dato 6 Ascendente'
        OnClick = MetodosyFunciones2Click
      end
      object QuickShortDato6Descendete1: TMenuItem
        Caption = 'QuickShort Dato 6 Descendete'
        OnClick = QuickShortDato6Descendete1Click
      end
      object BurbujaDescendente1: TMenuItem
        Caption = 'Burbuja Descendente'
        OnClick = BurbujaDescendente1Click
      end
    end
  end
end
