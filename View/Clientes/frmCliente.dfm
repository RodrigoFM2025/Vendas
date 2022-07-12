object frmCadClientes: TfrmCadClientes
  Left = 0
  Top = 0
  Caption = 'Cadastro de Clientes'
  ClientHeight = 368
  ClientWidth = 675
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid1: TDBGrid
    Left = 8
    Top = 48
    Width = 625
    Height = 153
    DataSource = dtsCliente
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object dtsCliente: TDataSource
    DataSet = cdsCliente
    Left = 32
    Top = 280
  end
  object cdsCliente: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 96
    Top = 280
    object cdsClienteid: TStringField
      FieldName = 'id'
    end
    object cdsClientenome: TStringField
      FieldName = 'nome'
      Size = 50
    end
    object cdsClientetelefone: TStringField
      FieldName = 'telefone'
      Size = 11
    end
    object cdsClienteendereco: TStringField
      FieldName = 'endereco'
      Size = 80
    end
    object cdsClienteaniversario: TDateField
      FieldName = 'aniversario'
    end
  end
  object dvrConexao: TFDPhysPgDriverLink
    VendorHome = 'C:\Conect\psqlodbc'
    Left = 32
    Top = 8
  end
end
