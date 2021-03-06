unit uPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.Buttons, Produtos;

type
  TfrmPrincipal = class(TForm)
    pnlPrincipal: TPanel;
    pnlMenu: TPanel;
    btnProdutos: TSpeedButton;
    btnSair: TSpeedButton;
    btnCliente: TSpeedButton;
    btnVenda: TSpeedButton;
    btnFinanceiro: TSpeedButton;
    btnMenu: TSpeedButton;
    SpeedButton1: TSpeedButton;
    procedure btnProdutosClick(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
    procedure btnMenuClick(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;
  bExpandido: Boolean;

implementation

{$R *.dfm}

procedure TfrmPrincipal.btnMenuClick(Sender: TObject);

begin
  if bExpandido then
    pnlMenu.width := 58
  else
    pnlMenu.width := 180;
    bExpandido := not bExpandido;
begin
  if bExpandido then
    pnlMenu.Height:= 365
    else
    pnlMenu.Height:=52

end;
end;


procedure TfrmPrincipal.btnProdutosClick(Sender: TObject);
var
  lfrmProdutos: TfrmCadProdutos;
begin
  lfrmProdutos := TfrmCadProdutos.Create(nil);
  lfrmProdutos.ShowModal;
  FreeAndNil(lfrmProdutos);
end;
procedure TfrmPrincipal.btnSairClick(Sender: TObject);

begin
  if Application.MessageBox('Deseja fechar o peograma?','Aviso',MB_YESNO+MB_ICONQUESTION) = mrYes then
    begin
      close;
    end;
end;
end.
