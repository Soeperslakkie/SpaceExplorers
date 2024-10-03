object MainForm: TMainForm
  Left = 387
  Top = 458
  Caption = 'Space Explorers'
  ClientHeight = 271
  ClientWidth = 326
  Color = clGrayText
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poDesigned
  OnCreate = FormCreate
  TextHeight = 15
  object tmrUpdater: TTimer
    Interval = 10
    OnTimer = tmrUpdaterTimer
    Left = 240
    Top = 144
  end
end
