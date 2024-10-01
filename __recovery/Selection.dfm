object frmSelection: TfrmSelection
  Left = 0
  Top = 0
  Width = 324
  Height = 273
  Align = alClient
  Color = clGray
  ParentBackground = False
  ParentColor = False
  TabOrder = 0
  object lblPlanet: TLabel
    Left = 16
    Top = 0
    Width = 295
    Height = 18
    Caption = 'Choose a place to explore!'
    Font.Charset = OEM_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Terminal'
    Font.Style = [fsBold, fsItalic]
    ParentFont = False
  end
  object rgpPlanet: TRadioGroup
    Left = 8
    Top = 24
    Width = 97
    Height = 209
    Caption = 'Planets:'
    Color = clGray
    Items.Strings = (
      'Mercury'
      'Venus'
      'Earth'
      'Mars'
      'Jupiter'
      'Saturn'
      'Uranus'
      'Neptune')
    ParentBackground = False
    ParentColor = False
    TabOrder = 0
    OnClick = rgpPlanetClick
  end
  object btnLaunch: TButton
    Left = 24
    Top = 239
    Width = 137
    Height = 25
    Caption = 'Launch!'
    TabOrder = 1
    OnClick = btnLaunchClick
  end
  object rgpMoon: TRadioGroup
    Left = 111
    Top = 24
    Width = 102
    Height = 209
    Caption = 'Moon:'
    Items.Strings = (
      'The Moon'
      'Europa'
      'Triton'
      'Titan'
      'Io'
      'Rhea'
      'Ganymede'
      'Phobos'
      'Deimos')
    TabOrder = 2
    OnClick = rgpMoonClick
  end
  object rgpOther: TRadioGroup
    Left = 219
    Top = 168
    Width = 98
    Height = 65
    Caption = 'Other:'
    Items.Strings = (
      'The Sun'
      'Kuiper Belt')
    TabOrder = 3
    OnClick = rgpOtherClick
  end
  object rgpDwarf: TRadioGroup
    Left = 219
    Top = 24
    Width = 98
    Height = 138
    Caption = 'Dwarf Planets:'
    Items.Strings = (
      'Pluto'
      'Eris'
      'Makemake'
      'Gonggong'
      'Quaoar'
      'Ceres')
    TabOrder = 4
    OnClick = rgpDwarfClick
  end
  object btnQuiz: TButton
    Left = 184
    Top = 240
    Width = 123
    Height = 25
    Caption = 'Quiz!'
    TabOrder = 5
  end
end
