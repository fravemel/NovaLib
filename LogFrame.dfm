object FrameLog: TFrameLog
  Left = 0
  Height = 332
  Top = 0
  Width = 673
  ClientHeight = 332
  ClientWidth = 673
  TabOrder = 0
  object panLogFilter: TPanel
    Left = 0
    Height = 25
    Top = 0
    Width = 673
    Align = alTop
    BevelOuter = bvNone
    ClientHeight = 25
    ClientWidth = 673
    TabOrder = 0
    object lbLogFilterText: TLabel
      Left = 16
      Height = 15
      Top = 4
      Width = 38
      Alignment = taRightJustify
      Caption = 'Поиск:'
      ParentColor = False
    end
    object lbLogFilterObj: TLabel
      Left = 372
      Height = 15
      Top = 4
      Width = 43
      Alignment = taRightJustify
      Anchors = [akTop, akRight]
      Caption = 'Объект:'
      ParentColor = False
      Visible = False
    end
    object btnPause: TSpeedButton
      Left = 644
      Height = 20
      Top = 2
      Width = 20
      Action = actFreezeLog
      Anchors = [akTop, akRight]
      Margin = 0
      ShowHint = True
      ParentShowHint = False
    end
    object edLogFilter: TEdit
      Left = 56
      Height = 23
      Top = 2
      Width = 205
      OnChange = edLogFilterChange
      TabOrder = 0
    end
    object cbLogFilterObj: TComboBox
      Left = 420
      Height = 23
      Top = 2
      Width = 145
      Anchors = [akTop, akRight]
      Enabled = False
      ItemHeight = 15
      TabOrder = 1
      Visible = False
    end
    object btnLogFilterClear: TButton
      Left = 572
      Height = 20
      Top = 2
      Width = 61
      Anchors = [akTop, akRight]
      Caption = 'Отмена'
      OnClick = actClearLogFilterExecute
      TabOrder = 2
      Visible = False
    end
  end
  object lvLog: TListView
    Left = 0
    Height = 307
    Hint = 'Двойной щелчок - приостановить прокрутку'
    Top = 25
    Width = 673
    Align = alClient
    Columns = <    
      item
        Caption = 'Время'
        Width = 100
      end    
      item
        AutoSize = True
        Caption = 'Текст'
        Width = 45
      end>
    MultiSelect = True
    OwnerData = True
    PopupMenu = pmLog
    ReadOnly = True
    RowSelect = True
    ShowColumnHeaders = False
    TabOrder = 1
    ViewStyle = vsReport
    OnCustomDrawItem = lvLogCustomDrawItem
    OnData = lvLogData
    OnDblClick = actFreezeLogExecute
  end
  object alLog: TActionList
    Images = imgListLog
    Left = 200
    Top = 96
    object actFreezeLog: TAction
      Caption = 'Остановить прокрутку'
      Hint = 'Остановить/возобновить автопрокрутку событий в журнале'
      ImageIndex = 0
      OnExecute = actFreezeLogExecute
    end
    object actClearLogFilter: TAction
      Caption = 'Отмена фильтра'
      OnExecute = actClearLogFilterExecute
    end
    object actFilterSelectedObj: TAction
      Caption = 'Фильтр по объекту'
      OnExecute = actFilterSelectedObjExecute
    end
    object actClearLog: TAction
      Caption = 'Очистить журнал'
      OnExecute = actClearLogExecute
    end
    object actEdit: TAction
      Caption = 'Текст выделенных строк'
      OnExecute = actEditExecute
    end
    object actTimeDiff: TAction
      Caption = 'Разница времени'
      OnExecute = actTimeDiffExecute
    end
  end
  object pmLog: TPopupMenu
    Images = imgListLog
    Left = 264
    Top = 96
    object mniFreezeLog: TMenuItem
      Action = actFreezeLog
    end
    object mniEdit: TMenuItem
      Action = actEdit
    end
    object mniTimeDiff: TMenuItem
      Action = actTimeDiff
    end
    object mniFilterSelectedObj: TMenuItem
      Action = actFilterSelectedObj
    end
    object mniClearLogFilter: TMenuItem
      Action = actClearLogFilter
    end
    object mniClearLog: TMenuItem
      Action = actClearLog
    end
  end
  object imgListLog: TImageList
    Left = 264
    Top = 164
    Bitmap = {
      4C69020000001000000010000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000F0C38AFFEBAF
      64FFEBAF64FFF0C38AFF00000000F0C38AFFEBAF64FFEBAF64FFF0C38AFF0000
      0000000000000000000000000000000000000000000000000000E7AB61FFFFE0
      94FFFEDA8EFFE7AB61FF00000000E7AB61FFFFDF93FFFEDA8EFFE7AB61FF0000
      0000000000000000000000000000000000000000000000000000E2A65DFFFBD5
      89FFF7C478FFE2A65DFF00000000E2A65DFFFBD286FFF7C478FFE2A65DFF0000
      0000000000000000000000000000000000000000000000000000DB9F58FFF7CB
      7FFFF1B66AFFDB9F58FF00000000DB9F58FFECBE72FFE0A559FFDB9F58FF0000
      0000000000000000000000000000000000000000000000000000D49852FFF3C5
      79FFE1A559FFD49852FF00000000D49852FFDDAB5FFFCC9044FFD49852FF0000
      0000000000000000000000000000000000000000000000000000CC904DFFE3B3
      61FFD0933FFFCC904DFF00000000CC904DFFDCA856FFD0933FFFCC904DFF0000
      0000000000000000000000000000000000000000000000000000C58948FFE8B2
      4EFFDD9C2DFFC58948FF00000000C58948FFE5AB44FFDD9C2DFFC58948FF0000
      0000000000000000000000000000000000000000000000000000BD8141FFF2B6
      37FFEDA718FFBD8141FF00000000BD8141FFF0B12CFFEDA718FFBD8141FF0000
      0000000000000000000000000000000000000000000000000000B67A3CFFFCBA
      22FFFBAF06FFB67A3CFF00000000B67A3CFFFBB516FFFBAF06FFB67A3CFF0000
      0000000000000000000000000000000000000000000000000000B07438FFFFBD
      1FFFFFB811FFB07438FF00000000B07438FFFFB810FFFFB509FFB07438FF0000
      0000000000000000000000000000000000000000000000000000A5825EFFAB70
      34FFAB7034FFA27D59FF00000000A27D59FFAB7034FFAB7034FFA4805CFF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F0C3
      8AFFF5DAB9FF0000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000E8AC
      61FFE8AC61FFF4D9B7FF00000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000E4A8
      5EFFFFE599FFE4A85EFFF1D6B5FF000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000DFA3
      5AFFFBD488FFFFE397FFDFA35AFFEFD4B3FF0000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000D99D
      56FFF7CB7FFFF1B66AFFFDDC90FFD99D56FFECD1B1FF00000000000000000000
      000000000000000000000000000000000000000000000000000000000000D398
      51FFF5C67AFFE9AD61FFDFA357FFF1CC80FFD39851FFEACEB0FF000000000000
      000000000000000000000000000000000000000000000000000000000000CC90
      4DFFE5B466FFCE9244FFCD9143FFCD9143FFE7BC6FFFCC904DFF000000000000
      000000000000000000000000000000000000000000000000000000000000C589
      48FFE4AE50FFD99934FFD99934FFEABB60FFC58948FFE4C9ACFF000000000000
      000000000000000000000000000000000000000000000000000000000000BF84
      44FFEFB339FFEAA41DFFF2BD4AFFBF8444FFE1C7A9FF00000000000000000000
      000000000000000000000000000000000000000000000000000000000000B97D
      3EFFFBB821FFFBBF34FFB97D3EFFDFC4A8FF0000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000B378
      3AFFFFBF25FFB3783AFFDCC1A5FF000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000AF74
      36FFAF7436FFCCB7A4FF00000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000A480
      5DFFB6A18AFFCECECEFFD6D6D6FFDEDEDEFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000
    }
  end
end