inherited FrmCadastroLoja: TFrmCadastroLoja
  Caption = 'Loja'
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  inherited pgctrlPrincipal: TPageControl
    ActivePage = tbsCadastro
    inherited tbsConsulta: TTabSheet
      inherited lblPesquisa: TLabel
        Width = 37
        Caption = 'C'#243'digo:'
        ExplicitWidth = 37
      end
      inherited pnlConsulta: TPanel
        inherited dbgrdConsulta: TDBGrid
          OnDblClick = dbgrdConsultaDblClick
          Columns = <
            item
              Expanded = False
              FieldName = 'codigo'
              Title.Caption = 'C'#243'digo'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'descricao'
              Title.Caption = 'Descri'#231#227'o'
              Width = 357
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'flg_principal'
              Title.Caption = 'Loja Principal'
              Width = 78
              Visible = True
            end>
        end
        inherited pnlBotoesAcoes: TPanel
          inherited btnAlterar: TBitBtn
            OnClick = btnAlterarClick
          end
          inherited btnExcluir: TBitBtn
            OnClick = btnExcluirClick
          end
        end
      end
      inherited edtPesquisa: TEdit
        Left = 85
        CharCase = ecUpperCase
        OnChange = edtPesquisaChange
        OnKeyPress = edtPesquisaKeyPress
        ExplicitLeft = 85
      end
    end
    inherited tbsCadastro: TTabSheet
      OnShow = tbsCadastroShow
      ExplicitLeft = 4
      ExplicitTop = 24
      ExplicitWidth = 846
      ExplicitHeight = 319
      inherited pnlBotoesLateral: TPanel
        inherited btnSalvar: TBitBtn
          OnClick = btnSalvarClick
        end
        inherited btnCancelar: TBitBtn
          OnClick = btnCancelarClick
        end
      end
      object pnlLojapo: TPanel
        Left = 0
        Top = 0
        Width = 760
        Height = 319
        Align = alClient
        TabOrder = 2
        object Label2: TLabel
          Left = 168
          Top = 72
          Width = 38
          Height = 13
          Caption = 'C'#243'digo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label3: TLabel
          Left = 168
          Top = 125
          Width = 55
          Height = 13
          Caption = 'Descri'#231#227'o'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object edtCodigo: TEdit
          Left = 168
          Top = 87
          Width = 46
          Height = 21
          Color = clBtnFace
          Enabled = False
          TabOrder = 0
        end
        object edtDescricao: TEdit
          Left = 168
          Top = 141
          Width = 417
          Height = 21
          CharCase = ecUpperCase
          MaxLength = 50
          TabOrder = 1
          OnKeyPress = edtDescricaoKeyPress
        end
        object chkPrincipal: TCheckBox
          Left = 170
          Top = 181
          Width = 89
          Height = 17
          Caption = 'Loja Principal'
          TabOrder = 2
        end
      end
    end
  end
  inherited dsConsulta: TDataSource
    DataSet = DtmDadosLoja.cdsPesquisa
  end
end
