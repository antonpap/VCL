object APIController: TAPIController
  OldCreateOrder = False
  Height = 368
  Width = 361
  object Client: TRESTClient
    Accept = 'application/json, text/plain; q=0.9, text/html;q=0.8,'
    AcceptCharset = 'utf-8, *;q=0.8'
    BaseURL = 'https://api.weather.gov/'
    Params = <>
    Left = 64
    Top = 88
  end
  object ReqPoints: TRESTRequest
    Client = Client
    Params = <
      item
        Kind = pkURLSEGMENT
        Name = 'Lat'
        Value = '26.6081404528761'
      end
      item
        Kind = pkURLSEGMENT
        Name = 'Lon'
        Value = '-81.8024960705893'
      end>
    Resource = 'points/{Lat},{Lon}'
    Response = ResPoints
    SynchronizedEvents = False
    Left = 128
    Top = 88
  end
  object ResPoints: TRESTResponse
    Left = 128
    Top = 136
  end
  object ReqForecast: TRESTRequest
    Client = Client
    Params = <
      item
        Kind = pkURLSEGMENT
        Name = 'station'
        Options = [poAutoCreated]
        Value = 'TBW'
      end
      item
        Kind = pkURLSEGMENT
        Name = 'x'
        Options = [poAutoCreated]
        Value = '107'
      end
      item
        Kind = pkURLSEGMENT
        Name = 'y'
        Options = [poAutoCreated]
        Value = '34'
      end>
    Resource = 'gridpoints'
    ResourceSuffix = '{station}/{x},{y}/forecast'
    Response = ResForecast
    SynchronizedEvents = False
    Left = 128
    Top = 200
  end
  object ResForecast: TRESTResponse
    ContentType = 'application/geo+json'
    Left = 128
    Top = 256
  end
end
