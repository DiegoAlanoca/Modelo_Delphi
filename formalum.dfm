object formalumnos: Tformalumnos
  Left = 0
  Top = 0
  Caption = 'Notas Alumnos'
  ClientHeight = 569
  ClientWidth = 877
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OnCreate = FormCreate
  TextHeight = 15
  object Label1: TLabel
    Left = 23
    Top = 13
    Width = 216
    Height = 32
    Caption = 'Nombre de Equipo'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -24
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 24
    Top = 64
    Width = 201
    Height = 32
    Caption = 'Partidos Ganados'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -24
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 23
    Top = 112
    Width = 228
    Height = 32
    Caption = 'Partidos Empatados'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -24
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label4: TLabel
    Left = 23
    Top = 160
    Width = 202
    Height = 32
    Caption = 'Partidos Perdidos'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -24
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label5: TLabel
    Left = 23
    Top = 214
    Width = 152
    Height = 32
    Caption = 'Goles a Favor'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -24
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label6: TLabel
    Left = 28
    Top = 538
    Width = 52
    Height = 15
    Caption = 'Promedio'
  end
  object Label7: TLabel
    Left = 23
    Top = 262
    Width = 182
    Height = 32
    Caption = 'Goles en Contra'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -24
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Edit1: TEdit
    Left = 296
    Top = 24
    Width = 257
    Height = 23
    TabOrder = 0
  end
  object Edit2: TEdit
    Left = 296
    Top = 75
    Width = 257
    Height = 23
    TabOrder = 1
  end
  object Edit3: TEdit
    Left = 295
    Top = 123
    Width = 257
    Height = 23
    TabOrder = 2
  end
  object Edit4: TEdit
    Left = 296
    Top = 171
    Width = 257
    Height = 23
    TabOrder = 3
  end
  object Edit5: TEdit
    Left = 295
    Top = 225
    Width = 257
    Height = 23
    TabOrder = 4
  end
  object SGridLista: TStringGrid
    Left = 24
    Top = 312
    Width = 809
    Height = 184
    ColCount = 7
    FixedCols = 0
    RowCount = 2
    TabOrder = 5
    ColWidths = (
      133
      116
      122
      127
      110
      113
      72)
  end
  object Button1: TButton
    Left = 638
    Top = 520
    Width = 99
    Height = 41
    Caption = 'Adicionar'
    TabOrder = 6
    OnClick = Button1Click
  end
  object Edit6: TEdit
    Left = 295
    Top = 273
    Width = 257
    Height = 23
    TabOrder = 7
  end
  object BitBtn1: TBitBtn
    Left = 696
    Top = 15
    Width = 105
    Height = 41
    Kind = bkClose
    NumGlyphs = 2
    TabOrder = 8
  end
  object calcular: TButton
    Left = 494
    Top = 520
    Width = 99
    Height = 41
    Caption = 'Calcular'
    TabOrder = 9
    OnClick = calcularClick
  end
end
