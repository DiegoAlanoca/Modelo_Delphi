object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 402
  ClientWidth = 805
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -24
  Font.Name = 'Segoe UI'
  Font.Style = []
  Menu = MainMenu1
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 32
  object Label1: TLabel
    Left = 26
    Top = 224
    Width = 92
    Height = 45
    Margins.Left = 2
    Margins.Top = 2
    Margins.Right = 2
    Margins.Bottom = 2
    Caption = 'Label1'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -32
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 19
    Top = 111
    Width = 7
    Height = 17
    Margins.Left = 2
    Margins.Top = 2
    Margins.Right = 2
    Margins.Bottom = 2
    Caption = 'n'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel
    Left = 19
    Top = 37
    Width = 6
    Height = 17
    Margins.Left = 2
    Margins.Top = 2
    Margins.Right = 2
    Margins.Bottom = 2
    Caption = 'x'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object Edit1: TEdit
    Left = 19
    Top = 58
    Width = 750
    Height = 39
    Margins.Left = 2
    Margins.Top = 2
    Margins.Right = 2
    Margins.Bottom = 2
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -23
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    Text = 'Edit1'
  end
  object Edit2: TEdit
    Left = 19
    Top = 141
    Width = 750
    Height = 39
    Margins.Left = 2
    Margins.Top = 2
    Margins.Right = 2
    Margins.Bottom = 2
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -23
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    Text = 'Edit2'
  end
  object BitBtn1: TBitBtn
    Left = 26
    Top = 314
    Width = 141
    Height = 45
    Margins.Left = 2
    Margins.Top = 2
    Margins.Right = 2
    Margins.Bottom = 2
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -35
    Font.Name = 'Segoe UI'
    Font.Style = []
    Kind = bkClose
    NumGlyphs = 2
    ParentFont = False
    TabOrder = 2
  end
  object StringGrid1: TStringGrid
    Left = 192
    Top = 314
    Width = 577
    Height = 45
    FixedCols = 0
    FixedRows = 0
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Segoe UI'
    Font.Style = []
    Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goEditing, goFixedRowDefAlign]
    ParentFont = False
    TabOrder = 3
  end
  object MainMenu1: TMainMenu
    Left = 720
    Top = 8
    object Numeros1: TMenuItem
      Caption = 'Numeros'
      object Numeros2: TMenuItem
        Caption = 'Registrar'
        OnClick = Numeros2Click
      end
      object Mostrar1: TMenuItem
        Caption = 'Mostrar'
        OnClick = Mostrar1Click
      end
      object Contardigitos1: TMenuItem
        Caption = 'Contar digitos'
        OnClick = Contardigitos1Click
      end
      object EliminarMayorDigitoPrimo1: TMenuItem
        Caption = 'Eliminar Mayor Digito Primo'
        OnClick = EliminarMayorDigitoPrimo1Click
      end
      object Mostrarmayordigitoprimo1: TMenuItem
        Caption = 'Mostrar mayor digito primo'
        OnClick = Mostrarmayordigitoprimo1Click
      end
      object ContarVecesRepetidasdenNmero1: TMenuItem
        Caption = 'Contar Veces Repetidas de n N'#250'mero'
        OnClick = ContarVecesRepetidasdenNmero1Click
      end
      object Convertiraarreglodevectores1: TMenuItem
        Caption = 'Convertir a arreglo de vectores'
        OnClick = Convertiraarreglodevectores1Click
      end
      object Eliminarnnumerorepetidas1: TMenuItem
        Caption = 'INC Eliminar n numero repetidas'
        OnClick = Eliminarnnumerorepetidas1Click
      end
      object Ordenarpareimparalamitaddescendente1: TMenuItem
        Caption = 'Ordenar par e impar a la mitad descendente'
        OnClick = Ordenarpareimparalamitaddescendente1Click
      end
      object EliminarDigitoenposocionn1: TMenuItem
        Caption = 'Eliminar Digito en posocion n'
        OnClick = EliminarDigitoenposocionn1Click
      end
      object Or1: TMenuItem
        Caption = 'Ordenar a comb num menor'
        OnClick = Or1Click
      end
    end
    object Cadenas1: TMenuItem
      Caption = 'Cadenas'
      object Cadenas2: TMenuItem
        Caption = 'Registrar'
        OnClick = Cadenas2Click
      end
      object Mostrar2: TMenuItem
        Caption = 'Mostrar'
        OnClick = Mostrar2Click
      end
      object Eliminarnumerosenteroscondosdecimales1: TMenuItem
        Caption = 'Eliminar numeros con dos decimales'
        OnClick = Eliminarnumerosenteroscondosdecimales1Click
      end
      object Eliminarcaracteres1: TMenuItem
        Caption = 'Eliminar caracteres'
        OnClick = Eliminarcaracteres1Click
      end
      object Eliminarpalabrasconconsonantesrepetidas1: TMenuItem
        Caption = 'Eliminar palabras con mas de una consonante repetida'
        OnClick = Eliminarpalabrasconconsonantesrepetidas1Click
      end
      object N6Parentesiseliminarocopiarantes1: TMenuItem
        Caption = '6.Parentesis eliminar o copiar antes'
        OnClick = N6Parentesiseliminarocopiarantes1Click
      end
      object N12xxminutosyxxsegundos1: TMenuItem
        Caption = '12.xx horas con xx minutos y xx segundos'
        OnClick = N12xxminutosyxxsegundos1Click
      end
      object Compararsin2estaincluidoenn11: TMenuItem
        Caption = 'Comparar si n2 esta incluido en n1'
        OnClick = Compararsin2estaincluidoenn11Click
      end
    end
    object Examen1: TMenuItem
      Caption = 'Examen'
      object Contarpalabrasconsrepetidas1: TMenuItem
        Caption = 'Contar palabras cons repetidas'
        OnClick = Contarpalabrasconsrepetidas1Click
      end
    end
    object Vectores1: TMenuItem
      Caption = 'Vectores'
      object Registrar1: TMenuItem
        Caption = 'Registrar'
        OnClick = Registrar1Click
      end
      object Mostrar3: TMenuItem
        Caption = 'Mostrar'
        OnClick = Mostrar3Click
      end
      object Registrar2: TMenuItem
        Caption = 'Busqueda binaria'
      end
      object Modificarxposicion1: TMenuItem
        Caption = 'Modificar x elemento posicion n'
        OnClick = Modificarxposicion1Click
      end
      object Eliminarnelemento1: TMenuItem
        Caption = 'Eliminar n elemento'
        OnClick = Eliminarnelemento1Click
      end
    end
  end
end
