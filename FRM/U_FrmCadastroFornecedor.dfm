inherited FrmCadastroFornecedor: TFrmCadastroFornecedor
  Caption = 'Cadastro de Fornecedor'
  ClientHeight = 473
  ClientWidth = 778
  OnDestroy = FormDestroy
  ExplicitWidth = 784
  ExplicitHeight = 501
  PixelsPerInch = 96
  TextHeight = 13
  object lbl3: TLabel [0]
    Left = 24
    Top = 150
    Width = 27
    Height = 13
    Caption = 'Nome'
  end
  inherited pgctrlPrincipal: TPageControl
    Width = 778
    Height = 386
    ExplicitWidth = 778
    ExplicitHeight = 386
    inherited tbsConsulta: TTabSheet
      ExplicitLeft = 4
      ExplicitTop = 24
      ExplicitWidth = 770
      ExplicitHeight = 358
      inherited lblPesquisa: TLabel
        Left = 7
        ExplicitLeft = 7
      end
      inherited pnlConsulta: TPanel
        Top = 81
        Width = 770
        TabOrder = 1
        ExplicitTop = 81
        ExplicitWidth = 770
        inherited dbgrdConsulta: TDBGrid
          Width = 682
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
          OnDblClick = dbgrdConsultaDblClick
          Columns = <
            item
              Expanded = False
              FieldName = 'codigo'
              Visible = False
            end
            item
              Expanded = False
              FieldName = 'razao_social'
              Width = 259
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'cpf_cnpj_formatado'
              Width = 119
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'cpf_cnpj'
              Visible = False
            end
            item
              Expanded = False
              FieldName = 'inscricao_estadual'
              Visible = False
            end
            item
              Expanded = False
              FieldName = 'rua'
              Visible = False
            end
            item
              Expanded = False
              FieldName = 'bairro'
              Visible = False
            end
            item
              Expanded = False
              FieldName = 'cidade'
              Visible = False
            end
            item
              Expanded = False
              FieldName = 'estado'
              Visible = False
            end
            item
              Expanded = False
              FieldName = 'cep'
              Visible = False
            end
            item
              Expanded = False
              FieldName = 'fone'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'email'
              Width = 193
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'numero'
              Visible = False
            end>
        end
        inherited pnlBotoesAcoes: TPanel
          Left = 683
          ExplicitLeft = 683
          inherited btnAlterar: TBitBtn
            OnClick = btnAlterarClick
          end
          inherited btnExcluir: TBitBtn
            OnClick = btnExcluirClick
          end
        end
      end
      inherited edtPesquisa: TEdit
        Left = 95
        Top = 13
        Width = 613
        CharCase = ecUpperCase
        TabOrder = 0
        OnChange = edtPesquisaChange
        ExplicitLeft = 95
        ExplicitTop = 13
        ExplicitWidth = 613
      end
    end
    inherited tbsCadastro: TTabSheet
      ExplicitLeft = 4
      ExplicitTop = 24
      ExplicitWidth = 770
      ExplicitHeight = 358
      inherited pnlBotoesLateral: TPanel
        Left = 684
        Height = 358
        ExplicitLeft = 684
        ExplicitHeight = 358
        inherited btnSalvar: TBitBtn
          OnClick = btnSalvarClick
        end
        inherited btnCancelar: TBitBtn
          Top = 44
          OnClick = btnCancelarClick
          ExplicitTop = 44
        end
      end
      inherited pnlCorpo: TPanel
        Width = 684
        Height = 358
        ExplicitWidth = 684
        ExplicitHeight = 358
        object Label1: TLabel
          Left = 16
          Top = 16
          Width = 33
          Height = 13
          Caption = 'C'#243'digo'
        end
        object lbl1: TLabel
          Left = 16
          Top = 58
          Width = 60
          Height = 13
          Caption = 'Raz'#227'o Social'
        end
        object lblCPFCNPJ: TLabel
          Left = 16
          Top = 98
          Width = 29
          Height = 13
          Caption = 'CNPJ:'
        end
        object lbl4: TLabel
          Left = 165
          Top = 98
          Width = 91
          Height = 13
          Caption = 'Inscri'#231#227'o Estadual:'
        end
        object lbl6: TLabel
          Left = 16
          Top = 169
          Width = 59
          Height = 13
          Caption = 'Logradouro:'
        end
        object lbl7: TLabel
          Left = 16
          Top = 208
          Width = 37
          Height = 13
          Caption = 'Cidade:'
        end
        object lbl8: TLabel
          Left = 236
          Top = 208
          Width = 32
          Height = 13
          Caption = 'Bairro:'
        end
        object lbl9: TLabel
          Left = 460
          Top = 208
          Width = 17
          Height = 13
          Caption = 'UF:'
        end
        object lbl10: TLabel
          Left = 512
          Top = 208
          Width = 23
          Height = 13
          Caption = 'CEP:'
        end
        object lbl11: TLabel
          Left = 16
          Top = 252
          Width = 46
          Height = 13
          Caption = 'Telefone:'
        end
        object lbl13: TLabel
          Left = 134
          Top = 252
          Width = 32
          Height = 13
          Caption = 'E-mail:'
        end
        object lbl14: TLabel
          Left = 510
          Top = 169
          Width = 12
          Height = 13
          Caption = 'N'#186
        end
        object Label2: TLabel
          Left = 596
          Top = 169
          Width = 65
          Height = 13
          Caption = 'Complemento'
        end
        object edtCodigo: TEdit
          Left = 16
          Top = 32
          Width = 46
          Height = 21
          Color = clBtnFace
          Enabled = False
          TabOrder = 0
        end
        object edtRazaoSocial: TEdit
          Left = 16
          Top = 71
          Width = 537
          Height = 21
          CharCase = ecUpperCase
          MaxLength = 80
          TabOrder = 1
        end
        object edtInscricaoEstadual: TEdit
          Left = 165
          Top = 111
          Width = 137
          Height = 21
          CharCase = ecUpperCase
          MaxLength = 16
          NumbersOnly = True
          TabOrder = 3
        end
        object edtLogradouro: TEdit
          Left = 16
          Top = 182
          Width = 479
          Height = 21
          CharCase = ecUpperCase
          MaxLength = 50
          TabOrder = 4
        end
        object edtCidade: TEdit
          Left = 16
          Top = 221
          Width = 207
          Height = 21
          CharCase = ecUpperCase
          MaxLength = 50
          TabOrder = 7
        end
        object edtBairro: TEdit
          Left = 236
          Top = 222
          Width = 207
          Height = 21
          CharCase = ecUpperCase
          MaxLength = 50
          TabOrder = 8
        end
        object medtTelefoneFixo: TMaskEdit
          Left = 16
          Top = 267
          Width = 99
          Height = 21
          EditMask = '!\(99\)9999-9999;0;_'
          MaxLength = 13
          TabOrder = 11
          Text = ''
        end
        object edtEmail: TEdit
          Left = 134
          Top = 267
          Width = 288
          Height = 21
          CharCase = ecLowerCase
          MaxLength = 50
          TabOrder = 12
        end
        object edtNumero: TEdit
          Left = 510
          Top = 182
          Width = 80
          Height = 21
          CharCase = ecUpperCase
          MaxLength = 10
          TabOrder = 5
        end
        object rgTipoFornecedor: TRadioGroup
          Left = 83
          Top = 22
          Width = 158
          Height = 43
          Caption = ' Tipo '
          Columns = 2
          ItemIndex = 1
          Items.Strings = (
            'F'#237'sica'
            'Jur'#237'dica')
          TabOrder = 13
          Visible = False
          OnClick = rgTipoFornecedorClick
        end
        object medtCPFCNPJ: TMaskEdit
          Left = 16
          Top = 111
          Width = 134
          Height = 21
          EditMask = '99\.999\.999\/9999\-99;0;_'
          MaxLength = 18
          TabOrder = 2
          Text = ''
        end
        object medtCEP: TMaskEdit
          Left = 512
          Top = 222
          Width = 69
          Height = 21
          EditMask = '99999\-999;0;_'
          MaxLength = 9
          TabOrder = 10
          Text = ''
        end
        object cbbUF: TComboBox
          Left = 460
          Top = 222
          Width = 44
          Height = 21
          Style = csDropDownList
          ItemIndex = 0
          TabOrder = 9
          Text = '[SELEC]'
          Items.Strings = (
            '[SELEC]'
            'AC'
            'AL'
            'AP'
            'AM'
            'BA'
            'CE'
            'DF'
            'ES'
            'GO'
            'MA'
            'MT'
            'MS'
            'MG'
            'PA'
            'PB'
            'PR'
            'PE'
            'PI'
            'RJ'
            'RN'
            'RS'
            'RO'
            'RR'
            'SC'
            'SP'
            'SE'
            'TO')
        end
        object edtComplemento: TEdit
          Left = 596
          Top = 182
          Width = 80
          Height = 21
          CharCase = ecUpperCase
          MaxLength = 10
          TabOrder = 6
        end
        object grpRepresentante: TGroupBox
          Left = 16
          Top = 294
          Width = 645
          Height = 56
          Caption = '  Representante  '
          TabOrder = 14
          object Label3: TLabel
            Left = 350
            Top = 16
            Width = 32
            Height = 13
            Caption = 'E-mail:'
          end
          object Label4: TLabel
            Left = 240
            Top = 16
            Width = 46
            Height = 13
            Caption = 'Telefone:'
          end
          object Label5: TLabel
            Left = 7
            Top = 16
            Width = 31
            Height = 13
            Caption = 'Nome:'
          end
          object edtEmailRepresentante: TEdit
            Left = 350
            Top = 29
            Width = 288
            Height = 21
            CharCase = ecLowerCase
            MaxLength = 50
            TabOrder = 2
          end
          object edtFoneRepresentante: TMaskEdit
            Left = 240
            Top = 29
            Width = 99
            Height = 21
            EditMask = '!\(99\)9999-9999;0;_'
            MaxLength = 13
            TabOrder = 1
            Text = ''
          end
          object edtNomeRepresentante: TEdit
            Left = 6
            Top = 29
            Width = 228
            Height = 21
            CharCase = ecLowerCase
            MaxLength = 50
            TabOrder = 0
          end
        end
      end
    end
  end
  inherited pnlBotoes: TPanel
    Top = 386
    Width = 778
    ExplicitTop = 386
    ExplicitWidth = 778
    inherited btnSair: TBitBtn
      Left = 688
      ExplicitLeft = 688
    end
  end
  inherited stbResumo: TStatusBar
    Top = 454
    Width = 778
    ExplicitTop = 454
    ExplicitWidth = 778
  end
  inherited dsConsulta: TDataSource
    DataSet = DtmDadosFornecedor.cdsPesquisa
  end
end
