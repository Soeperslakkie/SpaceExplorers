unit Login;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TEnterExplorer = procedure() of object;

  TfrmLogin = class(TFrame)
    lblUser: TLabel;
    lblPass: TLabel;
    lblTitle: TLabel;
    btnLog: TButton;
    btnAccount: TButton;
    edtUser: TEdit;
    edtPass: TEdit;
    procedure btnLogClick(Sender: TObject);
    procedure btnAccountClick(Sender: TObject);
  private

  public

  public
    { Public declarations }
    bPass, bUser : Boolean;
    sPass, sUser : String;
  end;

implementation

{$R *.dfm}

procedure TfrmLogin.btnLogClick(Sender: TObject);
begin

  if edtUser.Text = sUser then
   bUser := True;

  if edtPass.Text = sPass then
   bPass := True;

  if edtUser.Text = '' then
  begin
   bUser := False;
   ShowMessage('Please enter a Username');
  end;

  if edtPass.Text = '' then
  begin
   bPass := False;
   ShowMessage('Please enter a Password');
  end;

  if not bPass and bUser then
   ShowMessage('Username or Password incorrect, if you have not made an account, first make one and try again');

end;

procedure TfrmLogin.btnAccountClick(Sender: TObject);
begin
  sUser := InputBox('Account Creation','Username?:', '');
  sPass := InputBox('Account Creation','Password?:', '');
end;

end.
