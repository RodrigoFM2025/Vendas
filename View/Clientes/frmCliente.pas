unit frmCliente;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, FireDAC.Phys.PGDef,
  FireDAC.Stan.Intf, FireDAC.Phys, FireDAC.Phys.PG, Datasnap.DBClient,
  Vcl.Grids, Vcl.DBGrids;

type
  TfrmCadClientes = class(TForm)
    DBGrid1: TDBGrid;
    dtsCliente: TDataSource;
    cdsCliente: TClientDataSet;
    dvrConexao: TFDPhysPgDriverLink;
    cdsClienteid: TStringField;
    cdsClientenome: TStringField;
    cdsClientetelefone: TStringField;
    cdsClienteendereco: TStringField;
    cdsClienteaniversario: TDateField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadClientes: TfrmCadClientes;

implementation

{$R *.dfm}

end.
