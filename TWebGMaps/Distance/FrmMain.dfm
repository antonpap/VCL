object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 616
  ClientWidth = 680
  Color = clBtnFace
  Constraints.MinWidth = 510
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Map: TWebGMaps
    Left = 0
    Top = 0
    Width = 680
    Height = 385
    Align = alTop
    APIVersion = '3.34'
    Clusters = <>
    Markers = <>
    Polylines = <>
    Polygons = <>
    Directions = <>
    MapOptions.DefaultLatitude = 48.859040000000000000
    MapOptions.DefaultLongitude = 2.294297000000000000
    Routing.PolylineOptions.Icons = <>
    StreetViewOptions.DefaultLatitude = 48.859040000000000000
    StreetViewOptions.DefaultLongitude = 2.294297000000000000
    MapPersist.Location = mplInifile
    MapPersist.Key = 'WebGMaps'
    MapPersist.Section = 'MapBounds'
    PolygonLabel.Font.Charset = DEFAULT_CHARSET
    PolygonLabel.Font.Color = clBlack
    PolygonLabel.Font.Height = -16
    PolygonLabel.Font.Name = 'Arial'
    PolygonLabel.Font.Style = []
    TabOrder = 0
    Version = '3.1.3.0'
    ExplicitWidth = 852
  end
  object Panel1: TPanel
    Left = 0
    Top = 520
    Width = 680
    Height = 96
    Align = alBottom
    TabOrder = 1
    object LabeledEdit1: TLabeledEdit
      Left = 8
      Top = 59
      Width = 153
      Height = 21
      EditLabel.Width = 61
      EditLabel.Height = 13
      EditLabel.Caption = 'LabeledEdit1'
      TabOrder = 0
    end
    object LabeledEdit2: TLabeledEdit
      Left = 8
      Top = 19
      Width = 153
      Height = 21
      EditLabel.Width = 61
      EditLabel.Height = 13
      EditLabel.Caption = 'LabeledEdit1'
      TabOrder = 1
    end
    object LabeledEdit3: TLabeledEdit
      Left = 167
      Top = 59
      Width = 153
      Height = 21
      EditLabel.Width = 61
      EditLabel.Height = 13
      EditLabel.Caption = 'LabeledEdit1'
      TabOrder = 2
    end
    object LabeledEdit4: TLabeledEdit
      Left = 167
      Top = 19
      Width = 153
      Height = 21
      EditLabel.Width = 61
      EditLabel.Height = 13
      EditLabel.Caption = 'LabeledEdit1'
      TabOrder = 3
    end
    object LabeledEdit5: TLabeledEdit
      Left = 326
      Top = 59
      Width = 153
      Height = 21
      EditLabel.Width = 61
      EditLabel.Height = 13
      EditLabel.Caption = 'LabeledEdit1'
      TabOrder = 4
    end
    object LabeledEdit6: TLabeledEdit
      Left = 326
      Top = 19
      Width = 153
      Height = 21
      EditLabel.Width = 61
      EditLabel.Height = 13
      EditLabel.Caption = 'LabeledEdit1'
      TabOrder = 5
    end
  end
end