unit Selection;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls,
  Explorer, Quiz;

type
  TfrmSelection = class(TFrame)
    rgpPlanet: TRadioGroup;
    lblPlanet: TLabel;
    btnLaunch: TButton;
    rgpMoon: TRadioGroup;
    rgpOther: TRadioGroup;
    rgpDwarf: TRadioGroup;
    btnQuiz: TButton;
    procedure btnLaunchClick(Sender: TObject);
    procedure rgpPlanetClick(Sender: TObject);
    procedure rgpMoonClick(Sender: TObject);
    procedure rgpDwarfClick(Sender: TObject);
    procedure rgpOtherClick(Sender: TObject);
    procedure btnQuizClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    iQNum : Integer;
  end;
var
  frmExplorer: TfrmExplorer;

implementation

{$R *.dfm}

//Goes to Explorer
procedure TfrmSelection.btnLaunchClick(Sender: TObject);
begin
// Creates The Explorer
  frmQuiz.Hide;

  frmExplorer.Free;
  frmExplorer := nil;

  if not Assigned(frmExplorer) then
    frmExplorer := TfrmExplorer.Create(Self);

// Checks if anything was selected
  if (rgpPlanet.ItemIndex and rgpDwarf.ItemIndex) and (rgpMoon.ItemIndex and rgpOther.ItemIndex) = -1 then
   ShowMessage('You have not selected a place to travel to, please select one the options before continuing.')
   else frmExplorer.Show;

