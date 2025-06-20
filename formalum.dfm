object formalumnos: Tformalumnos
  Left = 0
  Top = 0
  Caption = 'Notas Alumnos'
  ClientHeight = 569
  ClientWidth = 624
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OnCreate = FormCreate
  TextHeight = 15
  object Label1: TLabel
    Left = 24
    Top = 56
    Width = 95
    Height = 32
    Caption = 'Registro'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -24
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 24
    Top = 112
    Width = 94
    Height = 32
    Caption = 'Nombre'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -24
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 24
    Top = 176
    Width = 238
    Height = 32
    Caption = 'Fecha de Nacimiento'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -24
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label4: TLabel
    Left = 24
    Top = 240
    Width = 88
    Height = 32
    Caption = 'Materia'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -24
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label5: TLabel
    Left = 24
    Top = 302
    Width = 56
    Height = 32
    Caption = 'Nota'
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
  object Edit1: TEdit
    Left = 296
    Top = 56
    Width = 257
    Height = 23
    TabOrder = 0
  end
  object Edit2: TEdit
    Left = 296
    Top = 123
    Width = 257
    Height = 23
    TabOrder = 1
  end
  object Edit3: TEdit
    Left = 296
    Top = 187
    Width = 257
    Height = 23
    TabOrder = 2
  end
  object Edit4: TEdit
    Left = 296
    Top = 251
    Width = 257
    Height = 23
    TabOrder = 3
  end
  object Edit5: TEdit
    Left = 296
    Top = 313
    Width = 257
    Height = 23
    TabOrder = 4
  end
  object SGridLista: TStringGrid
    Left = 24
    Top = 376
    Width = 529
    Height = 120
    FixedCols = 0
    RowCount = 2
    TabOrder = 5
    ColWidths = (
      89
      116
      64
      175
      64)
  end
  object Button1: TButton
    Left = 504
    Top = 512
    Width = 99
    Height = 41
    Caption = 'Adicionar'
    TabOrder = 6
    OnClick = Button1Click
  end
end
