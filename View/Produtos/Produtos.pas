unit Produtos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.ToolWin, Vcl.ActnMan, Vcl.ActnCtrls, Vcl.ActnMenus, Vcl.Menus,
  Vcl.StdCtrls, Datasnap.DBClient, FireDAC.VCLUI.Wait, FireDAC.Stan.Def, FireDAC.Comp.Client,
  FireDAC.Phys.PGDef, FireDAC.Stan.Intf, FireDAC.Phys, FireDAC.Phys.PG,
  FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, ProdutosEdcao;

type
  TfrmCadProdutos = class(TForm)
    dbgProdutos: TDBGrid;
    btnSair: TButton;
    dtsProdutos: TDataSource;
    cdsProdutos: TClientDataSet;
    drvConexao: TFDPhysPgDriverLink;
    cdsProdutosid: TIntegerField;
    cdsProdutosnome: TStringField;
    cdsProdutosdescricao: TStringField;
    btnIncluir: TButton;
    cdsProdutosprecocusto: TFloatField;
    cdsProdutosprecovenda: TFloatField;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
    procedure btnIncluirClick(Sender: TObject);


  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadProdutos: TfrmCadProdutos;

implementation

{$R *.dfm}

procedure TfrmCadProdutos.btnIncluirClick(Sender: TObject);
begin
  TfrmProdutosEdicao.Novo();
  {
    gravar no banco de dados
  }
end;

procedure TfrmCadProdutos.btnSairClick(Sender: TObject);
begin
{if Application.MessageBox('Deseja fechar aplica��o?','Aviso',MB_YESNO+MB_ICONQUESTION) = mrYes then
 } begin
    close;
  end;
end;

procedure TfrmCadProdutos.FormCreate(Sender: TObject);
var
  lQuery: TFDCustomQuery;
begin
  cdsProdutos.CreateDataSet;
  cdsProdutos.Open;
  lquery := TFDCustomQuery.Create(self);
  lquery.ConnectionName := 'conectVendas';
  lquery.SQL.Add('SELECT * FROM "Dados"."cadproduto"');
  lquery.open;

  cdsProdutos.EmptyDataSet;
  // eof - end of file

  while (not lquery.eof) do

  begin
    cdsProdutos.Append;
    cdsProdutos.fields.fieldByName('id').AsString :=
      lquery.fields.fieldByname('idcadproduto').AsString;
    cdsProdutos.fields.fieldByName('nome').AsString :=
      lquery.fields.fieldByname('nomeproduto').AsString;
    cdsProdutos.fields.fieldByName('descricao').AsString :=
      lquery.fields.fieldByname('descricaoproduto').AsString;
    cdsProdutos.Post;
    lquery.next;
  end;

  cdsProdutos.first;
  FreeAndNil(lquery);
end;

Procedure TfrmCadProdutos.FormDestroy(Sender:TObject);
begin
//  FreeAndNil(cdsProdutos);
end;

end.
