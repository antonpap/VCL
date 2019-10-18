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
  object AdvTaskDialog1: TAdvTaskDialog
    CommonButtons = [cbYes, cbNo]
    DefaultButton = 0
    DefaultRadioButton = 200
    ExpandedText = 
      'Many new options make the TaskDialog very different from the old' +
      ' Windows MessageBox'
    Footer = 
      'Brought to you by <a href="https://www.tmssoftware.com">TMS soft' +
      'ware</a>'
    FooterIcon = tfiWarning
    FooterTextColor = clWindowText
    Icon = tiQuestion
    Instruction = 'Do you like the Windows Task Dialog?'
    Content = 
      'The new TaskDialog provides a standard & an enhanced  way for in' +
      'teraction with the user'
    ExpandControlText = 'Click to hide'
    CollapsControlText = 'Click to expand'
    Options = [doHyperlinks]
    Version = '2.0.5.2'
    Left = 104
    Top = 168
  end
end
