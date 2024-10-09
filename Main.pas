unit Main;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls,
  Login, Selection, Explorer;

type
  TMainForm = class(TForm)
    tUpdater: TTimer;
    procedure FormCreate(Sender: TObject);
    procedure tUpdaterTimer(Sender: TObject);

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

procedure TMainForm.tUpdaterTimer(Sender: TObject);
begin
 if frmLogin.bFound then
  begin
    frmLogin.Hide;

    frmSelection.Visible := True;
    tUpdater.Enabled := False;
  end;

  frmSelection.rgpPlanet.ItemIndex := -1;
  frmSelection.rgpDwarf.ItemIndex := -1;
  frmSelection.rgpMoon.ItemIndex := -1;
  frmSelection.rgpOther.ItemIndex := -1;

end;

procedure TMainForm.FormCreate(Sender: TObject);
begin
//Create like EVERYTHING
  frmLogin := TfrmLogin.Create(Self);
  frmLogin.Parent := Self;
  frmLogin.Visible := True;
  frmLogin.Align := alClient;

  frmSelection := TfrmSelection.Create(Self);
  frmSelection.Parent := Self;
  frmSelection.Visible := False;
  frmSelection.Align := alClient;

  frmExplorer := TfrmExplorer.Create(Self);
  frmExplorer.Visible := False;

  frmSelection.Init;
end;

end.
