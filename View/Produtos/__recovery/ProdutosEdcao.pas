unit ProdutosEdcao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Data.DB, Datasnap.DBClient;

type
  TfrmProdutosEdicao = class(TForm)
    edtNome: TEdit;
    lblNome: TLabel;
    edtDescricao: TEdit;
    lblDescricao: TLabel;
    edtPrecoCusto: TEdit;
    Label2: TLabel;
    edtPrecoVenda: TEdit;
    Label3: TLabel;
    btnGravar: TButton;
    btnCancelar: TButton;
    procedure btnGravarClick(Sender: TObject);
  private
    { Private declarations }
    FProdutos: TClientDataSet;
  public
    { Public declarations }
    class function Novo: TClientDataset;
  end;

var
  frmProdutosEdicao: TfrmProdutosEdicao;

implementation

{$R *.dfm}

{ TfrmProdutosEdicao }

procedure TfrmProdutosEdicao.btnGravarClick(Sender: TObject);
begin
  FProdutos.Fields.FieldByName('nome').AsString :=
    edtNome.Text;

end;

class function TfrmProdutosEdicao.Novo: TClientDataSet;
var
  lfrmProdutosEdicao: TfrmProdutosEdicao;
begin
  Result := TClientDataSet.Create(nil);
  Result.FieldDefs.Clear;
  Result.FieldDefs.Add('nome', ftString, 50, true);
  Result.FieldDefs.Add('descricao', ftString, 50, false);
  Result.FieldDefs.Add('precocusto', ftFloat, 0, true);
  Result.FieldDefs.Add('precovenda', ftFloat, 0, true);
  Result.CreateDataSet();

  lfrmProdutosEdicao := TfrmProdutosEdicao.Create(nil);
  lfrmProdutosEdicao.ShowModal();
end;

end.
