object frmProdutosEdicao: TfrmProdutosEdicao
  Left = 0
  Top = 0
  Caption = 'Produtos'
  ClientHeight = 392
  ClientWidth = 680
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object lblNome: TLabel
    Left = 51
    Top = 75
    Width = 31
    Height = 13
    Caption = 'Nome:'
  end
  object lblDescricao: TLabel
    Left = 32
    Top = 99
    Width = 50
    Height = 13
    Caption = 'Descri'#231#227'o:'
  end
  object Label2: TLabel
    Left = 20
    Top = 134
    Width = 62
    Height = 13
    Caption = 'Pre'#231'o Custo:'
  end
  object Label3: TLabel
    Left = 18
    Top = 153
    Width = 64
    Height = 13
    Caption = 'Pre'#231'o Venda:'
  end
  object edtNome: TEdit
    Left = 88
    Top = 72
    Width = 361
    Height = 21
    TabOrder = 0
  end
  object edtDescricao: TEdit
    Left = 88
    Top = 99
    Width = 361
    Height = 21
    TabOrder = 1
  end
  object edtPrecoCusto: TEdit
    Left = 88
    Top = 126
    Width = 105
    Height = 21
    TabOrder = 2
  end
  object edtPrecoVenda: TEdit
    Left = 88
    Top = 153
    Width = 105
    Height = 21
    TabOrder = 3
  end
  object btnGravar: TButton
    Left = 576
    Top = 336
    Width = 75
    Height = 25
    Caption = 'Gravar'
    TabOrder = 4
    OnClick = btnGravarClick
  end
  object btnCancelar: TButton
    Left = 480
    Top = 336
    Width = 75
    Height = 25
    Caption = 'Cancelar'
    TabOrder = 5
  end
end
