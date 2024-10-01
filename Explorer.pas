unit Explorer;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TfrmExplorer = class(TForm)
    imgItem: TImage;
    memBio: TMemo;
    lblName: TLabel;
    lblBio: TLabel;
    shpImageBackground: TShape;
    shpFrameBottom: TShape;
    shpFrameTop: TShape;
    shpFrameLeft: TShape;
    shpFrameRight: TShape;
    imgBackground: TImage;

  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

end.
