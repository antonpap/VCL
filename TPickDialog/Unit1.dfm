object Form1: TForm1
  Left = 0
  Top = 0
  BorderStyle = bsSizeToolWin
  Caption = 'TPickDialog example'
  ClientHeight = 353
  ClientWidth = 408
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
    Left = 8
    Top = 8
    Width = 129
    Height = 25
    Caption = 'Invoke'
    TabOrder = 0
    OnClick = btnInvokeClick
  end
  object ListBox1: TListBox
    Left = 159
    Top = 0
    Width = 249
    Height = 353
    Align = alRight
    ItemHeight = 13
    TabOrder = 1
    ExplicitLeft = 120
    ExplicitTop = 8
    ExplicitHeight = 281
  end
  object PickDialog1: TPickDialog
    Caption = 'My pick dialog'
    AcceptDblClick = False
    ButtonPosition = bpRight
    CancelCaption = 'Cancel'
    DialogPosition = fposCenter
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    Height = 270
    LeftPosition = 0
    ListFont.Charset = DEFAULT_CHARSET
    ListFont.Color = clWindowText
    ListFont.Height = -11
    ListFont.Name = 'Tahoma'
    ListFont.Style = []
    MultiSel = True
    OkCaption = 'OK'
    PickItems.Strings = (
      'Bruno'
      'Roman K'
      'Roman Y'
      'Wagner'
      'Adrian'
      'Marion'
      'Pieter'
      'Bart'
      'Tom')
    Sizeable = True
    ShowTitle = True
    Sort = True
    Title = 'Please select name(s)'
    ToolWindow = False
    TopPosition = 0
    Version = '1.7.1.0'
    Width = 280
    Left = 40
    Top = 80
  end
end
