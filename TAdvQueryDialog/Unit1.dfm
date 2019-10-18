object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 411
  ClientWidth = 852
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Button1: TButton
    Left = 40
    Top = 16
    Width = 113
    Height = 25
    Caption = 'Button1'
    TabOrder = 0
    OnClick = Button1Click
  end
  object AdvQueryDialog1: TAdvQueryDialog
    CanUndo = False
    Caption = 'Temperature'
    EditAlign = eaLeft
    EditType = etNumeric
    ExcelStyleDecimalSeparator = False
    FlatLineColor = clBlack
    FlatParentColor = False
    LengthLimit = 0
    ModifiedColor = clBlack
    PasswordChar = #0
    Precision = 0
    Prompt = 'Please enter a temperature value.'
    ShowHint = False
    Suffix = ' F'
    Version = '1.0.2.0'
    Left = 56
    Top = 72
  end
end
