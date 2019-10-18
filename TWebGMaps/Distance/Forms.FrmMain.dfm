object FrmMain: TFrmMain
  Left = 0
  Top = 0
  Caption = 'WebGMaps: Calculate distance'
  ClientHeight = 497
  ClientWidth = 771
  Color = clBtnFace
  Constraints.MinWidth = 510
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Map: TWebGMaps
    Left = 0
    Top = 0
    Width = 771
    Height = 401
    Align = alClient
    APIVersion = '3.34'
    AutoLaunch = False
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
    Version = '3.1.3.1'
    OnMapClick = MapMapClick
  end
  object Panel1: TPanel
    Left = 0
    Top = 401
    Width = 771
    Height = 96
    Align = alBottom
    TabOrder = 1
    object txtCurLon: TLabeledEdit
      Left = 8
      Top = 59
      Width = 153
      Height = 21
      EditLabel.Width = 87
      EditLabel.Height = 13
      EditLabel.Caption = 'Current Longitude'
      TabOrder = 0
    end
    object txtCurLat: TLabeledEdit
      Left = 8
      Top = 19
      Width = 153
      Height = 21
      EditLabel.Width = 79
      EditLabel.Height = 13
      EditLabel.Caption = 'Current Latitude'
      TabOrder = 1
    end
    object txtALon: TLabeledEdit
      Left = 167
      Top = 59
      Width = 153
      Height = 21
      EditLabel.Width = 88
      EditLabel.Height = 13
      EditLabel.Caption = 'Point A: Longitude'
      TabOrder = 2
    end
    object txtALat: TLabeledEdit
      Left = 167
      Top = 19
      Width = 153
      Height = 21
      EditLabel.Width = 80
      EditLabel.Height = 13
      EditLabel.Caption = 'Point A: Latitude'
      TabOrder = 3
    end
    object txtBLon: TLabeledEdit
      Left = 326
      Top = 59
      Width = 153
      Height = 21
      EditLabel.Width = 87
      EditLabel.Height = 13
      EditLabel.Caption = 'Point B: Longitude'
      TabOrder = 4
    end
    object txtBLat: TLabeledEdit
      Left = 326
      Top = 19
      Width = 153
      Height = 21
      EditLabel.Width = 79
      EditLabel.Height = 13
      EditLabel.Caption = 'Point B: Latitude'
      TabOrder = 5
    end
    object btnSetA: TButton
      Left = 485
      Top = 16
      Width = 124
      Height = 25
      Caption = 'Set A'
      TabOrder = 6
      OnClick = btnSetAClick
    end
    object btnSetB: TButton
      Left = 485
      Top = 55
      Width = 124
      Height = 25
      Caption = 'Set B'
      TabOrder = 7
      OnClick = btnSetBClick
    end
    object btnDistance: TButton
      Left = 623
      Top = 16
      Width = 124
      Height = 25
      Caption = 'Distance'
      TabOrder = 8
      OnClick = btnDistanceClick
    end
  end
end
