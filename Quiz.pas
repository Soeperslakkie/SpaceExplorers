unit Quiz;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls;

type
  TfrmQuiz = class(TForm)
    pnlQuestion2: TPanel;
    imgBackground: TImage;
    pnlQ1Option2: TPanel;
    pnlQ1Option1: TPanel;
    pnlQuestion1: TPanel;
    pnlQ2Option1: TPanel;
    pnlQ2Option2: TPanel;
    shpFrameBottom: TShape;
    shpFrameLeft: TShape;
    shpFrameRight: TShape;
    shpFrameTop: TShape;
    shpImageBackground: TShape;
    imgItem: TImage;
    procedure pnlQ1Option1Click(Sender: TObject);
    procedure pnlQ1Option2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure pnlQ2Option1Click(Sender: TObject);
    procedure pnlQ2Option2Click(Sender: TObject);
  private
    { Private declarations }
    iScore: Integer;
  public
    { Public declarations }
  end;

var
  frmQuiz: TfrmQuiz;

implementation

{$R *.dfm}

procedure TfrmQuiz.FormCreate(Sender: TObject);
begin
// Initialising
  pnlQuestion1.Visible := True;
  pnlQuestion2.Visible := False;
  pnlQ1Option1.Visible := True;
  pnlQ1Option2.Visible := True;
  pnlQ2Option1.Visible := False;
  pnlQ2Option2.Visible := False;
  iScore := 0;
end;

procedure TfrmQuiz.pnlQ1Option1Click(Sender: TObject);
begin
  ShowMessage('That is Correct!');
  iScore := iScore + 1;

  pnlQuestion1.Visible := False;
  pnlQuestion2.Visible := True;
  pnlQ1Option1.Visible := False;
  pnlQ1Option2.Visible := False;
  pnlQ2Option1.Visible := True;
  pnlQ2Option2.Visible := True;
end;

procedure TfrmQuiz.pnlQ1Option2Click(Sender: TObject);
begin
  ShowMessage('That is Wrong!');

  pnlQuestion1.Visible := False;
  pnlQuestion2.Visible := True;
  pnlQ1Option1.Visible := False;
  pnlQ1Option2.Visible := False;
  pnlQ2Option1.Visible := True;
  pnlQ2Option2.Visible := True;
end;

procedure TfrmQuiz.pnlQ2Option1Click(Sender: TObject);
begin
  ShowMessage('That is Correct!');
  iScore := iScore + 1;

  ShowMessage('Your current score is '+ IntToStr(iScore) +'/2, Thanks for Playing!');
  frmQuiz.Hide;
end;

procedure TfrmQuiz.pnlQ2Option2Click(Sender: TObject);
begin
  ShowMessage('That is Wrong!');

  ShowMessage('Your current score is '+ IntToStr(iScore) +'/2, Thanks for Playing!');
  frmQuiz.Hide;
end;

end.
