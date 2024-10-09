object MainForm: TMainForm
  Left = 839
  Top = 638
  Caption = 'Space Explorers'
  ClientHeight = 253
  ClientWidth = 332
  Color = clGrayText
  Constraints.MaxHeight = 300
  Constraints.MaxWidth = 350
  Constraints.MinHeight = 300
  Constraints.MinWidth = 350
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poDesigned
  OnCreate = FormCreate
  TextHeight = 15
  object tUpdater: TTimer
    Interval = 10
    OnTimer = tUpdaterTimer
    Left = 240
    Top = 144
  end
end
