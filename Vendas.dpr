program Vendas;

uses
  Vcl.Forms,
  Produtos in 'View\Produtos\Produtos.pas' {frmCadProdutos},
  uPrincipal in 'View\uPrincipal.pas' {frmPrincipal},
  frmCliente in 'View\Clientes\frmCliente.pas' {frmCadClientes},
  ProdutosEdcao in 'View\Produtos\ProdutosEdcao.pas' {frmProdutosEdicao};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmCadProdutos, frmCadProdutos);
  Application.Run;
end.
