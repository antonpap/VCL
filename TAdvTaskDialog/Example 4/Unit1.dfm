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
    Left = 104
    Top = 24
    Width = 75
    Height = 25
    Caption = 'Button1'
    TabOrder = 0
    OnClick = Button1Click
  end
  object TaskDialog: TAdvTaskDialog
    RadioButtons.Strings = (
      'Store settings in registry'
      'Store settings in XML file')
    CommonButtons = [cbOK, cbCancel]
    DefaultButton = 0
    DefaultRadioButton = 200
    FooterTextColor = clWindowText
    Title = 'TaskDialog with radiobutton & verification text'
    Instruction = 'Saving application settings'
    Content = 'This is the content'
    Options = [doVerifyChecked]
    VerificationText = 'Do not ask for this setting next time'
    Version = '2.0.5.2'
    Left = 48
    Top = 48
  end
end
