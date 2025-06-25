object Form2: TForm2
  Left = 0
  Top = 0
  Caption = 'Form2'
  ClientHeight = 680
  ClientWidth = 1019
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
    Left = 50
    Top = 8
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
    Left = 387
    Top = 8
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
    Top = 592
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
    Top = 99
    Width = 58
    Height = 15
    Caption = 'Columna 0'
  end
  object Label4: TLabel
    Left = 8
    Top = 120
    Width = 27
    Height = 15
    Caption = 'Fila 0'
  end
  object posicion: TEdit
    Left = 50
    Top = 46
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
    Left = 387
    Top = 46
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
    Top = 120
    Width = 815
    Height = 65
    ColCount = 9
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
    Top = 191
    Width = 815
    Height = 17
    PageSize = 0
    TabOrder = 3
    OnChange = ScrollBarVectChange
  end
  object BitBtn1: TBitBtn
    Left = 883
    Top = 23
    Width = 120
    Height = 41
    Kind = bkClose
    NumGlyphs = 2
    TabOrder = 4
  end
  object StringGridMatr: TStringGrid
    Left = 50
    Top = 232
    Width = 815
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
    TabOrder = 5
    OnDrawCell = StringGridMatrDrawCell
  end
  object ScrollBarMatr: TScrollBar
    Left = 50
    Top = 551
    Width = 815
    Height = 17
    PageSize = 0
    TabOrder = 6
    OnChange = ScrollBarMatrChange
  end
  object ScrollBar1: TScrollBar
    Left = 871
    Top = 232
    Width = 17
    Height = 313
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
      object InsertarElemenPos2: TMenuItem
        Caption = 'Insertar Elem en Pos'
        OnClick = InsertarElemenPos2Click
      end
      object N5Insertarstringdereales2361: TMenuItem
        Caption = '5 Insertar string de reales 2,3,6,...'
        OnClick = N5Insertarstringdereales2361Click
      end
      object N6ordenarprimosynoprimos1: TMenuItem
        Caption = '6 ordenar primos y no primos'
        OnClick = N6ordenarprimosynoprimos1Click
      end
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
      object MostrarvectorCarPos1: TMenuItem
        Caption = 'Mostrar vector Char Pos'
        OnClick = MostrarvectorCarPos1Click
      end
      object VectoresString2: TMenuItem
        Caption = '3 Contar cuantos terminan y comienzan vocal'
        OnClick = VectoresString2Click
      end
      object N4Contarcuantasvecesserepiteunelem1: TMenuItem
        Caption = '4 Contar cuantas veces se repite un elem'
        OnClick = N4Contarcuantasvecesserepiteunelem1Click
      end
      object Stringquickshort1: TMenuItem
        Caption = 'String quick short Descendente'
        OnClick = Stringquickshort1Click
      end
      object StringquickshortAscendente1: TMenuItem
        Caption = 'String quick short Ascendente'
        OnClick = StringquickshortAscendente1Click
      end
      object ModeloExamen71: TMenuItem
        Caption = 'Modelo Examen 7'
        OnClick = ModeloExamen71Click
      end
      object ModeloExamen91: TMenuItem
        Caption = 'Modelo Examen 9 Incompleto'
        OnClick = ModeloExamen91Click
      end
      object ModeloGoogle11: TMenuItem
        Caption = 'Modelo Google 1'
        OnClick = ModeloGoogle11Click
      end
      object ModeloGoogle21: TMenuItem
        Caption = 'Modelo Google 2'
      end
      object ContarcuantasVocalestieneSinrepetir1: TMenuItem
        Caption = 'Contar cuantas Vocales tiene Sin repetir (Elemento)'
        OnClick = ContarcuantasVocalestieneSinrepetir1Click
      end
    end
    object Matrices1: TMenuItem
      Caption = 'Matrices Reales'
      object Registrar4: TMenuItem
        Caption = 'Registrar'
        OnClick = Registrar4Click
      end
      object Mostrar1: TMenuItem
        Caption = 'Mostrar Matriz'
        OnClick = Mostrar1Click
      end
      object MostrarFilas1: TMenuItem
        Caption = 'Mostrar Filas'
        OnClick = MostrarFilas1Click
      end
      object MostrarColumnas1: TMenuItem
        Caption = 'Mostrar Columnas'
        OnClick = MostrarColumnas1Click
      end
      object MostrarColumnas2: TMenuItem
        Caption = 'Eliminar Fila Pos'
        OnClick = MostrarColumnas2Click
      end
      object EliminarColumnasPos1: TMenuItem
        Caption = 'Eliminar Columnas Pos'
        OnClick = EliminarColumnasPos1Click
      end
      object InsertarFilaPos1: TMenuItem
        Caption = 'Insertar Fila Pos'
        OnClick = InsertarFilaPos1Click
      end
      object InsertarFilaPos2: TMenuItem
        Caption = 'Insertar Columna Pos'
        OnClick = InsertarFilaPos2Click
      end
      object Modelo11: TMenuItem
        Caption = 'Modelo 1'
        OnClick = Modelo11Click
      end
      object Modelo21: TMenuItem
        Caption = 'Modelo 2'
        OnClick = Modelo21Click
      end
      object Modelo31: TMenuItem
        Caption = 'Modelo 3'
        OnClick = Modelo31Click
      end
      object Modelo41: TMenuItem
        Caption = 'Modelo 4'
        OnClick = Modelo41Click
      end
    end
    object MatricesChar1: TMenuItem
      Caption = 'Matrices Char'
      object Registrar5: TMenuItem
        Caption = 'Registrar'
        OnClick = Registrar5Click
      end
      object MostrarMatriz1: TMenuItem
        Caption = 'Mostrar Matriz'
        OnClick = MostrarMatriz1Click
      end
      object Modelo5Elem1: TMenuItem
        Caption = 'Modelo 5 Elem'
        OnClick = Modelo5Elem1Click
      end
      object Modelo61: TMenuItem
        Caption = 'Modelo 6 Incompleto'
      end
    end
  end
end
