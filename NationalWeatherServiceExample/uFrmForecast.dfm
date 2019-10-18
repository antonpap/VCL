object FrmForecast: TFrmForecast
  Left = 0
  Top = 0
  Caption = 'Weather Forecast'
  ClientHeight = 677
  ClientWidth = 771
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object AdvSplitter1: TAdvSplitter
    Left = 0
    Top = 270
    Width = 771
    Height = 3
    Cursor = crVSplit
    Align = alTop
    Appearance.BorderColor = clNone
    Appearance.BorderColorHot = clNone
    Appearance.Color = clWhite
    Appearance.ColorTo = clSilver
    Appearance.ColorHot = clWhite
    Appearance.ColorHotTo = clGray
    GripStyle = sgDots
    ExplicitLeft = 8
    ExplicitTop = 312
  end
  object Chart: TAdvGDIPChartView
    Left = 0
    Top = 273
    Width = 771
    Height = 404
    ShowDesignHelper = False
    Align = alClient
    Color = clWhite
    Panes = <
      item
        Bands.Distance = 2.000000000000000000
        Background.Font.Charset = DEFAULT_CHARSET
        Background.Font.Color = clWindowText
        Background.Font.Height = -11
        Background.Font.Name = 'Tahoma'
        Background.Font.Style = []
        BorderColor = clBlack
        CrossHair.CrossHairYValues.Position = [chYAxis]
        CrossHair.Distance = 0
        Height = 100.000000000000000000
        Legend.Font.Charset = DEFAULT_CHARSET
        Legend.Font.Color = clWindowText
        Legend.Font.Height = -11
        Legend.Font.Name = 'Tahoma'
        Legend.Font.Style = []
        Margin.LeftMargin = 10
        Margin.RightMargin = 10
        Margin.TopMargin = 10
        Name = 'ChartPane 0'
        Options = []
        Range.StartDate = 43662.567322280090000000
        Range.RangeTo = 5
        Series = <
          item
            AutoRange = arEnabledZeroBased
            Pie.ValueFont.Charset = DEFAULT_CHARSET
            Pie.ValueFont.Color = clWindowText
            Pie.ValueFont.Height = -11
            Pie.ValueFont.Name = 'Tahoma'
            Pie.ValueFont.Style = []
            Pie.LegendFont.Charset = DEFAULT_CHARSET
            Pie.LegendFont.Color = clWindowText
            Pie.LegendFont.Height = -11
            Pie.LegendFont.Name = 'Tahoma'
            Pie.LegendFont.Style = []
            Annotations = <>
            ChartType = ctLineHistogram
            CrossHairYValue.BorderWidth = 0
            CrossHairYValue.Font.Charset = DEFAULT_CHARSET
            CrossHairYValue.Font.Color = clWindowText
            CrossHairYValue.Font.Height = -11
            CrossHairYValue.Font.Name = 'Tahoma'
            CrossHairYValue.Font.Style = []
            CrossHairYValue.GradientSteps = 0
            LegendText = 'Serie 0'
            Marker.MarkerColor = clNone
            Name = 'Serie 0'
            ShowValue = True
            ValueFont.Charset = DEFAULT_CHARSET
            ValueFont.Color = clWindowText
            ValueFont.Height = -12
            ValueFont.Name = 'Tahoma'
            ValueFont.Style = []
            ValueFormat = '%g'
            XAxis.DateTimeFont.Charset = DEFAULT_CHARSET
            XAxis.DateTimeFont.Color = clWindowText
            XAxis.DateTimeFont.Height = -11
            XAxis.DateTimeFont.Name = 'Tahoma'
            XAxis.DateTimeFont.Style = []
            XAxis.MajorFont.Charset = DEFAULT_CHARSET
            XAxis.MajorFont.Color = clWindowText
            XAxis.MajorFont.Height = -11
            XAxis.MajorFont.Name = 'Tahoma'
            XAxis.MajorFont.Style = []
            XAxis.MajorUnit = 1.000000000000000000
            XAxis.MajorUnitSpacing = 0
            XAxis.MinorFont.Charset = DEFAULT_CHARSET
            XAxis.MinorFont.Color = clWindowText
            XAxis.MinorFont.Height = -11
            XAxis.MinorFont.Name = 'Tahoma'
            XAxis.MinorFont.Style = []
            XAxis.MinorUnit = 1.000000000000000000
            XAxis.MinorUnitSpacing = 0
            XAxis.TextTop.Font.Charset = DEFAULT_CHARSET
            XAxis.TextTop.Font.Color = clWindowText
            XAxis.TextTop.Font.Height = -11
            XAxis.TextTop.Font.Name = 'Tahoma'
            XAxis.TextTop.Font.Style = []
            XAxis.TextBottom.Font.Charset = DEFAULT_CHARSET
            XAxis.TextBottom.Font.Color = clWindowText
            XAxis.TextBottom.Font.Height = -11
            XAxis.TextBottom.Font.Name = 'Tahoma'
            XAxis.TextBottom.Font.Style = []
            YAxis.MajorFont.Charset = DEFAULT_CHARSET
            YAxis.MajorFont.Color = clWindowText
            YAxis.MajorFont.Height = -11
            YAxis.MajorFont.Name = 'Tahoma'
            YAxis.MajorFont.Style = []
            YAxis.MajorUnit = 10.000000000000000000
            YAxis.MajorUnitSpacing = 10
            YAxis.MinorFont.Charset = DEFAULT_CHARSET
            YAxis.MinorFont.Color = clWindowText
            YAxis.MinorFont.Height = -11
            YAxis.MinorFont.Name = 'Tahoma'
            YAxis.MinorFont.Style = []
            YAxis.MinorUnit = 5.000000000000000000
            YAxis.MinorUnitSpacing = 5
            YAxis.TextLeft.Angle = 90
            YAxis.TextLeft.Font.Charset = DEFAULT_CHARSET
            YAxis.TextLeft.Font.Color = clWindowText
            YAxis.TextLeft.Font.Height = -11
            YAxis.TextLeft.Font.Name = 'Tahoma'
            YAxis.TextLeft.Font.Style = []
            YAxis.TextRight.Angle = 90
            YAxis.TextRight.Font.Charset = DEFAULT_CHARSET
            YAxis.TextRight.Font.Color = clWindowText
            YAxis.TextRight.Font.Height = -11
            YAxis.TextRight.Font.Name = 'Tahoma'
            YAxis.TextRight.Font.Style = []
            YAxis.TickMarkColor = clRed
            ZeroLineColor = clBlack
            BarValueTextFont.Charset = DEFAULT_CHARSET
            BarValueTextFont.Color = clWindowText
            BarValueTextFont.Height = -11
            BarValueTextFont.Name = 'Tahoma'
            BarValueTextFont.Style = []
            XAxisGroups = <>
            SerieType = stNormal
          end>
        Title.Alignment = taCenter
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = []
        Title.Position = tTop
        XAxis.Font.Charset = ANSI_CHARSET
        XAxis.Font.Color = clWindowText
        XAxis.Font.Height = -16
        XAxis.Font.Name = 'Segoe UI'
        XAxis.Font.Style = []
        XAxis.Text = 'Period'
        XGrid.MajorFont.Charset = DEFAULT_CHARSET
        XGrid.MajorFont.Color = clWindowText
        XGrid.MajorFont.Height = -11
        XGrid.MajorFont.Name = 'Tahoma'
        XGrid.MajorFont.Style = []
        XGrid.MinorFont.Charset = DEFAULT_CHARSET
        XGrid.MinorFont.Color = clWindowText
        XGrid.MinorFont.Height = -11
        XGrid.MinorFont.Name = 'Tahoma'
        XGrid.MinorFont.Style = []
        YAxis.Alignment = taLeftJustify
        YAxis.Font.Charset = ANSI_CHARSET
        YAxis.Font.Color = clWindowText
        YAxis.Font.Height = -16
        YAxis.Font.Name = 'Segoe UI'
        YAxis.Font.Style = []
        YAxis.Size = 40
        YAxis.Text = 'Temperature/F'
        YGrid.MinorDistance = 1.000000000000000000
        YGrid.MajorDistance = 2.000000000000000000
      end>
    Tracker.Font.Charset = DEFAULT_CHARSET
    Tracker.Font.Color = clWindowText
    Tracker.Font.Height = -11
    Tracker.Font.Name = 'Tahoma'
    Tracker.Font.Style = []
    Tracker.Title.Font.Charset = DEFAULT_CHARSET
    Tracker.Title.Font.Color = clWindowText
    Tracker.Title.Font.Height = -11
    Tracker.Title.Font.Name = 'Tahoma'
    Tracker.Title.Font.Style = []
    Tracker.Title.Text = 'TRACKER'
    Tracker.OpenValuePrefix = 'O:'
    Tracker.HighValuePrefix = 'H:'
    Tracker.LowValuePrefix = 'L:'
    Tracker.CloseValuePrefix = 'C:'
    Version = '4.2.1.6 APR, 2018'
    XAxisZoomSensitivity = 1.000000000000000000
    YAxisZoomSensitivity = 1.000000000000000000
    DoubleBuffered = True
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 771
    Height = 270
    Align = alTop
    Caption = 'Panel1'
    TabOrder = 1
    object AdvSplitter2: TAdvSplitter
      Left = 417
      Top = 1
      Height = 268
      Align = alRight
      Appearance.BorderColor = clNone
      Appearance.BorderColorHot = clNone
      Appearance.Color = clWhite
      Appearance.ColorTo = clSilver
      Appearance.ColorHot = clWhite
      Appearance.ColorHotTo = clGray
      GripStyle = sgDots
      ExplicitLeft = 312
      ExplicitTop = 40
      ExplicitHeight = 100
    end
    object Grid: TAdvStringGrid
      Left = 1
      Top = 1
      Width = 416
      Height = 268
      Cursor = crDefault
      Align = alClient
      ColCount = 6
      DefaultRowHeight = 40
      DrawingStyle = gdsClassic
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRowSelect]
      ParentFont = False
      ScrollBars = ssBoth
      TabOrder = 0
      OnSelectCell = GridSelectCell
      HoverRowCells = [hcNormal, hcSelected]
      ActiveCellFont.Charset = DEFAULT_CHARSET
      ActiveCellFont.Color = clWindowText
      ActiveCellFont.Height = -11
      ActiveCellFont.Name = 'Tahoma'
      ActiveCellFont.Style = [fsBold]
      ControlLook.FixedGradientHoverFrom = clGray
      ControlLook.FixedGradientHoverTo = clWhite
      ControlLook.FixedGradientDownFrom = clGray
      ControlLook.FixedGradientDownTo = clSilver
      ControlLook.DropDownHeader.Font.Charset = DEFAULT_CHARSET
      ControlLook.DropDownHeader.Font.Color = clWindowText
      ControlLook.DropDownHeader.Font.Height = -11
      ControlLook.DropDownHeader.Font.Name = 'Tahoma'
      ControlLook.DropDownHeader.Font.Style = []
      ControlLook.DropDownHeader.Visible = True
      ControlLook.DropDownHeader.Buttons = <>
      ControlLook.DropDownFooter.Font.Charset = DEFAULT_CHARSET
      ControlLook.DropDownFooter.Font.Color = clWindowText
      ControlLook.DropDownFooter.Font.Height = -11
      ControlLook.DropDownFooter.Font.Name = 'Tahoma'
      ControlLook.DropDownFooter.Font.Style = []
      ControlLook.DropDownFooter.Visible = True
      ControlLook.DropDownFooter.Buttons = <>
      Filter = <>
      FilterDropDown.Font.Charset = DEFAULT_CHARSET
      FilterDropDown.Font.Color = clWindowText
      FilterDropDown.Font.Height = -11
      FilterDropDown.Font.Name = 'Tahoma'
      FilterDropDown.Font.Style = []
      FilterDropDown.TextChecked = 'Checked'
      FilterDropDown.TextUnChecked = 'Unchecked'
      FilterDropDownClear = '(All)'
      FilterEdit.TypeNames.Strings = (
        'Starts with'
        'Ends with'
        'Contains'
        'Not contains'
        'Equal'
        'Not equal'
        'Larger than'
        'Smaller than'
        'Clear')
      FixedRowHeight = 40
      FixedFont.Charset = DEFAULT_CHARSET
      FixedFont.Color = clWindowText
      FixedFont.Height = -11
      FixedFont.Name = 'Tahoma'
      FixedFont.Style = [fsBold]
      FloatFormat = '%.2f'
      HoverButtons.Buttons = <>
      HoverButtons.Position = hbLeftFromColumnLeft
      HTMLSettings.ImageFolder = 'images'
      HTMLSettings.ImageBaseName = 'img'
      PrintSettings.DateFormat = 'dd/mm/yyyy'
      PrintSettings.Font.Charset = DEFAULT_CHARSET
      PrintSettings.Font.Color = clWindowText
      PrintSettings.Font.Height = -11
      PrintSettings.Font.Name = 'Tahoma'
      PrintSettings.Font.Style = []
      PrintSettings.FixedFont.Charset = DEFAULT_CHARSET
      PrintSettings.FixedFont.Color = clWindowText
      PrintSettings.FixedFont.Height = -11
      PrintSettings.FixedFont.Name = 'Tahoma'
      PrintSettings.FixedFont.Style = []
      PrintSettings.HeaderFont.Charset = DEFAULT_CHARSET
      PrintSettings.HeaderFont.Color = clWindowText
      PrintSettings.HeaderFont.Height = -11
      PrintSettings.HeaderFont.Name = 'Tahoma'
      PrintSettings.HeaderFont.Style = []
      PrintSettings.FooterFont.Charset = DEFAULT_CHARSET
      PrintSettings.FooterFont.Color = clWindowText
      PrintSettings.FooterFont.Height = -11
      PrintSettings.FooterFont.Name = 'Tahoma'
      PrintSettings.FooterFont.Style = []
      PrintSettings.PageNumSep = '/'
      SearchFooter.FindNextCaption = 'Find &next'
      SearchFooter.FindPrevCaption = 'Find &previous'
      SearchFooter.Font.Charset = DEFAULT_CHARSET
      SearchFooter.Font.Color = clWindowText
      SearchFooter.Font.Height = -11
      SearchFooter.Font.Name = 'Tahoma'
      SearchFooter.Font.Style = []
      SearchFooter.HighLightCaption = 'Highlight'
      SearchFooter.HintClose = 'Close'
      SearchFooter.HintFindNext = 'Find next occurrence'
      SearchFooter.HintFindPrev = 'Find previous occurrence'
      SearchFooter.HintHighlight = 'Highlight occurrences'
      SearchFooter.MatchCaseCaption = 'Match case'
      SearchFooter.ResultFormat = '(%d of %d)'
      SortSettings.DefaultFormat = ssAutomatic
      Version = '8.4.8.3'
      ColWidths = (
        64
        64
        64
        64
        64
        64)
      object Cloud: TAdvCloudImage
        Left = 104
        Top = 32
        Width = 177
        Height = 169
        Async = False
        AutoSize = False
        CheckContentLength = False
        WebPicture.Stretch = False
        PicturePosition = bpCenter
        Visible = False
        Version = '1.0.1.1'
      end
    end
    object txtForecast: TAdvMemo
      Left = 420
      Top = 1
      Width = 350
      Height = 268
      Cursor = crIBeam
      ActiveLineSettings.ShowActiveLine = False
      ActiveLineSettings.ShowActiveLineIndicator = False
      Align = alRight
      AutoCompletion.Font.Charset = DEFAULT_CHARSET
      AutoCompletion.Font.Color = clWindowText
      AutoCompletion.Font.Height = -11
      AutoCompletion.Font.Name = 'Tahoma'
      AutoCompletion.Font.Style = []
      AutoCompletion.StartToken = '(.'
      AutoCorrect.Active = True
      AutoHintParameterPosition = hpBelowCode
      BookmarkGlyph.Data = {
        36050000424D3605000000000000360400002800000010000000100000000100
        0800000000000001000000000000000000000001000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000C0DCC000F0CA
        A6000020400000206000002080000020A0000020C0000020E000004000000040
        20000040400000406000004080000040A0000040C0000040E000006000000060
        20000060400000606000006080000060A0000060C0000060E000008000000080
        20000080400000806000008080000080A0000080C0000080E00000A0000000A0
        200000A0400000A0600000A0800000A0A00000A0C00000A0E00000C0000000C0
        200000C0400000C0600000C0800000C0A00000C0C00000C0E00000E0000000E0
        200000E0400000E0600000E0800000E0A00000E0C00000E0E000400000004000
        20004000400040006000400080004000A0004000C0004000E000402000004020
        20004020400040206000402080004020A0004020C0004020E000404000004040
        20004040400040406000404080004040A0004040C0004040E000406000004060
        20004060400040606000406080004060A0004060C0004060E000408000004080
        20004080400040806000408080004080A0004080C0004080E00040A0000040A0
        200040A0400040A0600040A0800040A0A00040A0C00040A0E00040C0000040C0
        200040C0400040C0600040C0800040C0A00040C0C00040C0E00040E0000040E0
        200040E0400040E0600040E0800040E0A00040E0C00040E0E000800000008000
        20008000400080006000800080008000A0008000C0008000E000802000008020
        20008020400080206000802080008020A0008020C0008020E000804000008040
        20008040400080406000804080008040A0008040C0008040E000806000008060
        20008060400080606000806080008060A0008060C0008060E000808000008080
        20008080400080806000808080008080A0008080C0008080E00080A0000080A0
        200080A0400080A0600080A0800080A0A00080A0C00080A0E00080C0000080C0
        200080C0400080C0600080C0800080C0A00080C0C00080C0E00080E0000080E0
        200080E0400080E0600080E0800080E0A00080E0C00080E0E000C0000000C000
        2000C0004000C0006000C0008000C000A000C000C000C000E000C0200000C020
        2000C0204000C0206000C0208000C020A000C020C000C020E000C0400000C040
        2000C0404000C0406000C0408000C040A000C040C000C040E000C0600000C060
        2000C0604000C0606000C0608000C060A000C060C000C060E000C0800000C080
        2000C0804000C0806000C0808000C080A000C080C000C080E000C0A00000C0A0
        2000C0A04000C0A06000C0A08000C0A0A000C0A0C000C0A0E000C0C00000C0C0
        2000C0C04000C0C06000C0C08000C0C0A000F0FBFF00A4A0A000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FDFD25252525
        2525252525252525FDFDFD2E25FFFFFFFFFFFFFFFFFFFF25FDFDFD2525252525
        2525252525252525FDFD9A9AB7B7B7B7B7B7B7B7B7B72525FDFDFD25B7B7B7B7
        B7B7B7B7B7B72525FDFD9A9AB7B7B7B7B7B7B7B7B7B72525FDFDFD25BFB7BFBF
        B7B7B7B7B7B72525FDFD9A9ABFBFBFB7BFBFB7B7B7B72525FDFDFD25BFBFBFBF
        BFB7BFBFB7B72525FDFD9A9ABFBFBFB7BFBFBFB7BFB72525FDFDFD25BFBFBFBF
        BFBFBFBFBFB72525FDFD9A9ABFBFBFBFBFB7BFBFB7B72525FDFDFD25BFBFBFBF
        BFBFBFBFBFB72525FDFD9A9ABFBFBFBFBFBFBFBFBFB725FDFDFDFD2525252525
        25252525252525FDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFD}
      BorderStyle = bsSingle
      ClipboardFormats = [cfText]
      CodeFolding.Enabled = False
      CodeFolding.LineColor = clGray
      Ctl3D = False
      DelErase = True
      EnhancedHomeKey = False
      Gutter.Font.Charset = DEFAULT_CHARSET
      Gutter.Font.Color = clWindowText
      Gutter.Font.Height = -13
      Gutter.Font.Name = 'Courier New'
      Gutter.Font.Style = []
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'COURIER NEW'
      Font.Style = []
      HiddenCaret = False
      Lines.Strings = (
        '')
      MarkerList.UseDefaultMarkerImageIndex = False
      MarkerList.DefaultMarkerImageIndex = -1
      MarkerList.ImageTransparentColor = 33554432
      OleDropTarget = []
      PrintOptions.MarginLeft = 0
      PrintOptions.MarginRight = 0
      PrintOptions.MarginTop = 0
      PrintOptions.MarginBottom = 0
      PrintOptions.PageNr = False
      PrintOptions.PrintLineNumbers = False
      ReadOnly = True
      RightMargin = 30
      RightMarginColor = 14869218
      ScrollHint = False
      SelColor = clWhite
      SelBkColor = clNavy
      ShowRightMargin = True
      SmartTabs = False
      TabOrder = 1
      TabStop = True
      TrimTrailingSpaces = True
      UILanguage.ScrollHint = 'Row'
      UILanguage.Undo = 'Undo'
      UILanguage.Redo = 'Redo'
      UILanguage.Copy = 'Copy'
      UILanguage.Cut = 'Cut'
      UILanguage.Paste = 'Paste'
      UILanguage.Delete = 'Delete'
      UILanguage.SelectAll = 'Select All'
      UrlStyle.TextColor = clBlue
      UrlStyle.BkColor = clWhite
      UrlStyle.Style = [fsUnderline]
      UseStyler = True
      Version = '3.6.8.0'
      WordWrap = wwRightMargin
    end
  end
  object ChartLink: TAdvChartLink
    Active = True
    AutoRange = arEnabledZeroBased
    ChartType = ctLineBar
    Grid = Grid
    GridValues.Column = 2
    GridValues.LegendTextType = ltCustom
    GridValues.LegendText = 'Forecast'
    GridValues.XAxisType = dtNormalColumn
    GridValues.XAxisColumn = 1
    ChartView = Chart
    Version = '1.1.0.0'
    Left = 344
    Top = 152
  end
end
