object Form2: TForm2
  Left = 0
  Top = 0
  Caption = 'Form2'
  ClientHeight = 853
  ClientWidth = 912
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
    Left = 55
    Top = 60
    Width = 87
    Height = 32
    Caption = 'Posici'#243'n'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -24
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 392
    Top = 60
    Width = 101
    Height = 32
    Caption = 'Elemento'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -24
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object resultado: TLabel
    Left = 50
    Top = 744
    Width = 104
    Height = 32
    Caption = 'Resultado'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -24
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel
    Left = 64
    Top = 224
    Width = 58
    Height = 15
    Caption = 'Columna 0'
  end
  object Label4: TLabel
    Left = 17
    Top = 264
    Width = 27
    Height = 15
    Caption = 'Fila 0'
  end
  object posicion: TEdit
    Left = 55
    Top = 114
    Width = 121
    Height = 40
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -24
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
  end
  object elemento: TEdit
    Left = 392
    Top = 114
    Width = 169
    Height = 40
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -24
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
  end
  object vectorstr: TStringGrid
    Left = 50
    Top = 264
    Width = 815
    Height = 65
    ColCount = 6
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
    TabOrder = 2
    OnDrawCell = vectorstrDrawCell
  end
  object ScrollBarVect: TScrollBar
    Left = 50
    Top = 335
    Width = 815
    Height = 17
    PageSize = 0
    TabOrder = 3
    OnChange = ScrollBarVectChange
  end
  object BitBtn1: TBitBtn
    Left = 17
    Top = 800
    Width = 94
    Height = 33
    Kind = bkClose
    NumGlyphs = 2
    TabOrder = 4
  end
  object StringGridMatr: TStringGrid
    Left = 50
    Top = 384
    Width = 815
    Height = 331
    ColCount = 1
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
    TabOrder = 5
    OnDrawCell = StringGridMatrDrawCell
  end
  object ScrollBarMatr: TScrollBar
    Left = 50
    Top = 721
    Width = 815
    Height = 17
    PageSize = 0
    TabOrder = 6
    OnChange = ScrollBarMatrChange
  end
  object ScrollBar1: TScrollBar
    Left = 871
    Top = 384
    Width = 17
    Height = 323
    Kind = sbVertical
    PageSize = 0
    TabOrder = 7
    OnChange = ScrollBar1Change
  end
  object MainMenu1: TMainMenu
    Left = 760
    Top = 24
    object Vectores1: TMenuItem
      Caption = 'Vectores Reales'
      object Registrar1: TMenuItem
        Caption = 'Registrar'
        OnClick = Registrar1Click
      end
      object Mostrartodo1: TMenuItem
        Caption = 'Mostrar todo'
        OnClick = Mostrartodo1Click
      end
      object BurbujaAscendente1: TMenuItem
        Caption = 'Burbuja Ascendente'
        OnClick = BurbujaAscendente1Click
      end
      object EliminarnElementoPosicion1: TMenuItem
        Caption = 'Eliminar n Elemento Posicion'
        OnClick = EliminarnElementoPosicion1Click
      end
      object ModificarelementoPosEle1: TMenuItem
        Caption = 'Modificar elemento Pos Ele'
        OnClick = ModificarelementoPosEle1Click
      end
      object MostrarVectorPos2: TMenuItem
        Caption = 'Mostrar Vector Pos'
        OnClick = MostrarVectorPos2Click
      end
      object BurbujaDescendente1: TMenuItem
        Caption = 'Burbuja Descendente'
        OnClick = BurbujaDescendente1Click
      end
      object QuicjShort1: TMenuItem
        Caption = 'QuickShort'
        OnClick = QuicjShort1Click
      end
      object MergeSort1: TMenuItem
        Caption = 'MergeSort'
        OnClick = MergeSort1Click
      end
      object BusquedaSecuencial1: TMenuItem
        Caption = 'Busqueda Secuencial'
        OnClick = BusquedaSecuencial1Click
      end
      object BuquedaBinaria1: TMenuItem
        Caption = 'Buqueda Binaria'
        OnClick = BuquedaBinaria1Click
      end
    end
    object Matrices1: TMenuItem
      Caption = 'Matrices'
    end
    object VectoresString1: TMenuItem
      Caption = 'Vectores String'
      object Registrar2: TMenuItem
        Caption = 'Registrar'
        OnClick = Registrar2Click
      end
      object Registrar3: TMenuItem
        Caption = 'Mostrar'
        OnClick = Registrar3Click
      end
      object VectoresString2: TMenuItem
        Caption = '3 Contar cuantos terminan y comienzan vocal'
        OnClick = VectoresString2Click
      end
      object N4Contarcuantasvecesserepiteunelem1: TMenuItem
        Caption = '4 Contar cuantas veces se repite un elem'
        OnClick = N4Contarcuantasvecesserepiteunelem1Click
      end
    end
  end
end
