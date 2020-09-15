object Form1: TForm1
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Form1'
  ClientHeight = 745
  ClientWidth = 984
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 337
    Top = 24
    Width = 340
    Height = 25
    Caption = 'EXEMPLO CRIPTOGRAFIA - local'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 16
    Top = 176
    Width = 99
    Height = 25
    Caption = 'ENCRYPT'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 16
    Top = 280
    Width = 99
    Height = 25
    Caption = 'DECRYPT'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label4: TLabel
    Left = 16
    Top = 73
    Width = 72
    Height = 25
    Caption = 'SENHA'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label5: TLabel
    Left = 310
    Top = 384
    Width = 367
    Height = 25
    Caption = 'EXEMPLO CRIPTOGRAFIA - remoto'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label6: TLabel
    Left = 16
    Top = 432
    Width = 99
    Height = 25
    Caption = 'ENCRYPT'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label7: TLabel
    Left = 16
    Top = 536
    Width = 99
    Height = 25
    Caption = 'DECRYPT'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object edEntrada: TEdit
    Left = 16
    Top = 216
    Width = 297
    Height = 21
    Hint = 'Entrada'
    TabOrder = 0
    TextHint = 'Entrada'
  end
  object edRespostaEntrada: TEdit
    Left = 329
    Top = 216
    Width = 488
    Height = 21
    TabOrder = 1
    TextHint = 'Texto criptografado'
  end
  object edSaida: TEdit
    Left = 16
    Top = 320
    Width = 297
    Height = 21
    TabOrder = 2
    TextHint = 'Texto criptografado'
  end
  object edRespostaSaida: TEdit
    Left = 329
    Top = 320
    Width = 488
    Height = 21
    TabOrder = 3
    TextHint = 'Saida'
  end
  object Button2: TButton
    Left = 825
    Top = 313
    Width = 151
    Height = 35
    Caption = 'executar'
    TabOrder = 4
    OnClick = Button2Click
  end
  object Button1: TButton
    Left = 823
    Top = 209
    Width = 151
    Height = 35
    Caption = 'executar'
    TabOrder = 5
    OnClick = Button1Click
  end
  object edSenha: TEdit
    Left = 16
    Top = 104
    Width = 297
    Height = 21
    TabOrder = 6
    Text = 'senhasecreta'
  end
  object edEntradaRemoto: TEdit
    Left = 16
    Top = 472
    Width = 297
    Height = 21
    Hint = 'Entrada'
    TabOrder = 7
    TextHint = 'Entrada'
  end
  object edEntradaRemotoResultado: TEdit
    Left = 329
    Top = 472
    Width = 488
    Height = 21
    TabOrder = 8
    TextHint = 'Texto criptografado'
  end
  object edSaidaRemoto: TEdit
    Left = 16
    Top = 576
    Width = 297
    Height = 21
    TabOrder = 9
    TextHint = 'Texto criptografado'
  end
  object edSaidaRemotoResultado: TEdit
    Left = 329
    Top = 576
    Width = 488
    Height = 21
    TabOrder = 10
    TextHint = 'Saida'
  end
  object Button3: TButton
    Left = 825
    Top = 569
    Width = 151
    Height = 35
    Caption = 'executar'
    TabOrder = 11
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 823
    Top = 465
    Width = 151
    Height = 35
    Caption = 'executar'
    TabOrder = 12
    OnClick = Button4Click
  end
end
