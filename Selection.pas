unit Selection;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls,
  Explorer, IOUtils;

type
  TThumbnailArray = Array of TPicture;
  TBioArray = Array of String;
  TCaptionArray = Array of String;
  TfrmSelection = class(TFrame)
    rgpPlanet: TRadioGroup;
    lblPlanet: TLabel;
    btnLaunch: TButton;
    rgpMoon: TRadioGroup;
    rgpOther: TRadioGroup;
    rgpDwarf: TRadioGroup;
    procedure btnLaunchClick(Sender: TObject);
    procedure rgpPlanetClick(Sender: TObject);
    procedure rgpMoonClick(Sender: TObject);
    procedure rgpDwarfClick(Sender: TObject);
    procedure rgpOtherClick(Sender: TObject);
  private
    { Private declarations }
    PlanetThumbnails, MoonThumbnails, DwarfThumbnails, OtherThumbnails: TThumbnailArray;
    PlanetBios, MoonBios, DwarfBios, OtherBios: TBioArray;
    PlanetCaptions, MoonCaptions, DwarfCaptions, OtherCaptions: TCaptionArray;
    procedure LoadThumbBio(dir: string; var Thumbnails: TThumbnailArray; var Bios: TBioArray; var Captions: TCaptionArray);
  public
    { Public declarations }
    procedure Init();
  end;
var
  frmExplorer: TfrmExplorer;

implementation

{$R *.dfm}

procedure TfrmSelection.Init;
begin
//Directory shenanigans
  var sPlanetdir := './Database/Planets/';
  var sMoondir := './Database/Moon/';
  var sDwarfdir := './Database/Dwarf/';
  var sOtherdir := './Database/Other/';

  LoadThumbBio(sPlanetdir, PlanetThumbnails, PlanetBios, PlanetCaptions);
  LoadThumbBio(sMoondir, MoonThumbnails, MoonBios, MoonCaptions);
  LoadThumbBio(sDwarfdir, DwarfThumbnails, DwarfBios, DwarfCaptions);
  LoadThumbBio(sOtherdir, OtherThumbnails, OtherBios, OtherCaptions);

end;

procedure TfrmSelection.LoadThumbBio(dir: string; var Thumbnails: TThumbnailArray; var Bios: TBioArray; var Captions: TCaptionArray);
begin
  for var Path in TDirectory.getfiles(dir) do
  begin
    var ext := TPath.GetExtension(Path);
    if ext = '.bmp' then
    begin
      var Thumbnail := TPicture.Create;
      Thumbnail.LoadFromFile(Path);
      Thumbnails := Thumbnails + [Thumbnail];
    end else
    begin
      Bios := Bios + [TFile.ReadAllText(Path)];
      Captions := Captions + [TPath.GetFileNameWithoutExtension(Path)];
    end;
  end;
end;

//Goes to Explorer
procedure TfrmSelection.btnLaunchClick(Sender: TObject);
begin
//Creates The Explorer
  frmExplorer.Free;
  frmExplorer := nil;

  if not Assigned(frmExplorer) then
    frmExplorer := TfrmExplorer.Create(Self);

//Checks if anything was selected
  if (rgpPlanet.ItemIndex and rgpDwarf.ItemIndex) and (rgpMoon.ItemIndex and rgpOther.ItemIndex) = -1 then
   ShowMessage('You have not selected a place to travel to, please select one the options before continuing.')
   else frmExplorer.Show;

//Loads info & Images
  if rgpPlanet.ItemIndex > -1 then
  begin
    frmExplorer.imgItem.Picture := PlanetThumbnails[rgpPlanet.ItemIndex];
    frmExplorer.memBio.Text := PlanetBios[rgpPlanet.ItemIndex];
    frmExplorer.lblName.Caption := PlanetCaptions[rgpPlanet.ItemIndex];
  end else
  if rgpMoon.ItemIndex > -1 then
  begin
    frmExplorer.imgItem.Picture := MoonThumbnails[rgpMoon.ItemIndex];
    frmExplorer.memBio.Text := MoonBios[rgpMoon.ItemIndex];
    frmExplorer.lblName.Caption := MoonCaptions[rgpMoon.ItemIndex];
  end else
  if rgpDwarf.ItemIndex > -1 then
  begin
    frmExplorer.imgItem.Picture := DwarfThumbnails[rgpDwarf.ItemIndex];
    frmExplorer.memBio.Text := DwarfBios[rgpDwarf.ItemIndex];
    frmExplorer.lblName.Caption := DwarfCaptions[rgpDwarf.ItemIndex];
  end else
  if rgpOther.ItemIndex > -1 then
  begin
    frmExplorer.imgItem.Picture := OtherThumbnails[rgpOther.ItemIndex];
    frmExplorer.memBio.Text := OtherBios[rgpOther.ItemIndex];
    frmExplorer.lblName.Caption := OtherCaptions[rgpOther.ItemIndex];
  end;
end;

//Deselects other options to prevent multiple options from being selected simultaniously
procedure TfrmSelection.rgpDwarfClick(Sender: TObject);
begin
  rgpMoon.ItemIndex := -1;
  rgpOther.ItemIndex := -1;
  rgpPlanet.ItemIndex := -1;
end;

procedure TfrmSelection.rgpMoonClick(Sender: TObject);
begin
  rgpPlanet.ItemIndex := -1;
  rgpDwarf.ItemIndex := -1;
  rgpOther.ItemIndex := -1;
end;

procedure TfrmSelection.rgpOtherClick(Sender: TObject);
begin
  rgpPlanet.ItemIndex := -1;
  rgpDwarf.ItemIndex := -1;
  rgpMoon.ItemIndex := -1;
end;

procedure TfrmSelection.rgpPlanetClick(Sender: TObject);
begin
  rgpMoon.ItemIndex := -1;
  rgpOther.ItemIndex := -1;
  rgpDwarf.ItemIndex := -1;
end;

end.
