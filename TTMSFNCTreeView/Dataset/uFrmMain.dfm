object FrmMain: TFrmMain
  Left = 0
  Top = 0
  Caption = 'FrmMain'
  ClientHeight = 502
  ClientWidth = 776
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Tree: TTMSFNCTreeView
    Left = 0
    Top = 0
    Width = 776
    Height = 502
    Align = alClient
    ParentDoubleBuffered = False
    DoubleBuffered = True
    TabOrder = 0
    Groups = <>
    GroupsAppearance.TopSize = 50.000000000000000000
    GroupsAppearance.BottomSize = 50.000000000000000000
    GroupsAppearance.TopFont.Charset = DEFAULT_CHARSET
    GroupsAppearance.TopFont.Color = clBlack
    GroupsAppearance.TopFont.Height = -11
    GroupsAppearance.TopFont.Name = 'Tahoma'
    GroupsAppearance.TopFont.Style = []
    GroupsAppearance.BottomFont.Charset = DEFAULT_CHARSET
    GroupsAppearance.BottomFont.Color = clBlack
    GroupsAppearance.BottomFont.Height = -11
    GroupsAppearance.BottomFont.Name = 'Tahoma'
    GroupsAppearance.BottomFont.Style = []
    GroupsAppearance.TopStroke.Color = 11119017
    GroupsAppearance.BottomStroke.Color = 11119017
    ColumnStroke.Color = -1
    Columns = <
      item
        Name = 'Column0'
        Text = 'Model'
        Width = 100.000000000000000000
        Fill.Color = -1
        Stroke.Color = 11119017
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        TopFill.Kind = gfkNone
        TopStroke.Color = 11119017
        TopFont.Charset = DEFAULT_CHARSET
        TopFont.Color = clWindowText
        TopFont.Height = -11
        TopFont.Name = 'Tahoma'
        TopFont.Style = []
        BottomFill.Kind = gfkNone
        BottomStroke.Color = 11119017
        BottomFont.Charset = DEFAULT_CHARSET
        BottomFont.Color = clWindowText
        BottomFont.Height = -11
        BottomFont.Name = 'Tahoma'
        BottomFont.Style = []
      end
      item
        Name = 'Column1'
        Text = 'Year'
        Width = 100.000000000000000000
        Fill.Color = -1
        Stroke.Color = 11119017
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        TopFill.Kind = gfkNone
        TopStroke.Color = 11119017
        TopFont.Charset = DEFAULT_CHARSET
        TopFont.Color = clWindowText
        TopFont.Height = -11
        TopFont.Name = 'Tahoma'
        TopFont.Style = []
        BottomFill.Kind = gfkNone
        BottomStroke.Color = 11119017
        BottomFont.Charset = DEFAULT_CHARSET
        BottomFont.Color = clWindowText
        BottomFont.Height = -11
        BottomFont.Name = 'Tahoma'
        BottomFont.Style = []
      end
      item
        Name = 'Column2'
        Text = 'Miles'
        Width = 100.000000000000000000
        Fill.Color = -1
        Stroke.Color = 11119017
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        TopFill.Kind = gfkNone
        TopStroke.Color = 11119017
        TopFont.Charset = DEFAULT_CHARSET
        TopFont.Color = clWindowText
        TopFont.Height = -11
        TopFont.Name = 'Tahoma'
        TopFont.Style = []
        BottomFill.Kind = gfkNone
        BottomStroke.Color = 11119017
        BottomFont.Charset = DEFAULT_CHARSET
        BottomFont.Color = clWindowText
        BottomFont.Height = -11
        BottomFont.Name = 'Tahoma'
        BottomFont.Style = []
      end>
    Nodes = <
      item
        Values = <
          item
            Text = 'Audi'
          end>
        Expanded = True
        Extended = True
        Tag = 0
        Nodes = <
          item
            Values = <
              item
                Text = 'A3'
              end
              item
                Text = '2010'
              end
              item
                Text = '32,300'
              end>
            Expanded = True
            Tag = 0
            Nodes = <>
          end
          item
            Values = <
              item
                Text = 'A5 series'
              end>
            Expanded = True
            Tag = 0
            Nodes = <
              item
                Values = <
                  item
                    Text = 'S5'
                  end
                  item
                    Text = '2016'
                  end
                  item
                    Text = '40,000'
                  end>
                Expanded = True
                Tag = 0
                Nodes = <>
              end
              item
                Values = <
                  item
                    Text = 'RS5'
                  end
                  item
                    Text = '2012'
                  end
                  item
                    Text = '15,000'
                  end>
                Expanded = True
                Tag = 0
                Nodes = <>
              end>
          end
          item
            Values = <
              item
                Text = 'A8'
              end
              item
                Text = '2005'
              end
              item
                Text = '80,000'
              end>
            Expanded = True
            Tag = 0
            Nodes = <>
          end>
      end
      item
        Values = <
          item
            Text = 'Mercedes'
          end>
        Expanded = True
        Extended = True
        Tag = 0
        Nodes = <
          item
            Values = <
              item
                Text = 'SLS'
              end
              item
                Text = '2000'
              end
              item
                Text = '300,000'
              end>
            Expanded = True
            Tag = 0
            Nodes = <>
          end
          item
            Values = <
              item
                Text = 'SLK'
              end
              item
                Text = '2010'
              end
              item
                Text = '20,000'
              end>
            Expanded = True
            Tag = 0
            Nodes = <>
          end
          item
            Values = <
              item
                Text = 'GLA'
              end
              item
                Text = '2012'
              end
              item
                Text = '14,500'
              end>
            Expanded = True
            Tag = 0
            Nodes = <>
          end>
      end>
    ColumnsAppearance.TopSize = 25.000000000000000000
    ColumnsAppearance.BottomSize = 25.000000000000000000
    ColumnsAppearance.TopFont.Charset = DEFAULT_CHARSET
    ColumnsAppearance.TopFont.Color = clBlack
    ColumnsAppearance.TopFont.Height = -11
    ColumnsAppearance.TopFont.Name = 'Tahoma'
    ColumnsAppearance.TopFont.Style = []
    ColumnsAppearance.BottomFont.Charset = DEFAULT_CHARSET
    ColumnsAppearance.BottomFont.Color = clBlack
    ColumnsAppearance.BottomFont.Height = -11
    ColumnsAppearance.BottomFont.Name = 'Tahoma'
    ColumnsAppearance.BottomFont.Style = []
    ColumnsAppearance.TopStroke.Color = 11119017
    ColumnsAppearance.BottomStroke.Color = 11119017
    NodesAppearance.ExpandWidth = 15.000000000000000000
    NodesAppearance.ExpandHeight = 15.000000000000000000
    NodesAppearance.LevelIndent = 20.000000000000000000
    NodesAppearance.FixedHeight = 25.000000000000000000
    NodesAppearance.VariableMinimumHeight = 25.000000000000000000
    NodesAppearance.Fill.Color = -1
    NodesAppearance.Stroke.Kind = gskNone
    NodesAppearance.Stroke.Color = 11119017
    NodesAppearance.ColumnStroke.Color = -1
    NodesAppearance.LineStroke.Kind = gskDot
    NodesAppearance.LineStroke.Color = 11119017
    NodesAppearance.Font.Charset = DEFAULT_CHARSET
    NodesAppearance.Font.Color = clBlack
    NodesAppearance.Font.Height = -11
    NodesAppearance.Font.Name = 'Tahoma'
    NodesAppearance.Font.Style = []
    NodesAppearance.TitleFont.Charset = DEFAULT_CHARSET
    NodesAppearance.TitleFont.Color = clBlack
    NodesAppearance.TitleFont.Height = -11
    NodesAppearance.TitleFont.Name = 'Tahoma'
    NodesAppearance.TitleFont.Style = []
    NodesAppearance.SelectedFill.Color = 16297243
    NodesAppearance.SelectedStroke.Color = 16297243
    NodesAppearance.DisabledFill.Color = 11119017
    NodesAppearance.DisabledStroke.Kind = gskNone
    NodesAppearance.DisabledStroke.Color = 11119017
    NodesAppearance.ExtendedFill.Color = 16053492
    NodesAppearance.ExtendedStroke.Color = 11119017
    NodesAppearance.ExtendedFont.Charset = DEFAULT_CHARSET
    NodesAppearance.ExtendedFont.Color = clWindowText
    NodesAppearance.ExtendedFont.Height = -11
    NodesAppearance.ExtendedFont.Name = 'Tahoma'
    NodesAppearance.ExtendedFont.Style = []
    NodesAppearance.ExtendedSelectedFill.Color = 16297243
    NodesAppearance.ExtendedSelectedStroke.Kind = gskNone
    NodesAppearance.ExtendedSelectedStroke.Color = 11119017
    NodesAppearance.ExtendedDisabledFill.Color = 11119017
    NodesAppearance.ExtendedDisabledStroke.Kind = gskNone
    NodesAppearance.ExtendedDisabledStroke.Color = 11119017
    NodesAppearance.ExpandNodeIcon.Data = {
      0954506E67496D61676589504E470D0A1A0A0000000D494844520000000B0000
      000B080200000026CEE071000000017352474200AECE1CE90000000467414D41
      0000B18F0BFC6105000000097048597300000EC300000EC301C76FA864000000
      1874455874536F667477617265007061696E742E6E657420342E302E36FC8C63
      DF000000334944415478DA63ACAEAD66C00B18812A5A9A5A7049D7D4D5A0ABF0
      F6F3DEBA692B8D540025301D01544A6F7710080FFC610A005ADF3FFDA83755DB
      0000000049454E44AE426082}
    NodesAppearance.CollapseNodeIcon.Data = {
      0954506E67496D61676589504E470D0A1A0A0000000D494844520000000B0000
      000B080200000026CEE071000000017352474200AECE1CE90000000467414D41
      0000B18F0BFC6105000000097048597300000EC300000EC301C76FA864000000
      1874455874536F667477617265007061696E742E6E657420342E302E36FC8C63
      DF0000002C4944415478DA63ACAEAD66C00B18812A5A9A5A7049D7D4D5D05B85
      B79F37B2DCD64D5B07C61DF854E00F53005DBC2DFDD89D52A70000000049454E
      44AE426082}
    NodesAppearance.ExpandNodeIconLarge.Data = {
      0954506E67496D61676589504E470D0A1A0A0000000D49484452000000160000
      001608020000004BD6FB6C000000017352474200AECE1CE90000000467414D41
      0000B18F0BFC6105000000097048597300000EC300000EC301C76FA864000000
      1874455874536F667477617265007061696E742E6E657420342E302E36FC8C63
      DF000000404944415478DA63ACAEAD66A00C3052CD8896A6163234D7D4D5D0C5
      086F3F6F20B975D3D6512306C40888066200C450DA183138C262D488C1535E50
      02A8600400AA8F7FF987EC13380000000049454E44AE426082}
    NodesAppearance.CollapseNodeIconLarge.Data = {
      0954506E67496D61676589504E470D0A1A0A0000000D49484452000000160000
      001608020000004BD6FB6C0000000467414D410000B18F0BFC61050000000970
      48597300000EC200000EC20115284A800000001874455874536F667477617265
      007061696E742E6E657420342E302E36FC8C63DF000000384944415478DA63AC
      AEAD66A00C3052CD8896A6163234D7D4D58C1A31628CF0F6F3C6A36DEBA6AD74
      31627084C5A81183C1084A00158C000071065BF9A44132100000000049454E44
      AE426082}
    ExplicitLeft = 136
    ExplicitTop = 96
    ExplicitWidth = 300
    ExplicitHeight = 276
  end
  object Connection: TFDConnection
    Params.Strings = (
      'ConnectionDef=leecounty')
    Connected = True
    LoginPrompt = False
    Left = 80
    Top = 320
  end
  object Query: TFDQuery
    Connection = Connection
    SQL.Strings = (
      'select * from poi order by type, city, name')
    Left = 80
    Top = 368
    object QueryObjectID: TIntegerField
      FieldName = 'ObjectID'
      Origin = 'ObjectID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QueryNAME: TWideStringField
      FieldName = 'NAME'
      Origin = 'NAME'
      Required = True
      Size = 100
    end
    object QuerySTREET_ADDRESS: TWideStringField
      FieldName = 'STREET_ADDRESS'
      Origin = 'STREET_ADDRESS'
      Required = True
      Size = 50
    end
    object QueryCITY: TWideStringField
      FieldName = 'CITY'
      Origin = 'CITY'
      Required = True
      Size = 50
    end
    object QueryZIP: TIntegerField
      FieldName = 'ZIP'
      Origin = 'ZIP'
    end
    object QueryTYPE: TWideStringField
      FieldName = 'TYPE'
      Origin = 'TYPE'
      Required = True
      Size = 50
    end
    object QueryEDITOR_NAME: TWideStringField
      FieldName = 'EDITOR_NAME'
      Origin = 'EDITOR_NAME'
      Required = True
      Size = 50
    end
    object QueryEDIT_DATE: TSQLTimeStampField
      FieldName = 'EDIT_DATE'
      Origin = 'EDIT_DATE'
      Required = True
    end
    object QueryUSNG: TWideStringField
      FieldName = 'USNG'
      Origin = 'USNG'
      Required = True
      Size = 50
    end
    object QueryX: TFloatField
      FieldName = 'X'
      Origin = 'X'
      Required = True
    end
    object QueryY: TFloatField
      FieldName = 'Y'
      Origin = 'Y'
      Required = True
    end
    object QueryCriticalFac: TWideStringField
      FieldName = 'CriticalFac'
      Origin = 'CriticalFac'
      Size = 50
    end
    object QueryWebsite: TWideStringField
      FieldName = 'Website'
      Origin = 'Website'
      Required = True
      Size = 150
    end
  end
end
