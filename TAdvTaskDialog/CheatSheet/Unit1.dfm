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
  object btnInvoke: TButton
    Left = 96
    Top = 168
    Width = 75
    Height = 25
    Caption = 'Invoke'
    TabOrder = 0
    OnClick = btnInvokeClick
  end
  object TaskDialog: TAdvTaskDialogEx
    CommonButtons = []
    DefaultButton = 0
    DefaultRadioButton = 200
    FooterTextColor = clWindowText
    Options = []
    Version = '2.0.5.2'
    Left = 48
    Top = 48
  end
end
