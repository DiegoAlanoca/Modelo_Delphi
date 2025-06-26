object Form4: TForm4
  Left = 0
  Top = 0
  Caption = 'Form4'
  ClientHeight = 637
  ClientWidth = 1192
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
    Left = 18
    Top = 56
    Width = 74
    Height = 25
    Caption = 'Posicion'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 378
    Top = 56
    Width = 83
    Height = 25
    Caption = 'Elemento'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object resultado: TLabel
    Left = 18
    Top = 584
    Width = 88
    Height = 25
    Caption = 'Resultado'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object ScrollBarVect: TScrollBar
    Left = 18
    Top = 191
    Width = 1023
    Height = 17
    PageSize = 0
    Position = 11
    TabOrder = 0
    OnChange = ScrollBarVectChange
  end
  object VectorForm: TStringGrid
    Left = 18
    Top = 120
    Width = 1023
    Height = 65
    ColCount = 11
    DefaultColWidth = 90
    DefaultRowHeight = 40
    FixedColor = clWhite
    FixedCols = 0
    RowCount = 1
    FixedRows = 0
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Segoe UI'
    Font.Style = []
    GridLineWidth = 2
    Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goEditing, goFixedRowDefAlign]
    ParentFont = False
    TabOrder = 1
  end
  object StringGridMatr: TStringGrid
    Left = 18
    Top = 228
    Width = 1023
    Height = 313
    ColCount = 4
    DefaultColWidth = 90
    DefaultRowHeight = 40
    FixedColor = clWhite
    FixedCols = 0
    RowCount = 4
    FixedRows = 0
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Segoe UI'
    Font.Style = []
    GridLineWidth = 2
    Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goEditing, goFixedRowDefAlign]
    ParentFont = False
    TabOrder = 2
  end
  object ScrollBarMatr: TScrollBar
    Left = 18
    Top = 539
    Width = 1023
    Height = 17
    PageSize = 0
    Position = 4
    TabOrder = 3
    OnChange = ScrollBarMatrChange
  end
  object ScrollBar1: TScrollBar
    Left = 1047
    Top = 228
    Width = 17
    Height = 313
    Kind = sbVertical
    PageSize = 0
    Position = 4
    TabOrder = 4
    OnChange = ScrollBar1Change
  end
  object posicion: TEdit
    Left = 112
    Top = 57
    Width = 105
    Height = 28
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 5
  end
  object elemento: TEdit
    Left = 475
    Top = 57
    Width = 238
    Height = 28
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 6
  end
  object BitBtn1: TBitBtn
    Left = 944
    Top = 576
    Width = 97
    Height = 37
    DragKind = dkDock
    Kind = bkClose
    NumGlyphs = 2
    TabOrder = 7
  end
  object fila: TEdit
    Left = 744
    Top = 21
    Width = 160
    Height = 36
    TabOrder = 8
    Text = 'filai'
  end
  object columnai: TEdit
    Left = 744
    Top = 63
    Width = 160
    Height = 34
    TabOrder = 9
    Text = 'columnai'
  end
  object direccion: TEdit
    Left = 928
    Top = 21
    Width = 121
    Height = 34
    TabOrder = 10
    Text = 'direccion'
  end
  object palabra: TEdit
    Left = 928
    Top = 71
    Width = 233
    Height = 34
    TabOrder = 11
    Text = 'palabra'
  end
  object MainMenu1: TMainMenu
    Left = 600
    Top = 16
    object VectoresReales1: TMenuItem
      Caption = 'Vectores Reales'
      object Registar1: TMenuItem
        Caption = 'Registrar'
        OnClick = Registar1Click
      end
      object Mostrar1: TMenuItem
        Caption = 'Mostrar'
        OnClick = Mostrar1Click
      end
      object QuickShortAscendente1: TMenuItem
        Caption = 'QuickShort Ascendente'
        OnClick = QuickShortAscendente1Click
      end
      object ejercicio1: TMenuItem
        Caption = 'Ejercicio Temperatura'
        OnClick = ejercicio1Click
      end
    end
    object VectoresString1: TMenuItem
      Caption = 'Vectores String'
      object Registrar1: TMenuItem
        Caption = 'Registrar'
        OnClick = Registrar1Click
      end
      object Mostar1: TMenuItem
        Caption = 'Mostrar'
        OnClick = Mostar1Click
      end
    end
    object MatricesReales1: TMenuItem
      Caption = 'Matrices Reales'
      object Registrar2: TMenuItem
        Caption = 'Registrar'
        OnClick = Registrar2Click
      end
      object Registrar3: TMenuItem
        Caption = 'Mostrar'
        OnClick = Registrar3Click
      end
    end
    object MatricesChar1: TMenuItem
      Caption = 'Matrices Char'
      object Registrar4: TMenuItem
        Caption = 'Registrar'
        OnClick = Registrar4Click
      end
      object Mostrar2: TMenuItem
        Caption = 'Mostrar'
        OnClick = Mostrar2Click
      end
    end
    object Examen1: TMenuItem
      Caption = 'Examen'
      object Examen2: TMenuItem
        Caption = 'Examen'
        OnClick = Examen2Click
      end
      object RedimensionarMatriz1: TMenuItem
        Caption = 'Redimensionar Matriz'
        OnClick = RedimensionarMatriz1Click
      end
      object VaciarMatriz1: TMenuItem
        Caption = 'Vaciar Matriz'
        OnClick = VaciarMatriz1Click
      end
    end
  end
end
