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
  object AdvEdit1: TAdvEdit
    Left = 32
    Top = 56
    Width = 209
    Height = 21
    EditType = etFloat
    EmptyText = 'Please enter temperature.'
    EmptyTextStyle = []
    MinValue = 32
    MaxValue = 110
    MinFloatValue = 31.500000000000000000
    MaxFloatValue = 110.000000000000000000
    Precision = 1
    Suffix = ' F'
    LabelCaption = 'Temperature'
    LabelPosition = lpTopLeft
    LabelFont.Charset = DEFAULT_CHARSET
    LabelFont.Color = clWindowText
    LabelFont.Height = -11
    LabelFont.Name = 'Tahoma'
    LabelFont.Style = []
    Lookup.Font.Charset = DEFAULT_CHARSET
    Lookup.Font.Color = clWindowText
    Lookup.Font.Height = -11
    Lookup.Font.Name = 'Arial'
    Lookup.Font.Style = []
    Lookup.Separator = ';'
    Color = clWindow
    TabOrder = 0
    Text = '0.0'
    Visible = True
    Version = '3.5.0.3'
  end
  object Button1: TButton
    Left = 32
    Top = 112
    Width = 75
    Height = 25
    Caption = 'Button1'
    TabOrder = 1
  end
  object AdvEdit2: TAdvEdit
    Left = 32
    Top = 176
    Width = 409
    Height = 21
    EmptyTextStyle = []
    LabelFont.Charset = DEFAULT_CHARSET
    LabelFont.Color = clWindowText
    LabelFont.Height = -11
    LabelFont.Name = 'Tahoma'
    LabelFont.Style = []
    Lookup.DisplayList.Strings = (
      'Baltimore Orioles'
      'Boston Red Sox'
      'New York Yankees'
      'Tampa Bay Rays'
      'Toronto Blue Jays')
    Lookup.Enabled = True
    Lookup.Font.Charset = DEFAULT_CHARSET
    Lookup.Font.Color = clWindowText
    Lookup.Font.Height = -11
    Lookup.Font.Name = 'Arial'
    Lookup.Font.Style = []
    Lookup.ValueList.Strings = (
      'BAL'
      'BOS'
      'NYY'
      'TB'
      'TOR')
    Lookup.Separator = ';'
    Color = clWindow
    TabOrder = 2
    Text = 'AdvEdit2'
    Visible = True
    Version = '3.5.0.3'
  end
end
