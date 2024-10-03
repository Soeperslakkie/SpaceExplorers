unit Main;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls,
  Login, Selection, Explorer;

type
  TMainForm = class(TForm)
    tmrUpdater: TTimer;
    procedure FormCreate(Sender: TObject);
    procedure tmrUpdaterTimer(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MainForm: TMainForm;
  frmLogin: TfrmLogin;
  frmSelection: TfrmSelection;

implementation

{$R *.dfm}

procedure TMainForm.tmrUpdaterTimer(Sender: TObject);
begin
  if frmLogin.bFound then
  begin
    frmSelection.Visible := True;
    tmrUpdater.Enabled := False
  end;

  frmSelection.rgpPlanet.ItemIndex := -1;
  frmSelection.rgpDwarf.ItemIndex := -1;
  frmSelection.rgpMoon.ItemIndex := -1;
  frmSelection.rgpOther.ItemIndex := -1;
end;

procedure TMainForm.FormCreate(Sender: TObject);
begin
// Create & Initialise like EVERYTHING
  frmLogin := TfrmLogin.Create(Self);
  frmLogin.Parent := Self;
  frmLogin.Visible := True;
  frmLogin.Align := alClient;

  frmLogin.edtPass.PasswordChar := '●';

  frmSelection := TfrmSelection.Create(Self);
  frmSelection.Parent := Self;
  frmSelection.Visible := False;
  frmSelection.Align := alClient;

  frmSelection.Init;

  frmExplorer := TfrmExplorer.Create(Self);
  frmExplorer.Visible := False;
end;

end.
