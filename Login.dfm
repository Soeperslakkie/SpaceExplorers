object frmLogin: TfrmLogin
  Left = 0
  Top = 0
  Width = 310
  Height = 262
  TabOrder = 0
  object lblUser: TLabel
    Left = 48
    Top = 144
    Width = 82
    Height = 12
    Caption = 'Username:'
    Font.Charset = OEM_CHARSET
    Font.Color = clBlack
    Font.Height = -12
    Font.Name = 'Terminal'
    Font.Style = [fsBold, fsUnderline]
    ParentFont = False
  end
  object lblPass: TLabel
    Left = 48
    Top = 181
    Width = 82
    Height = 12
    Caption = 'Password:'
    Font.Charset = OEM_CHARSET
    Font.Color = clBlack
    Font.Height = -12
    Font.Name = 'Terminal'
    Font.Style = [fsBold, fsUnderline]
    ParentFont = False
  end
  object lblTitle: TLabel
    Left = 72
    Top = 40
    Width = 174
    Height = 18
    Caption = 'SPACE EXPLORERS'
    Font.Charset = OEM_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Terminal'
    Font.Style = [fsBold, fsItalic]
    ParentFont = False
  end
  object btnLog: TButton
    Left = 48
    Top = 216
    Width = 89
    Height = 25
    Caption = 'Log in'
    TabOrder = 0
    OnClick = btnLogClick
  end
  object btnAccount: TButton
    Left = 176
    Top = 216
    Width = 91
    Height = 25
    Caption = 'Create Account'
    TabOrder = 1
    OnClick = btnAccountClick
  end
  object edtUser: TEdit
    Left = 136
    Top = 139
    Width = 131
    Height = 23
    Color = clRed
    TabOrder = 2
  end
  object edtPass: TEdit
    Left = 136
    Top = 176
    Width = 131
    Height = 23
    Color = clRed
    TabOrder = 3
  end
end
