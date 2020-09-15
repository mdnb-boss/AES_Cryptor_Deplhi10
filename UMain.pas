unit UMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, TntLXCryptoUtils, IdHTTP ;

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
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    edEntradaRemoto: TEdit;
    edEntradaRemotoResultado: TEdit;
    edSaidaRemoto: TEdit;
    edSaidaRemotoResultado: TEdit;
    Button3: TButton;
    Button4: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);

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

function GetURLAsString(const aURL: string): string;
var
  lHTTP: TIdHTTP;
begin
  lHTTP := TIdHTTP.Create;
  try
    Result := lHTTP.Get(aURL);
  finally
    lHTTP.Free;
  end;
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

procedure TForm1.Button3Click(Sender: TObject);
begin
  edSaidaRemotoResultado.Text := GetURLAsString('http://crypto.localhost/descriptografia.php?dados=' + edSaidaRemoto.Text);
end;

procedure TForm1.Button4Click(Sender: TObject);
var
str: string;
begin
  /// http://crypto.localhost/cryptografia.php
  /// http://crypto.localhost/descriptografia.php

  str := GetURLAsString('http://crypto.localhost/cryptografia.php?dados=' + edEntradaRemoto.Text);
  edEntradaRemotoResultado.Text := str;
  edSaidaRemoto.Text := str;
end;

end.