// Loads info & Images
  case rgpPlanet.ItemIndex of
      0: begin
           frmExplorer.imgItem.picture.loadfromfile('.\Database/Images/Planets\Mercury.bmp');
           frmExplorer.memBio.Lines.LoadFromFile('.\Database/Data/Planets\Mercury.txt');
           frmExplorer.lblName.Caption := 'Mercury';
         end;
      1: begin
           frmExplorer.imgItem.picture.loadfromfile('.\Database/Images/Planets\Venus.bmp');
           frmExplorer.memBio.Lines.LoadFromFile('.\Database/Data/Planets\Venus.txt');
           frmExplorer.lblName.Caption := 'Venus';
         end;
      2: begin
           frmExplorer.imgItem.picture.loadfromfile('.\Database/Images/Planets\Earth.bmp');
           frmExplorer.memBio.Lines.LoadFromFile('.\Database/Data/Planets\Earth.txt');
           frmExplorer.lblName.Caption := 'Earth';
         end;
      3: begin
           frmExplorer.imgItem.picture.loadfromfile('.\Database/Images/Planets\Mars.bmp');
           frmExplorer.memBio.Lines.LoadFromFile('.\Database/Data/Planets\Mars.txt');
           frmExplorer.lblName.Caption := 'Mars';
         end;
      4: begin
           frmExplorer.imgItem.picture.loadfromfile('.\Database/Images/Planets\Jupiter.bmp');
           frmExplorer.memBio.Lines.LoadFromFile('.\Database/Data/Planets\Jupiter.txt');
           frmExplorer.lblName.Caption := 'Jupiter';
         end;
      5: begin
           frmExplorer.imgItem.picture.loadfromfile('.\Database/Images/Planets\Saturn.bmp');
           frmExplorer.memBio.Lines.LoadFromFile('.\Database/Data/Planets\Saturn.txt');
           frmExplorer.lblName.Caption := 'Saturn';
         end;
      6: begin
           frmExplorer.imgItem.picture.loadfromfile('.\Database/Images/Planets\Uranus.bmp');
           frmExplorer.memBio.Lines.LoadFromFile('.\Database/Data/Planets\Uranus.txt');
           frmExplorer.lblName.Caption := 'Uranus';
         end;
      7: begin
           frmExplorer.imgItem.picture.loadfromfile('.\Database/Images/Planets\Neptune.bmp');
           frmExplorer.memBio.Lines.LoadFromFile('.\Database/Data/Planets\Neptune.txt');
           frmExplorer.lblName.Caption := 'Neptune';
         end;
  end;
  rgpPlanet.ItemIndex := -1;

  case rgpMoon.ItemIndex of
      0: begin
           frmExplorer.imgItem.picture.loadfromfile('.\Database/Images/Moon/Moon.bmp');
           frmExplorer.memBio.Lines.LoadFromFile('.\Database/Data/Moon\Moon.txt');
           frmExplorer.lblName.Caption := 'Moon - Earth';
         end;
      1: begin
           frmExplorer.imgItem.picture.loadfromfile('.\Database/Images/Moon/Europa.bmp');
           frmExplorer.memBio.Lines.LoadFromFile('.\Database/Data/Moon\Europa.txt');
           frmExplorer.lblName.Caption := 'Europa - Jupiter';
         end;
      2: begin
           frmExplorer.imgItem.picture.loadfromfile('.\Database/Images/Moon/Triton.bmp');
           frmExplorer.memBio.Lines.LoadFromFile('.\Database/Data/Moon\Triton.txt');
           frmExplorer.lblName.Caption := 'Triton - Neptune';
         end;
      3: begin
           frmExplorer.imgItem.picture.loadfromfile('.\Database/Images/Moon/Titan.bmp');
           frmExplorer.memBio.Lines.LoadFromFile('.\Database/Data/Moon\Titan.txt');
           frmExplorer.lblName.Caption := 'Titan - Saturn';
         end;
      4: begin
           frmExplorer.imgItem.picture.loadfromfile('.\Database/Images/Moon/Io.bmp');
           frmExplorer.memBio.Lines.LoadFromFile('.\Database/Data/Moon\Io.txt');
           frmExplorer.lblName.Caption := 'Io - Jupiter';
         end;
      5: begin
           frmExplorer.imgItem.picture.loadfromfile('.\Database/Images/Moon/Rhea.bmp');
           frmExplorer.memBio.Lines.LoadFromFile('.\Database/Data/Moon\Rhea.txt');
           frmExplorer.lblName.Caption := 'Rhea - Saturn';
         end;
      6: begin
           frmExplorer.imgItem.picture.loadfromfile('.\Database/Images/Moon/Ganymede.bmp');
           frmExplorer.memBio.Lines.LoadFromFile('.\Database/Data/Moon\Ganymede.txt');
           frmExplorer.lblName.Caption := 'Ganymede - Jupiter';
         end;
      7: begin
           frmExplorer.imgItem.picture.loadfromfile('.\Database/Images/Moon/Phobos.bmp');
           frmExplorer.memBio.Lines.LoadFromFile('.\Database/Data/Moon\Phobos.txt');
           frmExplorer.lblName.Caption := 'Phobos - Mars';
         end;
      8: begin
           frmExplorer.imgItem.picture.loadfromfile('.\Database/Images/Moon/Deimos.bmp');
           frmExplorer.memBio.Lines.LoadFromFile('.\Database/Data/Moon\Deimos.txt');
           frmExplorer.lblName.Caption := 'Deimos - Mars';
         end;
  end;
  rgpMoon.ItemIndex := -1;

  case rgpDwarf.ItemIndex of
      0: begin
           frmExplorer.imgItem.picture.loadfromfile('.\Database/Images/Dwarf/Pluto.bmp');
           frmExplorer.memBio.Lines.LoadFromFile('C:\Users\wianvandevyver\OneDrive\PAT\Database/Data/Dwarf\Pluto.txt');
           frmExplorer.lblName.Caption := 'Pluto';
         end;
      1: begin
           frmExplorer.imgItem.picture.loadfromfile('.\Database/Images/Dwarf/Eris.bmp');
           frmExplorer.memBio.Lines.LoadFromFile('C:\Users\wianvandevyver\OneDrive\PAT\Database/Data/Dwarf\Eris.txt');
           frmExplorer.lblName.Caption := 'Eris';
         end;
      2: begin
           frmExplorer.imgItem.picture.loadfromfile('.\Database/Images/Dwarf/Makemake.bmp');
           frmExplorer.memBio.Lines.LoadFromFile('C:\Users\wianvandevyver\OneDrive\PAT\Database/Data/Dwarf\Makemake.txt');
           frmExplorer.lblName.Caption := 'Makemake';
         end;
      3: begin
           frmExplorer.imgItem.picture.loadfromfile('.\Database/Images/Dwarf/Gonggong.bmp');
           frmExplorer.memBio.Lines.LoadFromFile('.\Database/Data/Dwarf\Gonggong.txt');
           frmExplorer.lblName.Caption := 'Gonggong';
         end;
      4: begin
           frmExplorer.imgItem.picture.loadfromfile('.\Database/Images/Dwarf/Quaoar.bmp');
           frmExplorer.memBio.Lines.LoadFromFile('.\Database/Data/Dwarf\Quaoar.txt');
           frmExplorer.lblName.Caption := 'Quaoar';
         end;
      5: begin
           frmExplorer.imgItem.picture.loadfromfile('.\Database/Images/Dwarf/Ceres.bmp');
           frmExplorer.memBio.Lines.LoadFromFile('.\Database\Data\Dwarf\Ceres.txt');
           frmExplorer.lblName.Caption := 'Ceres';
         end;
  end;
  rgpDwarf.ItemIndex := -1;

  case rgpOther.ItemIndex of
      0: begin
           frmExplorer.imgItem.picture.loadfromfile('.\Database/Images/Other/Sun.bmp');
           frmExplorer.memBio.Lines.LoadFromFile('.\Database/Data/Other\Sun.txt');
           frmExplorer.lblName.Caption := 'The Sun';
         end;
      1: begin
           frmExplorer.imgItem.picture.loadfromfile('.\Database/Images/Other/Kuiper.bmp');
           frmExplorer.memBio.Lines.LoadFromFile('.\Database/Data/Other\Kuiper.txt');
           frmExplorer.lblName.Caption := 'The Kuiper Belt';
         end;
  end;
  rgpOther.ItemIndex := -1;

