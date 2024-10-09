object frmLogin: TfrmLogin
  Left = 0
  Top = 0
  Width = 331
  Height = 280
  TabOrder = 0
  object lblUser: TLabel
    Left = 56
    Top = 168
    Width = 82
    Height = 12
    Align = alCustom
    Anchors = []
    Caption = 'Username:'
    Font.Charset = OEM_CHARSET
    Font.Color = clBlack
    Font.Height = -12
    Font.Name = 'Terminal'
    Font.Style = [fsBold, fsUnderline]
    ParentFont = False
  end
  object lblPass: TLabel
    Left = 56
    Top = 205
    Width = 82
    Height = 12
    Align = alCustom
    Anchors = []
    Caption = 'Password:'
    Font.Charset = OEM_CHARSET
    Font.Color = clBlack
    Font.Height = -12
    Font.Name = 'Terminal'
    Font.Style = [fsBold, fsUnderline]
    ParentFont = False
  end
  object lblTitle: TLabel
    Left = 18
    Top = 40
    Width = 281
    Height = 24
    Align = alCustom
    Anchors = []
    Caption = 'SPACE EXPLORERS'
    Font.Charset = OEM_CHARSET
    Font.Color = clWindowText
    Font.Height = -27
    Font.Name = 'Terminal'
    Font.Style = [fsBold, fsItalic, fsUnderline]
    ParentFont = False
  end
  object btnLog: TButton
    Left = 56
    Top = 240
    Width = 89
    Height = 25
    Align = alCustom
    Anchors = []
    Caption = 'Log in'
    TabOrder = 0
    OnClick = btnLogClick
  end
  object btnAccount: TButton
    Left = 184
    Top = 240
    Width = 91
    Height = 25
    Align = alCustom
    Anchors = []
    Caption = 'Create Account'
    TabOrder = 1
    OnClick = btnAccountClick
  end
  object edtUser: TEdit
    Left = 144
    Top = 163
    Width = 131
    Height = 23
    Align = alCustom
    Anchors = []
    Color = clSkyBlue
    TabOrder = 2
  end
  object edtPass: TEdit
    Left = 144
    Top = 200
    Width = 131
    Height = 23
    Align = alCustom
    Anchors = []
    Color = clSkyBlue
    PasswordChar = #9679
    TabOrder = 3
  end
  object btnShow: TButton
    Left = 281
    Top = 203
    Width = 40
    Height = 17
    Align = alCustom
    Anchors = []
    Caption = 'Show'
    TabOrder = 4
    OnClick = btnShowClick
  end
end
