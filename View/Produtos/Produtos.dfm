object frmCadProdutos: TfrmCadProdutos
  Left = 0
  Top = 0
  Caption = 'Cadastro de Produtos'
  ClientHeight = 508
  ClientWidth = 949
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poOwnerFormCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object dbgProdutos: TDBGrid
    Left = 28
    Top = 32
    Width = 897
    Height = 385
    DataSource = dtsProdutos
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object btnSair: TButton
    Left = 828
    Top = 463
    Width = 97
    Height = 37
    Caption = '&Sair'
    TabOrder = 1
    OnClick = btnSairClick
  end
  object btnIncluir: TButton
    Left = 712
    Top = 463
    Width = 99
    Height = 37
    Caption = '&Incluir'
    TabOrder = 2
    OnClick = btnIncluirClick
  end
  object dtsProdutos: TDataSource
    DataSet = cdsProdutos
    Left = 32
    Top = 448
  end
  object cdsProdutos: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 128
    Top = 448
    object cdsProdutosid: TIntegerField
      FieldName = 'id'
    end
    object cdsProdutosnome: TStringField
      FieldName = 'nome'
      Size = 50
    end
    object cdsProdutosdescricao: TStringField
      FieldName = 'descricao'
    end
    object cdsProdutosprecocusto: TFloatField
      FieldName = 'precocusto'
    end
    object cdsProdutosprecovenda: TFloatField
      FieldName = 'precovenda'
    end
  end
  object drvConexao: TFDPhysPgDriverLink
    VendorHome = 'C:\Conect\psqlodbc'
    Left = 224
    Top = 448
  end
end
