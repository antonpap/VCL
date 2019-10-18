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
    Left = 32
    Top = 24
    Width = 97
    Height = 25
    Caption = 'Button1'
    TabOrder = 0
    OnClick = Button1Click
  end
  object TaskDialog: TAdvTaskDialog
    CustomButtons.Strings = (
      'Exit application without saving'
      'Exit application with saving')
    CommonButtons = [cbCancel]
    DefaultButton = 0
    DefaultRadioButton = 200
    FooterTextColor = clWindowText
    Icon = tiWarning
    Title = 'TaskDialog with command buttons'
    Instruction = 'Do you want to see a new dialog'
    Content = 'This is the content'
    Options = [doCommandLinks]
    Version = '2.0.5.2'
    Left = 48
    Top = 88
  end
end
