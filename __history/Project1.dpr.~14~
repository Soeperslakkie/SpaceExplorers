program Project1;

uses
  Vcl.Forms,
  Main in 'Main.pas' {MainForm},
  Explorer in 'Explorer.pas' {frmExplorer},
  Selection in 'Selection.pas' {frmSelection: TFrame},
  Login in 'Login.pas' {frmLogin: TFrame},
  Quiz in 'Quiz.pas' {frmQuiz};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TMainForm, MainForm);
  Application.CreateForm(TfrmExplorer, frmExplorer);
  Application.CreateForm(TfrmQuiz, frmQuiz);
  Application.Run;
end.
