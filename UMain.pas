unit UMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, TntLXCryptoUtils;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    edEntrada: TEdit;
    edRespostaEntrada: TEdit;
    Label2: TLabel;
    edSaida: TEdit;
    edRespostaSaida: TEdit;
    Label3: TLabel;
    Button2: TButton;
    Button1: TButton;
    edSenha: TEdit;
    Label4: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }



  end;

//  Encrypt = function aencrypt(a: Pchar; b: Pchar): TByteArray; stdcall; EXTERNAL 'cryptorAES.dll' name 'encrypt';


var
Form1: TForm1;

implementation


{$R *.dfm}

function Converter(P: TByteArray): string;
begin
  SetLength(Result, Length(P));
  System.Move(P[0], Result[1], Length(P));
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
  edRespostaEntrada.Text := AES128_Encrypt(edEntrada.Text, edSenha.Text);
  edSaida.Text := edRespostaEntrada.Text;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  edRespostaSaida.Text := AES128_Decrypt(edSaida.Text,  edSenha.Text);
end;

end.
