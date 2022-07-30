unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TfrmCalc = class(TForm)
    edtValor1: TEdit;
    edtValor2: TEdit;
    edtRes: TEdit;
    btnSomar: TButton;
    btnSubtrair: TButton;
    btnMultiplicar: TButton;
    btnDividir: TButton;
    txtValor: TStaticText;
    txtValor2: TStaticText;
    txtIgual: TStaticText;
    btnLimpar: TButton;
    btnFechar: TButton;
    procedure btnSomarClick(Sender: TObject);
    procedure btnSubtrairClick(Sender: TObject);
    procedure btnMultiplicarClick(Sender: TObject);
    procedure btnDividirClick(Sender: TObject);
    procedure btnLimparClick(Sender: TObject);
    procedure btnFecharClick(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCalc: TfrmCalc;

implementation

{$R *.dfm}




procedure TfrmCalc.btnDividirClick(Sender: TObject);
var valor1, valor2 ,res: real;
begin
    valor1 := StrToFloat(edtValor1.Text);    //convertendo para texto
    valor2 := StrToFloat (edtValor2.Text);
    res := valor1 / valor2;
    edtRes.Text := FloatToStr(res);
end;

procedure TfrmCalc.btnMultiplicarClick(Sender: TObject);
var valor1, valor2 ,res: real;
begin
    valor1 := StrToFloat(edtValor1.Text);    //convertendo para texto
    valor2 := StrToFloat (edtValor2.Text);
    res := valor1 * valor2;
    edtRes.Text := FloatToStr(res);
end;

procedure TfrmCalc.btnSomarClick(Sender: TObject);
var valor1, valor2 ,res: real;
begin
    valor1 := StrToFloat(edtValor1.Text);    //convertendo para texto
    valor2 := StrToFloat (edtValor2.Text);
    res := valor1 + valor2;
    edtRes.Text := FloatToStr(res);
end;
procedure TfrmCalc.btnSubtrairClick(Sender: TObject);
var valor1, valor2 ,res: real;
begin
    valor1 := StrToFloat(edtValor1.Text);    //convertendo para texto
    valor2 := StrToFloat (edtValor2.Text);
    res := valor1 - valor2;
    edtRes.Text := FloatToStr(res);
end;

procedure TfrmCalc.btnFecharClick(Sender: TObject);
begin
      close;
end;

procedure TfrmCalc.btnLimparClick(Sender: TObject);
begin
      edtValor1.Clear;
      edtValor2.clear;
      edtRes.clear;
end;

end.
