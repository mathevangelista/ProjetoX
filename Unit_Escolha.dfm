object FormEscolha: TFormEscolha
  Left = 0
  Top = 0
  Caption = 'Escolha uma '#225'rea'
  ClientHeight = 334
  ClientWidth = 384
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  Scaled = False
  PixelsPerInch = 96
  TextHeight = 13
  object GBox_escolha: TGroupBox
    Left = 16
    Top = 16
    Width = 193
    Height = 129
    Caption = 'Qual '#225'rea deseja calcular?'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    object ButtonGroup1: TButtonGroup
      Left = 19
      Top = 22
      Width = 153
      ButtonOptions = [gboFullSize, gboShowCaptions]
      Items = <
        item
          Caption = #193'rea do Tri'#226'ngulo'
          OnClick = ButtonGroup1Items0Click
        end
        item
          Caption = #193'rea do Quadrado'
        end
        item
          Caption = #193'rea do Ret'#226'ngulo'
        end
        item
          Caption = #193'rea do Circulo'
        end>
      TabOrder = 0
    end
  end
  object ComboBox1: TComboBox
    Left = 104
    Top = 216
    Width = 145
    Height = 21
    TabOrder = 1
    Items.Strings = (
      'Triangulo'
      'Quadrado')
  end
  object Button1: TButton
    Left = 134
    Top = 256
    Width = 75
    Height = 25
    Caption = 'Button1'
    TabOrder = 2
    OnClick = Button1Click
  end
end
