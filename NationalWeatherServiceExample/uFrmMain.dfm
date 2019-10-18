object FrmMain: TFrmMain
  Left = 0
  Top = 0
  Caption = 'National Weather Service Demo'
  ClientHeight = 527
  ClientWidth = 805
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Map: TWebGMaps
    Left = 0
    Top = 0
    Width = 805
    Height = 429
    Align = alClient
    APIVersion = '3.34'
    AutoLaunch = False
    Clusters = <>
    Markers = <>
    Polylines = <>
    Polygons = <>
    Directions = <>
    MapOptions.DefaultLatitude = 26.608140452876100000
    MapOptions.DefaultLongitude = -81.802496070589300000
    Routing.PolylineOptions.Icons = <>
    StreetViewOptions.DefaultLatitude = 48.859040000000000000
    StreetViewOptions.DefaultLongitude = 2.294297000000000000
    ControlsOptions.MapTypeControl.Visible = False
    ControlsOptions.StreetViewControl.Visible = False
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
    Top = 429
    Width = 805
    Height = 98
    Align = alBottom
    TabOrder = 1
    object txtLon: TLabeledEdit
      Left = 24
      Top = 24
      Width = 121
      Height = 21
      EditLabel.Width = 51
      EditLabel.Height = 13
      EditLabel.Caption = 'Longitude:'
      TabOrder = 0
    end
    object txtLat: TLabeledEdit
      Left = 24
      Top = 72
      Width = 121
      Height = 21
      EditLabel.Width = 43
      EditLabel.Height = 13
      EditLabel.Caption = 'Latitude:'
      TabOrder = 1
    end
    object btnGetXY: TButton
      Left = 160
      Top = 24
      Width = 129
      Height = 25
      Caption = '&Determine X/Y ...'
      TabOrder = 2
      OnClick = btnGetXYClick
    end
    object txtX: TEdit
      Left = 344
      Top = 24
      Width = 129
      Height = 21
      TabOrder = 3
    end
    object txtY: TEdit
      Left = 344
      Top = 72
      Width = 129
      Height = 21
      TabOrder = 4
    end
    object btnGetWeather: TButton
      Left = 536
      Top = 24
      Width = 129
      Height = 25
      Caption = 'Get &Weather...'
      TabOrder = 5
      OnClick = btnGetWeatherClick
    end
    object txtStation: TEdit
      Left = 536
      Top = 72
      Width = 129
      Height = 21
      TabOrder = 6
    end
  end
end