end;

//Goes to Quiz
procedure TfrmSelection.btnQuizClick(Sender: TObject);
begin
// Creates Quiz and closes The Explorer
  frmExplorer.Hide;

  frmQuiz.Free;
  frmQuiz := nil;

  if not Assigned(frmQuiz) then
    frmQuiz := TfrmQuiz.Create(Self);

  if (rgpPlanet.ItemIndex and rgpDwarf.ItemIndex) and (rgpMoon.ItemIndex and rgpOther.ItemIndex) = -1 then
   ShowMessage('You have not selected a place to be quizzed on, please select one the options before continuing.')
   else frmQuiz.Show;

  iQNum := 1;

  case rgpPlanet.ItemIndex of
      0: begin
           frmQuiz.imgItem.picture.loadfromfile('.\Database/Images/Planets\Mercury.bmp');
           frmQuiz.pnlQuestion1.Caption := 'What is the average surface temperature of Mercury?';
           frmQuiz.pnlQuestion2.Caption := 'Why does Mercury have such a high density?';
           frmQuiz.pnlQ1Option1.Caption := '430C by day and -180C by night.';
           frmQuiz.pnlQ1Option2.Caption := '100C by day and -100C by night.';
           frmQuiz.pnlQ2Option1.Caption := 'A significant iron core.';
           frmQuiz.pnlQ2Option2.Caption := 'Its large size';
         end;
      1: begin
           frmQuiz.imgItem.picture.loadfromfile('.\Database/Images/Planets\Venus.bmp');
           frmQuiz.pnlQuestion1.Caption := 'Why is Venus the hottest planet?';
           frmQuiz.pnlQuestion2.Caption := 'How long is a day on Venus?';
           frmQuiz.pnlQ1Option1.Caption := 'The thick atmosphere traps heat inside.';
           frmQuiz.pnlQ1Option2.Caption := 'It has a high concentration of sulfuric acid clouds.';
           frmQuiz.pnlQ2Option1.Caption := '243 Earth days';
           frmQuiz.pnlQ2Option2.Caption := '12 hours';
         end;
      2: begin
           frmQuiz.imgItem.picture.loadfromfile('.\Database/Images/Planets\Earth.bmp');
           frmQuiz.pnlQuestion1.Caption := 'What is Earths atmosphere primarily composed of?';
           frmQuiz.pnlQuestion2.Caption := 'How long does it take for Earth to complete one full rotation on its axis?';
           frmQuiz.pnlQ1Option1.Caption := 'Nitrogen';
           frmQuiz.pnlQ1Option2.Caption := 'Oxygen';
           frmQuiz.pnlQ2Option1.Caption := '24 hours';
           frmQuiz.pnlQ2Option2.Caption := '365 days';
         end;
      3: begin
           frmQuiz.imgItem.picture.loadfromfile('.\Database/Images/Planets\Mars.bmp');
           frmQuiz.pnlQuestion1.Caption := 'Why is Mars often called the "Red Planet"?';
           frmQuiz.pnlQuestion2.Caption := 'What is the largest volcano on Mars and in the entire solar system?';
           frmQuiz.pnlQ1Option1.Caption := 'The iron oxide (rust) on its surface gives it a reddish appearance.';
           frmQuiz.pnlQ1Option2.Caption := 'It has a red atmosphere due to volcanic activity.';
           frmQuiz.pnlQ2Option1.Caption := 'Olympus Mons';
           frmQuiz.pnlQ2Option2.Caption := 'Mauna Kea';
         end;
      4: begin
           frmQuiz.imgItem.picture.loadfromfile('.\Database/Images/Planets\Jupiter.bmp');
           frmQuiz.pnlQuestion1.Caption := 'What is the most prominent feature on Jupiters surface?';
           frmQuiz.pnlQuestion2.Caption := 'How many moons does Jupiter have?';
           frmQuiz.pnlQ1Option1.Caption := 'The Great Red Spot';
           frmQuiz.pnlQ1Option2.Caption := 'The White Oval';
           frmQuiz.pnlQ2Option1.Caption := '92';
           frmQuiz.pnlQ2Option2.Caption := '53';
         end;
      5: begin
           frmQuiz.imgItem.picture.loadfromfile('.\Database/Images/Planets\Saturn.bmp');
           frmQuiz.pnlQuestion1.Caption := 'What is Saturn most famous for?';
           frmQuiz.pnlQuestion2.Caption := 'What is Saturns largest moon called?';
           frmQuiz.pnlQ1Option1.Caption := 'Its prominent ring system';
           frmQuiz.pnlQ1Option2.Caption := 'Its fast rotation';
           frmQuiz.pnlQ2Option1.Caption := 'Titan';
           frmQuiz.pnlQ2Option2.Caption := 'Ganymede';
         end;
      6: begin
           frmQuiz.imgItem.picture.loadfromfile('.\Database/Images/Planets\Uranus.bmp');
           frmQuiz.pnlQuestion1.Caption := 'What is unusual about Uranus rotation?';
           frmQuiz.pnlQuestion2.Caption := 'What gives Uranus its blue-green color?';
           frmQuiz.pnlQ1Option1.Caption := 'It rotates on its side with a tilted axis.';
           frmQuiz.pnlQ1Option2.Caption := 'It rotates backward (retrograde rotation).';
           frmQuiz.pnlQ2Option1.Caption := 'Methane in its atmosphere.';
           frmQuiz.pnlQ2Option2.Caption := 'Its icy surface.';
         end;
      7: begin
           frmQuiz.imgItem.picture.loadfromfile('.\Database/Images/Planets\Neptune.bmp');
           frmQuiz.pnlQuestion1.Caption := 'What is Neptunes most famous storm';
           frmQuiz.pnlQuestion2.Caption := 'Why is Neptune often referred to as the "Windy Planet"?';
           frmQuiz.pnlQ1Option1.Caption := 'The Dark Spot';
           frmQuiz.pnlQ1Option2.Caption := 'The Cyclone Ring';
           frmQuiz.pnlQ2Option1.Caption := 'It has the fastest winds in the solar system.';
           frmQuiz.pnlQ2Option2.Caption := 'Its storms create loud sounds detectable from space.';
         end;
  end;

    case rgpMoon.ItemIndex of
      0: begin
           frmQuiz.imgItem.picture.loadfromfile('.\Database/Images/Moon\Moon.bmp');
           frmQuiz.pnlQuestion1.Caption := 'What is the primary reason the Moon has a significant impact on Earth?';
           frmQuiz.pnlQuestion2.Caption := 'What is the name of the dark, flat areas on the Moons surface?';
           frmQuiz.pnlQ1Option1.Caption := 'It affects ocean tides due to its gravitational pull.';
           frmQuiz.pnlQ1Option2.Caption := 'It influences weather patterns.';
           frmQuiz.pnlQ2Option1.Caption := 'Maria';
           frmQuiz.pnlQ2Option2.Caption := 'Highlands';
         end;
      1: begin
           frmQuiz.imgItem.picture.loadfromfile('.\Database/Images/Moon\Europa.bmp');
           frmQuiz.pnlQuestion1.Caption := 'What feature of Europa has led scientists to believe it may harbor a subsurface ocean?';
           frmQuiz.pnlQuestion2.Caption := 'Which of the following makes Europaa prime candidate for the search for extraterrestrial life?';
           frmQuiz.pnlQ1Option1.Caption := 'Its smooth, icy surface with cracks and ridges';
           frmQuiz.pnlQ1Option2.Caption := 'Its high volcanic activity';
           frmQuiz.pnlQ2Option1.Caption := 'Its potential subsurface ocean that may contain liquid water';
           frmQuiz.pnlQ2Option2.Caption := 'Its icy surface reflecting sunlight';
         end;
      2: begin
           frmQuiz.imgItem.picture.loadfromfile('.\Database/Images/Moon\Triton.bmp');
           frmQuiz.pnlQuestion1.Caption := 'What unique feature distinguishes Triton from most other moons in the solar system?';
           frmQuiz.pnlQuestion2.Caption := 'What is the primary component of Triton’s atmosphere?';
           frmQuiz.pnlQ1Option1.Caption := 'It has a retrograde orbit, meaning it orbits Neptune in the opposite direction of the planets rotation.';
           frmQuiz.pnlQ1Option2.Caption := 'It is the only moon with a substantial atmosphere.';
           frmQuiz.pnlQ2Option1.Caption := 'Nitrogen.';
           frmQuiz.pnlQ2Option2.Caption := 'Methane';
         end;
      3: begin
           frmQuiz.imgItem.picture.loadfromfile('.\Database/Images/Moon\Titan.bmp');
           frmQuiz.pnlQuestion1.Caption := 'What is Titan most famous for in terms of its atmosphere?';
           frmQuiz.pnlQuestion2.Caption := 'What unique feature does Titan have on its surface?';
           frmQuiz.pnlQ1Option1.Caption := 'It has the thickest atmosphere of any moon in the solar system.';
           frmQuiz.pnlQ1Option2.Caption := 'It has no atmosphere at all.';
           frmQuiz.pnlQ2Option1.Caption := 'Rivers and lakes of liquid methane and ethane.';
           frmQuiz.pnlQ2Option2.Caption := 'Large oceans of liquid water';
         end;
      4: begin
           frmQuiz.imgItem.picture.loadfromfile('.\Database/Images/Moon\Io.bmp');
           frmQuiz.pnlQuestion1.Caption := 'What makes Io the most geologically active body in the solar system?';
           frmQuiz.pnlQuestion2.Caption := 'What is a prominent feature of Io’s surface?';
           frmQuiz.pnlQ1Option1.Caption := 'The intense tidal heating caused by gravitational interactions with Jupiter and other moons';
           frmQuiz.pnlQ1Option2.Caption := 'Its proximity to the Sun';
           frmQuiz.pnlQ2Option1.Caption := 'Volcanic craters and lava flows';
           frmQuiz.pnlQ2Option2.Caption := 'Large bodies of liquid water';
         end;
      5: begin
           frmQuiz.imgItem.picture.loadfromfile('.\Database/Images/Moon\Rhea.bmp');
           frmQuiz.pnlQuestion1.Caption := 'What is a notable feature of Rhea’s surface?';
           frmQuiz.pnlQuestion2.Caption := 'What is Rhea primarily composed of?';
           frmQuiz.pnlQ1Option1.Caption := 'It has a heavily cratered surface with bright wispy markings.';
           frmQuiz.pnlQ1Option2.Caption := 'It is covered in large lakes of liquid methane.';
           frmQuiz.pnlQ2Option1.Caption := 'Ice and rock.';
           frmQuiz.pnlQ2Option2.Caption := 'Silicate minerals';
         end;
      6: begin
           frmQuiz.imgItem.picture.loadfromfile('.\Database/Images/Moon\Ganymede.bmp');
           frmQuiz.pnlQuestion1.Caption := 'What makes Ganymede unique among the moons in the solar system?';
           frmQuiz.pnlQuestion2.Caption := 'What is a prominent feature of Ganymedes surface?';
           frmQuiz.pnlQ1Option1.Caption := 'It is the largest moon, even bigger than the planet Mercury.';
           frmQuiz.pnlQ1Option2.Caption := 'It orbits in the opposite direction of Jupiters rotation.';
           frmQuiz.pnlQ2Option1.Caption := 'Thick layers of liquid water beneath its icy crust.';
           frmQuiz.pnlQ2Option2.Caption := 'Large, smooth plains with few craters';
         end;
      7: begin
           frmQuiz.imgItem.picture.loadfromfile('.\Database/Images/Moon\Phobos.bmp');
           frmQuiz.pnlQuestion1.Caption := 'What is the primary reason Phobos is unique among moons in the solar system?';
           frmQuiz.pnlQuestion2.Caption := 'What prominent feature is found on the surface of Phobos?';
           frmQuiz.pnlQ1Option1.Caption := 'It orbits Mars at a very close distance and is gradually spiraling inward.';
           frmQuiz.pnlQ1Option2.Caption := 'It is the largest moon of Mars.';
           frmQuiz.pnlQ2Option1.Caption := 'A huge crater called Stickney.';
           frmQuiz.pnlQ2Option2.Caption := 'Dense forests';
         end;
      8: begin
           frmQuiz.imgItem.picture.loadfromfile('.\Database/Images/Moon\Deimos.bmp');
           frmQuiz.pnlQuestion1.Caption := 'How does Deimos compare in size to its sibling moon, Phobos?';
           frmQuiz.pnlQuestion2.Caption := 'What is a notable feature of Deimos surface?';
           frmQuiz.pnlQ1Option1.Caption := 'Deimos is significantly smaller than Phobos.';
           frmQuiz.pnlQ1Option2.Caption := 'Deimos is larger than Earth’s Moon.';
           frmQuiz.pnlQ2Option1.Caption := 'Large craters and a smooth, dusty appearance.';
           frmQuiz.pnlQ2Option2.Caption := 'A thick atmosphere with clouds';
         end;
  end;

    case rgpDwarf.ItemIndex of
      0: begin
           frmQuiz.imgItem.picture.loadfromfile('.\Database/Images/Dwarf\Pluto.bmp');
           frmQuiz.pnlQuestion1.Caption := 'What classification did Pluto receive in 2006, leading to its redefinition as a "dwarf planet"?';
           frmQuiz.pnlQuestion2.Caption := 'What is a prominent feature of Plutos surface?';
           frmQuiz.pnlQ1Option1.Caption := 'It does not clear its orbital neighborhood of other debris.';
           frmQuiz.pnlQ1Option2.Caption := 'It has multiple moons.';
           frmQuiz.pnlQ2Option1.Caption := 'Vast plains of nitrogen ice, known as Sputnik Planitia';
           frmQuiz.pnlQ2Option2.Caption := 'Active volcanic mountains';
         end;
      1: begin
           frmQuiz.imgItem.picture.loadfromfile('.\Database/Images/Dwarf\Eris.bmp');
           frmQuiz.pnlQuestion1.Caption := 'What distinguishes Eris from other dwarf planets?';
           frmQuiz.pnlQuestion2.Caption := 'What was discovered on Eris that contributed to its classification as a dwarf planet?';
           frmQuiz.pnlQ1Option1.Caption := 'It is the most distant known dwarf planet in the solar system.';
           frmQuiz.pnlQ1Option2.Caption := 'It is larger than Pluto in terms of volume.';
           frmQuiz.pnlQ2Option1.Caption := 'Its inability to clear its orbit of other debris.';
           frmQuiz.pnlQ2Option2.Caption := 'An extensive system of rings';
         end;
      2: begin
           frmQuiz.imgItem.picture.loadfromfile('.\Database/Images/Dwarf\Makemake.bmp');
           frmQuiz.pnlQuestion1.Caption := 'What distinguishes Makemake in terms of its discovery and naming?';
           frmQuiz.pnlQuestion2.Caption := 'What notable feature does Makemake lack compared to other dwarf planets like Pluto?';
           frmQuiz.pnlQ1Option1.Caption := 'It is named after a creator god of the Rapa Nui people of Easter Island.';
           frmQuiz.pnlQ1Option2.Caption := 'It was discovered using data from the Hubble Space Telescope only.';
           frmQuiz.pnlQ2Option1.Caption := 'An atmosphere';
           frmQuiz.pnlQ2Option2.Caption := 'A system of moons';
         end;
      3: begin
           frmQuiz.imgItem.picture.loadfromfile('.\Database/Images/Dwarf\Gonggong.bmp');
           frmQuiz.pnlQuestion1.Caption := 'What is Gonggong primarily known for regarding its orbit?';
           frmQuiz.pnlQuestion2.Caption := 'Which notable feature is associated with Gonggong?';
           frmQuiz.pnlQ1Option1.Caption := 'It has an extremely eccentric orbit.';
           frmQuiz.pnlQ1Option2.Caption := 'It has a stable, circular orbit.';
           frmQuiz.pnlQ2Option1.Caption := 'A large moon named Xiangliu';
           frmQuiz.pnlQ2Option2.Caption := 'A thick atmosphere primarily made of nitrogen';
         end;
      4: begin
           frmQuiz.imgItem.picture.loadfromfile('.\Database/Images/Dwarf\Quaoar.bmp');
           frmQuiz.pnlQuestion1.Caption := 'What distinguishes Quaoar from many other objects in the Kuiper Belt?';
           frmQuiz.pnlQuestion2.Caption := 'What is a notable feature of Quaoars composition?';
           frmQuiz.pnlQ1Option1.Caption := 'It has a spherical shape, confirming its status as a dwarf planet.';
           frmQuiz.pnlQ1Option2.Caption := 'It is the largest known object in the Kuiper Belt.';
           frmQuiz.pnlQ2Option1.Caption := 'It is believed to be made primarily of rock and ice.';
           frmQuiz.pnlQ2Option2.Caption := 'It has a high concentration of carbon dioxide on its surface.';
         end;
      5: begin
           frmQuiz.imgItem.picture.loadfromfile('.\Database/Images/Dwarf\Ceres.bmp');
           frmQuiz.pnlQuestion1.Caption := 'What classification does Ceres hold in our solar system?';
           frmQuiz.pnlQuestion2.Caption := 'What notable feature has been discovered on Ceress surface by NASAs Dawn spacecraft?  ';
           frmQuiz.pnlQ1Option1.Caption := 'It is classified as a dwarf planet.';
           frmQuiz.pnlQ1Option2.Caption := 'It is classified as a comet.';
           frmQuiz.pnlQ2Option1.Caption := 'Bright spots thought to be deposits of sodium carbonate';
           frmQuiz.pnlQ2Option2.Caption := 'Extensive mountain ranges made of ice';
         end;
  end;

    case rgpOther.ItemIndex of
      0: begin
           frmQuiz.imgItem.picture.loadfromfile('.\Database/Images/Other\Sun.bmp');
           frmQuiz.pnlQuestion1.Caption := 'What is the primary source of the Suns energy?';
           frmQuiz.pnlQuestion2.Caption := 'What is the outermost layer of the Suns atmosphere called?';
           frmQuiz.pnlQ1Option1.Caption := 'Nuclear fusion of hydrogen into helium';
           frmQuiz.pnlQ1Option2.Caption := 'Chemical reactions in its core';
           frmQuiz.pnlQ2Option1.Caption := 'Corona';
           frmQuiz.pnlQ2Option2.Caption := 'Chromosphere';
         end;
      1: begin
           frmQuiz.imgItem.picture.loadfromfile('.\Database/Images/Other\Kuiper.bmp');
           frmQuiz.pnlQuestion1.Caption := 'What is the Kuiper Belt primarily composed of?';
           frmQuiz.pnlQuestion2.Caption := 'Which of the following objects is considered a member of the Kuiper Belt?';
           frmQuiz.pnlQ1Option1.Caption := 'Icy bodies and dwarf planets.';
           frmQuiz.pnlQ1Option2.Caption := 'Stars and nebulae';
           frmQuiz.pnlQ2Option1.Caption := 'Eris';
           frmQuiz.pnlQ2Option2.Caption := 'Ceres';
         end;
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
