object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 299
  ClientWidth = 635
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
    Width = 233
    Height = 25
    Caption = 'Invoke'
    TabOrder = 0
    OnClick = Button1Click
  end
  object TaskDialog: TAdvTaskDialog
    CommonButtons = [cbOK]
    DefaultButton = 0
    DefaultRadioButton = 200
    FooterTextColor = clWindowText
    Title = 'Sample of a simple TaskDialog'
    Instruction = 'Starting to explore the new TaskDialog'
    Content = 'A simple text using only TaskDialog'
    Options = []
    Version = '2.0.5.2'
    Left = 48
    Top = 112
  end
end
