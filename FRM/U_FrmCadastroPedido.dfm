inherited FrmCadastroPedido: TFrmCadastroPedido
  Left = 71
  Caption = 'Cadastro de Pedidos'
  ClientHeight = 530
  ClientWidth = 1157
  Position = poDesigned
  OnDestroy = FormDestroy
  ExplicitTop = -116
  ExplicitWidth = 1163
  ExplicitHeight = 558
  PixelsPerInch = 96
  TextHeight = 13
  inherited pgctrlPrincipal: TPageControl
    Width = 1157
    Height = 472
    ExplicitWidth = 1014
    ExplicitHeight = 456
    inherited tbsConsulta: TTabSheet
      ExplicitLeft = 4
      ExplicitTop = 24
      ExplicitWidth = 1006
      ExplicitHeight = 428
      inherited lblPesquisa: TLabel
        Top = -96
        Visible = False
        ExplicitTop = -96
      end
      object lblLoja: TLabel [1]
        Left = 11
        Top = 2
        Width = 24
        Height = 13
        Caption = 'Loja'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label20: TLabel [2]
        Left = 198
        Top = 2
        Width = 64
        Height = 13
        Caption = 'Fornecedor'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object btnConsultaForConsulta: TSpeedButton [3]
        Left = 235
        Top = 16
        Width = 23
        Height = 22
        Glyph.Data = {
          36030000424D3603000000000000360000002800000010000000100000000100
          18000000000000030000C40E0000C40E00000000000000000000FFFFFFFEFEFE
          FBFBFBF7F7F7F3F3F3EFEFEFEBEBEBE8E8E8E6E6E6E5E5E5E4E4E4E4E4E4F8F8
          F8BFBFBFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDFCFCFCFAFAFAF9F9F9F7F7F7F6
          F6F6F5F5F5F5F5F5F6F6F6FFFFFF5858583C3C3C606060FFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6060604141
          41646464808080FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFF606060404040646464848484FFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFF7F6F6D5D6D8D4D5DAD3D5DAD5D6D8FFFFFFACACAC2D2D2D6464648484
          84FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD0D0D0E0E4EBEFE7D3E3D4B1E2D3B0EA
          E1CCDFE2E8BEBEBE878787878787FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFCFD0
          F7F8FBDBC492F0DDBDFAF0E2FEF9F5F9F5EADDCCA2F3F4F7D7D7D8FFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFF8F8F9E3E7EDDBC38EF5E0C5F2E4CBF6EAD7F9F2E8FE
          FCFAFFFFFFDDCB9FDDDFE6F7F7F7FFFFFFFFFFFFFFFFFFFFFFFFCFD0D3F3ECD8
          EAD0A9F6E9D4F5E6D1F5EAD8F7EFE3FBF6EEFBF8F3F9F1E4EAE1CCD6D7D9FFFF
          FFFFFFFFFFFFFFFFFFFFCED1D5E8D5ACF8E9D6F6EBDAF5E8D3F5E7D4F7EBDAF7
          EEDFF8EFE0FBF3E8E2D2AFD4D6DBFFFFFFFFFFFFFFFFFFFFFFFFCED1D5E7D4AB
          F9EDDFF8F0E1F6EAD7F6E8D3F4E8D4F4E7D3F4E6D0F8EAD8E3D3AFD4D6DBFFFF
          FFFFFFFFFFFFFFFFFFFFCFD0D2F5ECD7EDD7B6FBF6EDF8EFDFF6EAD7F5E7D2F4
          E5CCF1DFC4EEDAB8EEE6D3D5D6D8FFFFFFFFFFFFFFFFFFFFFFFFF9F9F9E6E9F0
          DABF85FCF2E8FBF5EDF8F0E1F6EBD9F7E9D6F6E2C5DBC390E0E4ECF7F7F7FFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFD0D0D1F9FAFDDBC086EDD7B7F9EEE0F8EBDAEB
          D3ACDBC38FF7F8FAD0D0D1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          D1D1D1E3E8EFF5EDD7E8D5ADE8D6AEF4ECD8E3E7EED0D0D1FFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8F8F8CFD0D2CED0D5CED0D5CE
          D0D2F9F8F8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
        OnClick = btnConsultaForConsultaClick
      end
      object Label21: TLabel [4]
        Left = 210
        Top = 52
        Width = 6
        Height = 13
        Caption = 'a'
      end
      object Label22: TLabel [5]
        Left = 12
        Top = 51
        Width = 85
        Height = 13
        Caption = 'Data do pedido'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label23: TLabel [6]
        Left = 580
        Top = 52
        Width = 6
        Height = 13
        Caption = #224
      end
      object Label24: TLabel [7]
        Left = 344
        Top = 51
        Width = 119
        Height = 13
        Caption = 'Data do faturamento'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      inherited pnlConsulta: TPanel
        Top = 69
        Width = 1149
        Height = 246
        ExplicitTop = 94
        ExplicitWidth = 1149
        ExplicitHeight = 246
        inherited dbgrdConsulta: TDBGrid
          Width = 1061
          Height = 225
          OnDblClick = dbgrdConsultaDblClick
          Columns = <
            item
              Expanded = False
              FieldName = 'loja'
              Title.Caption = 'Loja'
              Width = 64
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'razao_social'
              Title.Caption = 'Fornecedor'
              Width = 236
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'codigo'
              Visible = False
            end
            item
              Expanded = False
              FieldName = 'cod_fornecedor'
              Visible = False
            end
            item
              Expanded = False
              FieldName = 'cod_loja'
              Visible = False
            end
            item
              Expanded = False
              FieldName = 'data_pedido'
              Title.Caption = 'Data Pedido'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'data_prev_faturamento'
              Title.Caption = 'Data Faturamento'
              Width = 107
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'status'
              Title.Caption = 'Status'
              Visible = False
            end
            item
              Expanded = False
              FieldName = 'qtd_parcelas'
              Visible = False
            end
            item
              Expanded = False
              FieldName = 'parcelas_txt'
              Title.Caption = 'Parcelas'
              Width = 128
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'valor_pedido'
              Title.Caption = 'Valor'
              Visible = True
            end>
        end
        inherited pnlBotoesAcoes: TPanel
          Left = 1062
          Height = 225
          ExplicitLeft = 919
          ExplicitHeight = 244
          inherited btnAlterar: TBitBtn
            Caption = '&Visualizar'
            OnClick = btnAlterarClick
          end
          inherited btnExcluir: TBitBtn
            OnClick = btnExcluirClick
          end
        end
        object stbResumoPed: TStatusBar
          Left = 1
          Top = 226
          Width = 1147
          Height = 19
          Panels = <
            item
              Width = 50
            end>
          ExplicitTop = 490
          ExplicitWidth = 1014
        end
      end
      inherited edtPesquisa: TEdit
        Top = -98
        Visible = False
        ExplicitTop = -98
      end
      object cbbLoja: TComboBox
        Left = 11
        Top = 17
        Width = 176
        Height = 21
        Style = csDropDownList
        TabOrder = 2
      end
      object edtCodForConsulta: TEdit
        Left = 198
        Top = 17
        Width = 34
        Height = 21
        CharCase = ecUpperCase
        MaxLength = 30
        NumbersOnly = True
        TabOrder = 3
        OnExit = edtCodForConsultaExit
      end
      object edtRazaoSocialConsulta: TEdit
        Left = 262
        Top = 17
        Width = 259
        Height = 21
        CharCase = ecUpperCase
        Color = clBtnFace
        Enabled = False
        MaxLength = 30
        TabOrder = 4
      end
      object dtpPeriodoIni: TDateTimePicker
        Left = 104
        Top = 47
        Width = 94
        Height = 21
        Date = 42258.989972349540000000
        Time = 42258.989972349540000000
        ShowCheckbox = True
        Checked = False
        TabOrder = 5
      end
      object dtpPeriodoFim: TDateTimePicker
        Left = 230
        Top = 47
        Width = 98
        Height = 21
        Date = 42258.989904861110000000
        Time = 42258.989904861110000000
        ShowCheckbox = True
        Checked = False
        TabOrder = 6
      end
      object btnPesquisar: TBitBtn
        Left = 816
        Top = 17
        Width = 103
        Height = 40
        Caption = '&Pesquisar'
        Glyph.Data = {
          360C0000424D360C000000000000360000002800000020000000200000000100
          180000000000000C0000C40E0000C40E00000000000000000000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFF5F5F5F5F5F5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFAFAFA75757581817FE8E8E8FFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFF7F7F7747474BEBCB9F5F4F2A1A19FE7E7E7FFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFF5F5F5737373C3C1BEE1DFDDFFFFFDFFFFFFC9C9C8FFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3
          F3F3737373C5C5C2D7D5D4FCFCFAF2F2F1F3F2F2FCFCFCFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3F3F374
          7272C5C4C2CAC8C5ECEAEAEAE9E7F6F6F5FDFDFDFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6F6F6757575C7
          C5C4BCBAB7D7D5D5DFDDDCFDFBFBFDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFBFB797979C7C7C4AC
          AAA7C0BFBDD4D2D0FFFFFFFDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7E7E7EC3C1BF9D9C98A8
          A5A2C8C7C5FFFFFFFEFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFADADADB9B9B79794908F8D8AC5
          C4C2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEECECECCECECEBCBCBCBBBBBBCCCC
          CCECECECFFFFFFFFFFFFFFFFFFFFFFFFC1C1C1ABABA995928F787572CDCCCAFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFD6D6D68080805D5D5F8C8C8CACACACB1B1B19A9C
          9C6E6E70696969CECECEFFFFFFE5E5E59B9B99A29F9D6B6865DAD8D7FFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFF9F9F99C9C9C6B6B6BE9E5E5FFFFFFFFFDF1FFF2E1FFF1DFFFFA
          EAFFFFFFFFFFFF9999998484848E8E8ED8D5D494928FEDEBEAFEFEFEFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFAFAFA838383AAAAACFFFFFFFFE2CDFFC4A7FFC4A4FFCAA8FFCAAAFFC5
          A5FFC2A4FFD4BDFFFFFFDDDCDCABA8A8CFCCCAF1F0F0FFFFFEFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFF9D9D9DB1B1B2FFFFFCFFCAAFFFCCAAFFDFBFFFECCCFFF2D0FFF2D0FFEF
          CDFFE4C4FFD0AFFFBFA0FFF4E5F5F2F2727070FFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          DBDBDB7A7B7CFFFFFAFFD1B8FFE3C7FFF3D4FFFCDAFFFFE2FFFFE5FFFFE5FFFF
          E2FFFDDDFFF3D2FFDEBFFFC0A3FFF9EBC3C3C3C6C5C5FFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          808080EDE6E3FFDECDFFF1DDFFFFEAFFFFEBFFFFEDFFFFEFFFFFF2FFFFF2FFFF
          F0FFFFEEFFFFE6FFF7DBFFE0C6FFCDB5FFFFFFA1A0A0FFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE6E6E6
          777778FFEDE2FFECDCFFFFFCFFFFFAFFFFF9FFFFF6FFFFF7FFFFF8FFFFF8FFFF
          F7FFFFF5FFFFF0FFFFE8FFF2DCFFD8C2FFECE0C7C7C7E0E0DFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFBFBF
          A6A4A4FFE2D7FFFFFDFFFFFFFFFFFFFFFFFFFFFFFBFFFFF9FFFFFBFFFFFBFFFF
          FAFFFFF9FFFFF7FFFFF1FFFBE7FFE8D5FFE2D3EAE1E0BDBCBCFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA4A4A4
          BDB7B6FEE2D8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFFBFFFFFCFFFFFCFFFF
          FCFFFFFBFFFFFAFFFFF6FFFFEEFFF2E2FFE6D8EFE0DCADACACFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9E9E9E
          B9B3B2F9E2DAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFFFFFDFFFFFDFFFFFDFFFF
          FDFFFFFCFFFFFBFFFFF8FFFFF2FFF5E9FFEBE1E2D3CFADACACFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB8B8B8
          A4A4A4EDDBD4FFFFFFFFFFFFFFFFFEFFFFFFFFFFFFFFFFFFFFFFFDFFFFFDFFFF
          FDFFFFFDFFFFFCFFFFF9FFFFF5FFF7EEFFEEE7C8BDBBB4B3B3FFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE2E2E2
          919192D7C9C5FFFFFFFFFFFEFFFFFDFFFFFFFFFFFFFFFFFFFFFFFDFFFFFEFFFF
          FDFFFFFDFFFFFCFFFFFAFFFEF7FFFAF3F6EAE5A29E9ECCCBCBFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          9090909E9794F6EFECFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFF
          FEFFFFFDFFFFFDFFFFFBFFFDF9FFFCF9CDC2BE9B9B9CF0F0F0FFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          CDCDCD9D9D9ED2D2D2F9F2EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FEFFFFFEFFFFFDFFFEFDFFFFFEF6F3F2747374B8B6B5FFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFBFBEBE626264DEDEDEECE9E9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFEFEFE7E7E7EA7A7A7F1F0F0FFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFCFBFBBFBDBD535354D5D5D5D2D0D0FFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFF3F1F07A7A7A9A9A9CD6D5D5FFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFF8F8F8C3C1C16868688E8E8ECBCBCBD1D0D0DDDCDBE6E4E4EDEB
          EBE0DEDEA9A9A9434749ABA9A9D7D6D6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFD4D2D1B2B1B16666684444446262626666664F4F
          4F4B4B4D939395BFBDBDEEEEEEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFAFADEDDDDCFCDCDBFBEBDBCBABAC8C7
          C7D4D2D1EEEEEEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
        TabOrder = 7
        OnClick = btnPesquisarClick
      end
      object Panel1: TPanel
        Left = 0
        Top = 315
        Width = 1149
        Height = 129
        Align = alBottom
        TabOrder = 8
        ExplicitTop = 320
        object dbgrdProdutoConsulta: TDBGrid
          Left = 1
          Top = 1
          Width = 1061
          Height = 108
          Align = alClient
          DataSource = dsProdutoConsulta
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          OnDblClick = dbgrdConsultaDblClick
          OnTitleClick = dbgrdConsultaTitleClick
          Columns = <
            item
              Expanded = False
              FieldName = 'codigo'
              Visible = False
            end
            item
              Expanded = False
              FieldName = 'cod_pedido'
              Visible = False
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'referencia'
              Title.Caption = 'Refer'#234'ncia'
              Width = 60
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'descricao'
              Title.Caption = 'Descri'#231#227'o'
              Width = 253
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'valor_unitario'
              Title.Caption = 'Valor Unit'#225'rio'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'valor_pdu'
              Title.Caption = 'Valor PDV'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'quantidade'
              Title.Caption = 'Qtd.'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'valor_total'
              Title.Caption = 'Valor Total'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'flg_recebido'
              Visible = False
            end
            item
              Expanded = False
              FieldName = 'qtd_recebido'
              Title.Caption = 'Qtd. Recebida'
              Width = 87
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'nota_fiscal'
              Title.Caption = 'Nota Fiscal'
              Width = 156
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'data_emissao_nf'
              Title.Caption = 'Data Emiss'#227'o NF'
              Width = 94
              Visible = True
            end>
        end
        object Panel2: TPanel
          Left = 1062
          Top = 1
          Width = 86
          Height = 108
          Align = alRight
          TabOrder = 1
          ExplicitLeft = 919
          ExplicitHeight = 106
          object btnExcluirProdutoConsulta: TBitBtn
            Left = 6
            Top = 4
            Width = 75
            Height = 35
            Caption = '&Excluir'
            Glyph.Data = {
              F6060000424DF606000000000000360000002800000018000000180000000100
              180000000000C0060000C40E0000C40E00000000000000000000FFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFDF9F8F5EDEDE6EBEAE2EAE9E1EAE9
              E1EBEAE2EDEDE6F9F8F5FEFEFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDEEEEEAE1E0D4B7B8C47A80B9
              6D73B66E75B57076B56F76B77C82BAB8B9C4E1DFD4EEEEEAFDFDFDFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFBF9EDECDFA8A9B945
              4FB7394BC32E47D72A47E02645DF213FDD1E3CDE1F39D43344C14A55B8ABACBA
              EEECDFFBFBF9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7F6F2CBCB
              CC5E66B52137D05571F16982FB7E93FF889BFF879AFF8798FF8697FF768AFF4F
              68F72F4CE91229CB616AB7CDCCCDF6F6F2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FBFBF9CDCCCC4C59BE3C54DB7A95FF7F95FF7486FF6679FE6072FE5F71FD5F72
              FD6174FE6779FE7384FF7486FF536CF71831D34A58BED0CFCCFBFBF9FFFFFFFF
              FFFFFFFFFFFDFDFDF5F2DE3A47BA4D66E589A3FE7689FF5F72FC5D6FFC5E71FC
              5F72FC5F72FC5F72FC5F72FC5F72FC5E71FC6274FC7184FF6077F81B37D93E4B
              BBF5F3DEFDFDFDFFFFFFFFFFFFF5F4EA676FBA4861E18FA7FF7185FD5467FA5C
              6FFA5C6FFA5C6FFA5C6FFA5C6FFA5C6FFA5C6FFA5C6FFA5C6FFA5B6FFA576BFA
              7081FF6278FC1832D57078BCF5F4EAFFFFFFFFFFFDB8BAD2394BC78BA6FF7A8F
              FE5368F9586CF9596DF9596DF9596DF9596DF9596DF9596DF9596DF9596DF959
              6DF9596DF9586CF9576BF97283FF4661F62D3FC3BABCD3FFFFFDFEFEF4777DC4
              5D79EC95ABFF5468F85469F7556AF7556AF7556AF7556AF7556AF7556AF7556A
              F7556AF7556AF7556AF7556AF7556AF75569F7576CF87B8EFF1733D98288C6FE
              FEF4DADAE45464C886A1FB7288FC495FF45268F55267F55267F55267F55267F5
              5267F55267F55267F55267F55267F55267F55267F55267F55267F54D63F46D80
              FF445EED4151C4DDDEE4C7C9E04257D4A0BAFF5266F54C63F44E65F43952F331
              4CF2314AF2314AF2314AF2314AF2314AF2314AF2314AF2314AF2314CF23952F3
              4D65F44D63F45569F76A80FA1B32CACDCEE1C4C5DE475FDBAEC8FF3B50F04B60
              F3364EF1BEC5FADDE1FCD9DDFCD9DDFCD9DDFCD9DDFCD9DDFCD9DDFCD9DDFCD9
              DDFCDDE1FCBEC5FA354EF14B61F3445AF17D92FF162FCECACCE0C4C5DD4A60DB
              B2CCFF354BEE475FF11F3AEEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1F3AEE465FF13E55EF8095FF1933CFCA
              CCE0C3C5DE4D63DBB4CFFF3046EC445BEF213DECFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF213DEC445CEF3850
              EC8399FF1C35CFCACCE0C4C6E04A61DBB6D1FF324AEC3F57EE3952ED5267EF55
              6AEF5268EF5268EF5268EF5268EF5268EF5268EF5268EF5268EF556AEF5267EF
              3952ED4158EE3A52EC8599FF1B34CFCBCDE2DCDEED5263D1A4BFFF5871F3344D
              EB3D57EC3851EC3651EC3650EC3650EC3650EC3650EC3650EC3650EC3650EC36
              50EC3651EC3851EC3D57EC3751EB566CF56981F7384CC9E1E1EFFCFCFB727CD1
              92ADF7869FFA2B45E83953EB3A54EB3A54EB3A54EB3A54EB3A54EB3A54EB3A54
              EB3A54EB3A54EB3A54EB3A54EB3A54EB3A53EB2F49E9798DFD4963EA707BCFFE
              FDFBFFFFFF8D93D6687EE3ACC8FF4A63EE2B45E73852E93751E93751E93751E9
              3751E93751E93751E93751E93751E93751E93751E93852E92F49E74A62EF839A
              FF324BD7969CD8FFFFFFFFFFFFFFFFFD454EC1A0BBFE9BB6FE3953E82A44E633
              4DE7334DE7334DE7334DE7334DE7334DE7334DE7334DE7334DE7334DE72C46E6
              3A53E98199FE5673EF525CC4FFFFFDFFFFFFFFFFFFFFFFFFD8DAED2D40C7AEC9
              FF98B3FC2D47E6233EE32F4AE6304AE6304BE6304BE6304BE6304BE6304AE630
              4AE62640E42F49E6859CFD748EF71E32C3DCDEEEFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFA8ADE14357D4B2CFFF9AB6FE4761EB1430E0213CE12843E42843E42943
              E42843E4233EE11834E04560ED8EA6FF7894FB2C40CDACB1E1FFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFB5BAE43947C48DA9F6BAD4FFA2BCFF5E78EF
              3B58E73551E53551E53B57E75A75F194AEFF9DB5FF607CED3646C3BBBFE5FFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD9DBF16771D04D
              61D6738DE9A3BCFFB8D3FFB6D1FFB2CDFFAEC7FF94ADFC5E77E73B50D26973D0
              DBDDF1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFEFEFDD7D9F0A2A9E14454CB3647C83748C83647C83445C84352CAA2
              A9E0DADCF0FFFEFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
            TabOrder = 0
            OnClick = btnExcluirProdutoConsultaClick
          end
        end
        object stbResumoProd: TStatusBar
          Left = 1
          Top = 109
          Width = 1147
          Height = 19
          Panels = <
            item
              Width = 50
            end>
          ExplicitTop = 490
          ExplicitWidth = 1014
        end
      end
      object dtpDataPrevFaturamentoDe: TDateTimePicker
        Left = 478
        Top = 47
        Width = 93
        Height = 21
        Date = 42258.946674247690000000
        Time = 42258.946674247690000000
        ShowCheckbox = True
        Checked = False
        TabOrder = 9
      end
      object dtpDataPrevFaturamentoAte: TDateTimePicker
        Left = 594
        Top = 47
        Width = 93
        Height = 21
        Date = 42258.946674247690000000
        Time = 42258.946674247690000000
        ShowCheckbox = True
        Checked = False
        TabOrder = 10
      end
    end
    inherited tbsCadastro: TTabSheet
      ExplicitLeft = 4
      ExplicitTop = 24
      ExplicitWidth = 1006
      ExplicitHeight = 428
      inherited pnlBotoesLateral: TPanel
        Left = 1063
        Height = 444
        ExplicitLeft = 920
        ExplicitHeight = 428
        inherited btnSalvar: TBitBtn
          OnClick = btnSalvarClick
        end
        inherited btnCancelar: TBitBtn
          OnClick = btnCancelarClick
        end
      end
      inherited pnlCorpo: TPanel
        Width = 1063
        Height = 444
        ExplicitWidth = 920
        ExplicitHeight = 428
        object Label1: TLabel
          Left = 74
          Top = 0
          Width = 64
          Height = 13
          Caption = 'Fornecedor'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object btnConsultaFornecedor: TSpeedButton
          Left = 111
          Top = 14
          Width = 23
          Height = 22
          Glyph.Data = {
            36030000424D3603000000000000360000002800000010000000100000000100
            18000000000000030000C40E0000C40E00000000000000000000FFFFFFFEFEFE
            FBFBFBF7F7F7F3F3F3EFEFEFEBEBEBE8E8E8E6E6E6E5E5E5E4E4E4E4E4E4F8F8
            F8BFBFBFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDFCFCFCFAFAFAF9F9F9F7F7F7F6
            F6F6F5F5F5F5F5F5F6F6F6FFFFFF5858583C3C3C606060FFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6060604141
            41646464808080FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFF606060404040646464848484FFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFF7F6F6D5D6D8D4D5DAD3D5DAD5D6D8FFFFFFACACAC2D2D2D6464648484
            84FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD0D0D0E0E4EBEFE7D3E3D4B1E2D3B0EA
            E1CCDFE2E8BEBEBE878787878787FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFCFD0
            F7F8FBDBC492F0DDBDFAF0E2FEF9F5F9F5EADDCCA2F3F4F7D7D7D8FFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFF8F8F9E3E7EDDBC38EF5E0C5F2E4CBF6EAD7F9F2E8FE
            FCFAFFFFFFDDCB9FDDDFE6F7F7F7FFFFFFFFFFFFFFFFFFFFFFFFCFD0D3F3ECD8
            EAD0A9F6E9D4F5E6D1F5EAD8F7EFE3FBF6EEFBF8F3F9F1E4EAE1CCD6D7D9FFFF
            FFFFFFFFFFFFFFFFFFFFCED1D5E8D5ACF8E9D6F6EBDAF5E8D3F5E7D4F7EBDAF7
            EEDFF8EFE0FBF3E8E2D2AFD4D6DBFFFFFFFFFFFFFFFFFFFFFFFFCED1D5E7D4AB
            F9EDDFF8F0E1F6EAD7F6E8D3F4E8D4F4E7D3F4E6D0F8EAD8E3D3AFD4D6DBFFFF
            FFFFFFFFFFFFFFFFFFFFCFD0D2F5ECD7EDD7B6FBF6EDF8EFDFF6EAD7F5E7D2F4
            E5CCF1DFC4EEDAB8EEE6D3D5D6D8FFFFFFFFFFFFFFFFFFFFFFFFF9F9F9E6E9F0
            DABF85FCF2E8FBF5EDF8F0E1F6EBD9F7E9D6F6E2C5DBC390E0E4ECF7F7F7FFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFD0D0D1F9FAFDDBC086EDD7B7F9EEE0F8EBDAEB
            D3ACDBC38FF7F8FAD0D0D1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            D1D1D1E3E8EFF5EDD7E8D5ADE8D6AEF4ECD8E3E7EED0D0D1FFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8F8F8CFD0D2CED0D5CED0D5CE
            D0D2F9F8F8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
          OnClick = btnConsultaFornecedorClick
        end
        object Label5: TLabel
          Left = 9
          Top = 0
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
        object Label2: TLabel
          Left = 482
          Top = 0
          Width = 27
          Height = 13
          Caption = 'Data'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label9: TLabel
          Left = 192
          Top = 256
          Width = 48
          Height = 13
          Caption = 'Parcelas'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lblLojas: TLabel
          Left = 490
          Top = 259
          Width = 30
          Height = 13
          Caption = 'Lojas'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label15: TLabel
          Left = 602
          Top = 0
          Width = 154
          Height = 13
          Caption = 'Data Previsto Faturamento'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object btnCadFornecedor: TSpeedButton
          Left = 441
          Top = 14
          Width = 23
          Height = 22
          Hint = 'Cadastro de fornecedor'
          Glyph.Data = {
            36030000424D3603000000000000360000002800000010000000100000000100
            18000000000000030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFCFCFCF8D8D8DCFCFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6464641818180C0C0C1818
            18646464FFFFFFFFFFFFFFFFFFE6E6E60F0F0F00000000000000000000000022
            2222E4E4E4181818000000FFFFFF000000181818CFCFCFFFFFFFFFFFFF878787
            717171FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8E8E8E0C0C0CFFFFFFFFFFFFFFFF
            FF0C0C0C8D8D8DFFFFFFFFFFFF8C8C8C969696D5D5D56E6E6EFFFFFF75757587
            8787DFDFDF181818000000FFFFFF000000181818CFCFCFFFFFFFFFFFFF8C8C8C
            989898989898000000FFFFFF000000000000E3E3E36E6E6E1818180C0C0C1818
            18666666FFFFFFFFFFFFFFFFFF8C8C8C8D8D8DFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFEFEFEFFFFFFE6E6E6969696DCDCDCFFFFFFFFFFFFFFFFFFFFFFFF8C8C8C
            989898979797000000FFFFFF0000000F0F0F0F0F0F0B0B0B373737CDCDCD9D9D
            9D7F7F7FFFFFFFFFFFFFFFFFFF8C8C8C929292E3E3E3969696FFFFFF9F9F9FA8
            A8A8A8A8A8A8A8A89D9D9DE0E0E09191918C8C8CFFFFFFFFFFFFFFFFFF8C8C8C
            929292E3E3E3969696FFFFFF8484848484848585858585857C7C7CDCDCDC9393
            938C8C8CFFFFFFFFFFFFFFFFFF8C8C8C9999998D8D8D000000FFFFFF0000000F
            0F0F0F0F0F0F0F0F0202029898989898988C8C8CFFFFFFFFFFFFFFFFFF8A8A8A
            959595FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9595
            958A8A8AFFFFFFFFFFFFFFFFFF9C9C9C2323239595958C8C8C8C8C8C8C8C8C8C
            8C8C8C8C8C8C8C8C8C8C8C9191912323239C9C9CFFFFFFFFFFFFFFFFFFFFFFFF
            9C9C9C8A8A8A8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8B8B8B9C9C
            9CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
          ParentShowHint = False
          ShowHint = True
          OnClick = btnCadFornecedorClick
        end
        object Label16: TLabel
          Left = 9
          Top = 46
          Width = 24
          Height = 13
          Caption = 'Loja'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label10: TLabel
          Left = 11
          Top = 367
          Width = 76
          Height = 13
          Caption = 'Observa'#231#245'es:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object edtCodFornecedor: TEdit
          Left = 74
          Top = 15
          Width = 34
          Height = 21
          CharCase = ecUpperCase
          MaxLength = 30
          NumbersOnly = True
          TabOrder = 1
          OnExit = edtCodFornecedorExit
          OnKeyPress = edtReferenciaKeyPress
        end
        object edtRazaoSocial: TEdit
          Left = 138
          Top = 15
          Width = 299
          Height = 21
          CharCase = ecUpperCase
          Color = clBtnFace
          Enabled = False
          MaxLength = 30
          TabOrder = 2
        end
        object edtCodigo: TEdit
          Left = 9
          Top = 15
          Width = 46
          Height = 21
          Color = clBtnFace
          Enabled = False
          TabOrder = 0
        end
        object dtpData: TDateTimePicker
          Left = 482
          Top = 14
          Width = 111
          Height = 21
          Date = 42258.946674247690000000
          Time = 42258.946674247690000000
          TabOrder = 3
          OnKeyPress = edtReferenciaKeyPress
        end
        object grpProduto: TGroupBox
          Left = 8
          Top = 65
          Width = 744
          Height = 185
          Caption = '  Produtos  '
          TabOrder = 6
          object Label3: TLabel
            Left = 11
            Top = 17
            Width = 61
            Height = 13
            Caption = 'Refer'#234'ncia'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label4: TLabel
            Left = 83
            Top = 17
            Width = 45
            Height = 13
            Caption = 'Produto'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label12: TLabel
            Left = 388
            Top = 17
            Width = 77
            Height = 13
            Caption = 'Valor Unit'#225'rio'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label6: TLabel
            Left = 473
            Top = 17
            Width = 54
            Height = 13
            Caption = 'Valor PDV'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label7: TLabel
            Left = 604
            Top = 17
            Width = 61
            Height = 13
            Caption = 'Valor Total'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label8: TLabel
            Left = 559
            Top = 17
            Width = 26
            Height = 13
            Caption = 'QTD.'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object edtReferencia: TEdit
            Left = 11
            Top = 33
            Width = 58
            Height = 21
            CharCase = ecUpperCase
            MaxLength = 20
            TabOrder = 0
            OnKeyPress = edtReferenciaKeyPress
          end
          object edtProduto: TEdit
            Left = 83
            Top = 33
            Width = 299
            Height = 21
            CharCase = ecUpperCase
            MaxLength = 100
            TabOrder = 1
            OnKeyPress = edtReferenciaKeyPress
          end
          object edtValorUnitario: TEdit
            Left = 388
            Top = 33
            Width = 77
            Height = 21
            CharCase = ecUpperCase
            MaxLength = 50
            TabOrder = 2
            Text = '0,00'
            OnChange = edtValorUnitarioChange
            OnKeyPress = edtReferenciaKeyPress
          end
          object edtValorPdu: TEdit
            Left = 473
            Top = 33
            Width = 77
            Height = 21
            CharCase = ecUpperCase
            MaxLength = 50
            TabOrder = 3
            Text = '0,00'
            OnChange = edtValorUnitarioChange
            OnKeyPress = edtReferenciaKeyPress
          end
          object edtValorTotal: TEdit
            Left = 604
            Top = 33
            Width = 93
            Height = 21
            CharCase = ecUpperCase
            Color = clBtnFace
            Enabled = False
            MaxLength = 50
            TabOrder = 4
            Text = '0,00'
          end
          object edtQtd: TEdit
            Left = 556
            Top = 33
            Width = 34
            Height = 21
            CharCase = ecUpperCase
            MaxLength = 30
            NumbersOnly = True
            TabOrder = 5
            Text = '00'
            OnChange = edtValorUnitarioChange
            OnKeyPress = edtQtdKeyPress
          end
          object dbgrdProduto: TDBGrid
            Left = 10
            Top = 60
            Width = 686
            Height = 116
            DataSource = dsProduto
            Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
            TabOrder = 6
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'Tahoma'
            TitleFont.Style = []
            OnCellClick = dbgrdProdutoCellClick
            OnDrawColumnCell = dbgrdProdutoDrawColumnCell
            Columns = <
              item
                Expanded = False
                Title.Caption = '[X]'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'referencia'
                Width = 60
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'descricao'
                Width = 267
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'valor_unitario'
                Width = 84
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'valor_pdu'
                Width = 71
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'quantidade'
                Width = 44
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'valor_total'
                Width = 76
                Visible = True
              end>
          end
          object btnAdd: TBitBtn
            Left = 702
            Top = 30
            Width = 34
            Height = 25
            Glyph.Data = {
              36030000424D3603000000000000360000002800000010000000100000000100
              18000000000000030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFF4F9EFDDE4ECD8E0ECD8E0EFDDE4FFF4F9FFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3FAA3B6AA329064008A4700
              8D49008D49008A47329064A3B6AAFFF3FAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFECF62F8D5F009A5B34CDA539DDB23AE1B33AE1B239DDB234CDA5009A5A2F8D
              5FFFECF6FFFFFFFFFFFFFFFFFFFFF5FE1A8B550DB5833EE0B600D79700D49600
              D29100D29100D49600D7973EE0B50DB5831A8B55FFF5FEFFFFFFFFFFFF75A78C
              00A97233DFB200D29400D29900D09174E4C374E4C300D09100D29900D29533DF
              B200A97275A78CFFFFFFFFF6FE00864145DDB800D19400D19900D19900C885FF
              FFFFFFFFFF00C88500D19900D19900D19445DDB6008641FFF6FEA7C6B605AA75
              19D8A700CF9800CD9300CC9200C37DFFFFFFFFFFFF00C37D00CC9200CD9300CF
              9819D8A606AB74A7C6B678B7962EC69C00D09800CB9172E2C281E4C66FDFBBFF
              FFFFFFFFFF6FDFBB81E4C672E2C200CB9100D0982BC49979B7977CB79738D0A8
              00CC9500C385FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00C3
              8500CE982CC4997DB89A75B49250DDB900C99400C89172E0C281E2C66FDDBBFF
              FFFFFFFFFF6FDDBB81E2C672E0C200C89100CC982BC49879B897B1D2BF38C69B
              18D3A700C99700C79300C69200BB7DFFFFFFFFFFFF00BB7D00C69200C79300C9
              9819D3A604AA73B6D5C4FFFFFF07985C64F5D700BF8D00C89900C89900BD85FF
              FFFFFFFFFF00BD8500C89900C89900C69445DBB800853FFFFFFFFFFFFF81BB9C
              6FE1C12FE0B800BF8D00C79900C39174DEC374DEC300C39100C79900C49433D8
              B200A76D90C3A8FFFFFFFFFFFFFFFFFF319B66A9FFF043E8C300BA8900C09300
              BF8F00BF8F00C29500C2963ED9B708B27E2B9C68FFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFF41A2706ED5B49FFFF64DECCA43E2C042E1BF45E1C140D6B00094524AA8
              7AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCDE3D568B7913AAD7D33
              AC7B20A671109D6363B68FDCEBE1FFFFFFFFFFFFFFFFFFFFFFFF}
            TabOrder = 7
            OnClick = btnAddClick
          end
          object btnRemove: TBitBtn
            Left = 703
            Top = 61
            Width = 33
            Height = 25
            Enabled = False
            Glyph.Data = {
              36030000424D3603000000000000360000002800000010000000100000000100
              18000000000000030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFCFAF0E9E6D6E5E2D1E6E3D1EAE7D6FCFBF0FFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFBEDA6A7BC515BB31E36CC17
              32D1142ED0142CC94F5AB3ABACBDFDFCEDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FBF8E34B54B13652E3758FFF7D90FF7E91FF7D8FFF798BFF5A74FD1430DA4F5A
              B2FCFAE3FFFFFFFFFFFFFFFFFFFFFFED3F4BB66A88FA8195FF5C6EFD5E70FC5E
              71FC5E71FC5F72FC6173FE7B8DFF304EEE3F4BB6FFFFEDFFFFFFFFFFFF7D81BA
              6683F4798CFF5467FA5B6FFA5B6FFA5B6EFA5B6EFA5B6EFA5B6EFA586BFA7889
              FF2340E7888DBDFFFFFFFFFFEE3047D090A8FF4C5FF7566BF8566BF8566BF856
              6BF8566BF8566BF8566BF8566BF85166F7768AFF0922C5FFFFEEABAED1758EF4
              5F75F94F65F5475EF4455CF4455CF4455CF4455CF4455CF4455CF4475EF45066
              F46176FC334DE6B3B6D48288CEA2C0FF3F54F13F56F394A2F79BA8F89AA6F89A
              A6F89AA6F89AA6F89BA8F894A2F73F56F3495FF35771F88E93D08589CEA9C6FF
              384DEE223FEEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF223F
              EE4158F05D77F99096D08187CEB0CCFF3148EB344DED8D9CF596A3F594A1F594
              A1F594A1F594A1F596A3F58D9CF5344DED3B53ED657FFA8D92D0B7B9E089A5F5
              4C65F13953EC324CEB304AEB304AEB304AEB304AEB304AEB304AEB324CEB3A54
              EB4F65F44862EABEC2E1FFFFFE4359D298B3FF223CE63953EA3852EA3852EA38
              52EA3852EA3852EA3852EA3852EA2843E67E95FF1D34CAFFFFFFFFFFFF9195D4
              97B4F9637DF21F39E3334DE7334DE7334DE7334DE7334DE7334DE7233EE36078
              F45571EE9CA0D6FFFFFFFFFFFFFFFFFF4F5CC9AFCCFF758FF7132FDF223DE225
              40E42541E4223EE21733E06F88F97490FA505DC9FFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFF5F69CB6F87E8B7D3FF7A96F86682F36681F27691F99DB7FF4B65E3646E
              CBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD6D8EE8089D85B6FDA5F
              74DC5C70DC5366D78088D7DBDBEFFFFFFFFFFFFFFFFFFFFFFFFF}
            TabOrder = 8
            OnClick = btnRemoveClick
          end
        end
        object edtParcelas: TEdit
          Left = 244
          Top = 254
          Width = 111
          Height = 21
          TabOrder = 7
        end
        object btnCalculaParcelas: TBitBtn
          Left = 362
          Top = 254
          Width = 34
          Height = 25
          Hint = 'Calcula Parcelas'
          Glyph.Data = {
            36030000424D3603000000000000360000002800000010000000100000000100
            18000000000000030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFF7F5F3C8BCAEBEBAB7BDAE9EF3F0EEFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFBFBBCB5AED5C6B3CFBF
            AACCB8A0BBB3ABF9FAFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC6BEB6F0
            EEEDFFFFFFEAE3DBE2D5C5F6F4F2FFFFFFF1ECE5D8C8B4E1D7CBFFFFFFFFFFFF
            FFFFFFD9D2CBC6BFB6C2BBB4E3D5C3CABFB2BCB5ACC4B9ABDDD4C6B9B1A8C5C8
            CBB5AEA6E0D6C9FAF8F7FFFFFFFFFFFFEBECEEE9E5E0CCBAA4D2C1AFD5C8B8D4
            C5B2C7B39CCDBBA5E4D8C9FAF5EEC1B6A8FEFCF9F2EDE7F8F7F5FFFFFFE8E3DD
            D5CEC4B9A38AFFFFFFFEFEFDEBE3DAEFE9DFECE4D8CBBAA5CEBCA7CEBFACF8F3
            ECF7F4F1F4F0ECFFFFFFFFFFFFF9F6F3D5C6B3F7F4EFF9F6F3F6F4F1FFFFFFFC
            FBFAEBE4DBEBE3D7CFBFABE5DBCFF8F6F3FFFFFFFFFFFFFFFFFFFFFFFFBFBAB3
            D6C6B3FDFBF8E4DFD9FFFFFFFFFFFFFFFFFFEEEDEBECE4D9E2D6C7BBB1A5F7F7
            F7FFFFFFFFFFFFFFFFFFF6F3F1E9DFD0E1D6C9E3D8C9D4D1CDFFFFFFFFFFFFFF
            FFFFEEF0F3D8CDBFE0D5C7E6DBCCE9E1D9FFFFFFFFFFFFFFFFFFFFFFFFEEE9E3
            DFD3C4FAF4ECA29A92FFFFFFFFFFFFFFFFFFA29E9BF8F3EDEDE6DEE8E1D8FDFC
            FBFFFFFFFFFFFFFFFFFFFFFFFFE1DDD8E5DBCDEFE9DFE7DDCF8880779D9E9F87
            817BD1C7BCFFFFFFEFE9E1DED9D3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6F2EE
            E4DACCECE5DDF1ECE3F7F0E5DBCCBAF8F2EAFFFEFCF4EFEAF6F3EFF1EBE4FFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE6DED3F1EBE3F8F5F2F6F3EEFA
            F9F6F8F5F1EEE9E3FEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFF6F2EEEDE7DDF4F1EDEDE5DBF1EBE5F7F4F0F2EDE7FFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7F4F1FD
            FCFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
          ParentShowHint = False
          ShowHint = True
          TabOrder = 8
          OnClick = btnCalculaParcelasClick
        end
        object dbgrdParcelas: TDBGrid
          Left = 244
          Top = 281
          Width = 205
          Height = 80
          DataSource = dsParcelas
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
          TabOrder = 9
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          Columns = <
            item
              Expanded = False
              FieldName = 'data_vencimento'
              Title.Caption = 'Dt. Vencto'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'valor_parcela'
              Width = 69
              Visible = True
            end>
        end
        object btnLimpar: TBitBtn
          Left = 397
          Top = 254
          Width = 52
          Height = 25
          Caption = 'Limpar'
          TabOrder = 10
          OnClick = btnLimparClick
        end
        object lstbxLojas: TListBox
          Left = 531
          Top = 281
          Width = 175
          Height = 72
          ItemHeight = 13
          TabOrder = 11
        end
        object cmbLojas: TComboBox
          Left = 529
          Top = 256
          Width = 176
          Height = 21
          Style = csDropDownList
          TabOrder = 12
        end
        object btnAddLoja: TBitBtn
          Left = 712
          Top = 256
          Width = 34
          Height = 25
          Glyph.Data = {
            36030000424D3603000000000000360000002800000010000000100000000100
            18000000000000030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFF4F9EFDDE4ECD8E0ECD8E0EFDDE4FFF4F9FFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3FAA3B6AA329064008A4700
            8D49008D49008A47329064A3B6AAFFF3FAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFECF62F8D5F009A5B34CDA539DDB23AE1B33AE1B239DDB234CDA5009A5A2F8D
            5FFFECF6FFFFFFFFFFFFFFFFFFFFF5FE1A8B550DB5833EE0B600D79700D49600
            D29100D29100D49600D7973EE0B50DB5831A8B55FFF5FEFFFFFFFFFFFF75A78C
            00A97233DFB200D29400D29900D09174E4C374E4C300D09100D29900D29533DF
            B200A97275A78CFFFFFFFFF6FE00864145DDB800D19400D19900D19900C885FF
            FFFFFFFFFF00C88500D19900D19900D19445DDB6008641FFF6FEA7C6B605AA75
            19D8A700CF9800CD9300CC9200C37DFFFFFFFFFFFF00C37D00CC9200CD9300CF
            9819D8A606AB74A7C6B678B7962EC69C00D09800CB9172E2C281E4C66FDFBBFF
            FFFFFFFFFF6FDFBB81E4C672E2C200CB9100D0982BC49979B7977CB79738D0A8
            00CC9500C385FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00C3
            8500CE982CC4997DB89A75B49250DDB900C99400C89172E0C281E2C66FDDBBFF
            FFFFFFFFFF6FDDBB81E2C672E0C200C89100CC982BC49879B897B1D2BF38C69B
            18D3A700C99700C79300C69200BB7DFFFFFFFFFFFF00BB7D00C69200C79300C9
            9819D3A604AA73B6D5C4FFFFFF07985C64F5D700BF8D00C89900C89900BD85FF
            FFFFFFFFFF00BD8500C89900C89900C69445DBB800853FFFFFFFFFFFFF81BB9C
            6FE1C12FE0B800BF8D00C79900C39174DEC374DEC300C39100C79900C49433D8
            B200A76D90C3A8FFFFFFFFFFFFFFFFFF319B66A9FFF043E8C300BA8900C09300
            BF8F00BF8F00C29500C2963ED9B708B27E2B9C68FFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFF41A2706ED5B49FFFF64DECCA43E2C042E1BF45E1C140D6B00094524AA8
            7AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCDE3D568B7913AAD7D33
            AC7B20A671109D6363B68FDCEBE1FFFFFFFFFFFFFFFFFFFFFFFF}
          TabOrder = 13
          OnClick = btnAddLojaClick
        end
        object btnRemoveLoja: TBitBtn
          Left = 712
          Top = 280
          Width = 33
          Height = 25
          Glyph.Data = {
            36030000424D3603000000000000360000002800000010000000100000000100
            18000000000000030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFCFAF0E9E6D6E5E2D1E6E3D1EAE7D6FCFBF0FFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFBEDA6A7BC515BB31E36CC17
            32D1142ED0142CC94F5AB3ABACBDFDFCEDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FBF8E34B54B13652E3758FFF7D90FF7E91FF7D8FFF798BFF5A74FD1430DA4F5A
            B2FCFAE3FFFFFFFFFFFFFFFFFFFFFFED3F4BB66A88FA8195FF5C6EFD5E70FC5E
            71FC5E71FC5F72FC6173FE7B8DFF304EEE3F4BB6FFFFEDFFFFFFFFFFFF7D81BA
            6683F4798CFF5467FA5B6FFA5B6FFA5B6EFA5B6EFA5B6EFA5B6EFA586BFA7889
            FF2340E7888DBDFFFFFFFFFFEE3047D090A8FF4C5FF7566BF8566BF8566BF856
            6BF8566BF8566BF8566BF8566BF85166F7768AFF0922C5FFFFEEABAED1758EF4
            5F75F94F65F5475EF4455CF4455CF4455CF4455CF4455CF4455CF4475EF45066
            F46176FC334DE6B3B6D48288CEA2C0FF3F54F13F56F394A2F79BA8F89AA6F89A
            A6F89AA6F89AA6F89BA8F894A2F73F56F3495FF35771F88E93D08589CEA9C6FF
            384DEE223FEEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF223F
            EE4158F05D77F99096D08187CEB0CCFF3148EB344DED8D9CF596A3F594A1F594
            A1F594A1F594A1F596A3F58D9CF5344DED3B53ED657FFA8D92D0B7B9E089A5F5
            4C65F13953EC324CEB304AEB304AEB304AEB304AEB304AEB304AEB324CEB3A54
            EB4F65F44862EABEC2E1FFFFFE4359D298B3FF223CE63953EA3852EA3852EA38
            52EA3852EA3852EA3852EA3852EA2843E67E95FF1D34CAFFFFFFFFFFFF9195D4
            97B4F9637DF21F39E3334DE7334DE7334DE7334DE7334DE7334DE7233EE36078
            F45571EE9CA0D6FFFFFFFFFFFFFFFFFF4F5CC9AFCCFF758FF7132FDF223DE225
            40E42541E4223EE21733E06F88F97490FA505DC9FFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFF5F69CB6F87E8B7D3FF7A96F86682F36681F27691F99DB7FF4B65E3646E
            CBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD6D8EE8089D85B6FDA5F
            74DC5C70DC5366D78088D7DBDBEFFFFFFFFFFFFFFFFFFFFFFFFF}
          TabOrder = 14
          OnClick = btnRemoveLojaClick
        end
        object btnAddTodas: TBitBtn
          Left = 712
          Top = 310
          Width = 42
          Height = 25
          Caption = 'Todas'
          TabOrder = 15
          OnClick = btnAddTodasClick
        end
        object grpValores: TGroupBox
          Left = 9
          Top = 250
          Width = 178
          Height = 112
          Caption = '  Valores do Pedido  '
          TabOrder = 16
          object Label11: TLabel
            Left = 19
            Top = 12
            Width = 89
            Height = 13
            Caption = 'Desconto 1 (%)'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label13: TLabel
            Left = 19
            Top = 50
            Width = 89
            Height = 13
            Caption = 'Desconto 2 (%)'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label14: TLabel
            Left = 5
            Top = 91
            Width = 100
            Height = 13
            Caption = 'VALOR TOTAL:  R$'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object lblValorTotal: TLabel
            Left = 143
            Top = 90
            Width = 28
            Height = 16
            Alignment = taRightJustify
            Caption = '0,00'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clRed
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object edtDesconto1: TEdit
            Left = 19
            Top = 28
            Width = 77
            Height = 21
            Alignment = taRightJustify
            CharCase = ecUpperCase
            MaxLength = 5
            TabOrder = 0
            Text = '0'
            OnExit = edtDesconto1Exit
            OnKeyPress = edtDesconto1KeyPress
          end
          object edtDesconto2: TEdit
            Left = 19
            Top = 66
            Width = 77
            Height = 21
            Alignment = taRightJustify
            CharCase = ecUpperCase
            MaxLength = 5
            TabOrder = 1
            Text = '0'
            OnExit = edtDesconto1Exit
          end
          object btnCalculaDesconto: TBitBtn
            Left = 127
            Top = 59
            Width = 34
            Height = 25
            Hint = 'Calcula Desconto'
            Glyph.Data = {
              36030000424D3603000000000000360000002800000010000000100000000100
              18000000000000030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFF7F5F3C8BCAEBEBAB7BDAE9EF3F0EEFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFBFBBCB5AED5C6B3CFBF
              AACCB8A0BBB3ABF9FAFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC6BEB6F0
              EEEDFFFFFFEAE3DBE2D5C5F6F4F2FFFFFFF1ECE5D8C8B4E1D7CBFFFFFFFFFFFF
              FFFFFFD9D2CBC6BFB6C2BBB4E3D5C3CABFB2BCB5ACC4B9ABDDD4C6B9B1A8C5C8
              CBB5AEA6E0D6C9FAF8F7FFFFFFFFFFFFEBECEEE9E5E0CCBAA4D2C1AFD5C8B8D4
              C5B2C7B39CCDBBA5E4D8C9FAF5EEC1B6A8FEFCF9F2EDE7F8F7F5FFFFFFE8E3DD
              D5CEC4B9A38AFFFFFFFEFEFDEBE3DAEFE9DFECE4D8CBBAA5CEBCA7CEBFACF8F3
              ECF7F4F1F4F0ECFFFFFFFFFFFFF9F6F3D5C6B3F7F4EFF9F6F3F6F4F1FFFFFFFC
              FBFAEBE4DBEBE3D7CFBFABE5DBCFF8F6F3FFFFFFFFFFFFFFFFFFFFFFFFBFBAB3
              D6C6B3FDFBF8E4DFD9FFFFFFFFFFFFFFFFFFEEEDEBECE4D9E2D6C7BBB1A5F7F7
              F7FFFFFFFFFFFFFFFFFFF6F3F1E9DFD0E1D6C9E3D8C9D4D1CDFFFFFFFFFFFFFF
              FFFFEEF0F3D8CDBFE0D5C7E6DBCCE9E1D9FFFFFFFFFFFFFFFFFFFFFFFFEEE9E3
              DFD3C4FAF4ECA29A92FFFFFFFFFFFFFFFFFFA29E9BF8F3EDEDE6DEE8E1D8FDFC
              FBFFFFFFFFFFFFFFFFFFFFFFFFE1DDD8E5DBCDEFE9DFE7DDCF8880779D9E9F87
              817BD1C7BCFFFFFFEFE9E1DED9D3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6F2EE
              E4DACCECE5DDF1ECE3F7F0E5DBCCBAF8F2EAFFFEFCF4EFEAF6F3EFF1EBE4FFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE6DED3F1EBE3F8F5F2F6F3EEFA
              F9F6F8F5F1EEE9E3FEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFF6F2EEEDE7DDF4F1EDEDE5DBF1EBE5F7F4F0F2EDE7FFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7F4F1FD
              FCFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
            ParentShowHint = False
            ShowHint = True
            TabOrder = 2
            OnClick = btnCalculaDescontoClick
          end
        end
        object dtpDataPrevFaturamento: TDateTimePicker
          Left = 602
          Top = 14
          Width = 111
          Height = 21
          Date = 42258.946674247690000000
          Time = 42258.946674247690000000
          TabOrder = 4
          OnKeyPress = edtReferenciaKeyPress
        end
        object cmbLojaPedido: TComboBox
          Left = 46
          Top = 42
          Width = 194
          Height = 21
          Style = csDropDownList
          TabOrder = 5
          OnSelect = cmbLojaPedidoSelect
        end
        object memoObs: TMemo
          Left = 11
          Top = 381
          Width = 262
          Height = 42
          TabOrder = 17
        end
        object grpRepresentante: TGroupBox
          Left = 281
          Top = 369
          Width = 472
          Height = 56
          Caption = '  Representante  '
          TabOrder = 18
          object Label17: TLabel
            Left = 283
            Top = 16
            Width = 32
            Height = 13
            Caption = 'E-mail:'
          end
          object Label18: TLabel
            Left = 193
            Top = 16
            Width = 46
            Height = 13
            Caption = 'Telefone:'
          end
          object Label19: TLabel
            Left = 7
            Top = 16
            Width = 31
            Height = 13
            Caption = 'Nome:'
          end
          object edtEmailRepresentante: TEdit
            Left = 283
            Top = 29
            Width = 183
            Height = 21
            CharCase = ecLowerCase
            MaxLength = 50
            TabOrder = 2
          end
          object edtFoneRepresentante: TMaskEdit
            Left = 193
            Top = 29
            Width = 86
            Height = 21
            EditMask = '!\(99\)9999-9999;0;_'
            MaxLength = 13
            TabOrder = 1
            Text = ''
          end
          object edtNomeRepresentante: TEdit
            Left = 6
            Top = 29
            Width = 184
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
    Top = 472
    Width = 1157
    Height = 39
    ExplicitTop = 471
    ExplicitWidth = 1157
    ExplicitHeight = 39
    inherited btnSair: TBitBtn
      Left = 923
      Top = 2
      Width = 76
      Height = 35
      ExplicitLeft = 923
      ExplicitTop = 2
      ExplicitWidth = 76
      ExplicitHeight = 35
    end
  end
  inherited stbResumo: TStatusBar
    Top = 511
    Width = 1157
    Visible = False
    ExplicitTop = 490
    ExplicitWidth = 1014
  end
  inherited dsConsulta: TDataSource
    DataSet = DtmDadosPedido.cdsPesquisa
    Left = 660
    Top = 151
  end
  object cdsProduto: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 782
    Top = 242
    object cdsProdutoreferencia: TStringField
      DisplayLabel = 'Refer'#234'ncia'
      FieldName = 'referencia'
    end
    object cdsProdutodescricao: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'descricao'
      Size = 100
    end
    object cdsProdutovalor_unitario: TFloatField
      DisplayLabel = 'Valor Unit'#225'rio'
      FieldName = 'valor_unitario'
      DisplayFormat = '###,###,##0.00'
    end
    object cdsProdutovalor_pdu: TFloatField
      DisplayLabel = 'Valor PDV'
      FieldName = 'valor_pdu'
      DisplayFormat = '###,###,##0.00'
    end
    object cdsProdutoquantidade: TIntegerField
      DisplayLabel = 'Qtd.'
      FieldName = 'quantidade'
    end
    object cdsProdutovalor_total: TFloatField
      DisplayLabel = 'Valor Total'
      FieldName = 'valor_total'
      DisplayFormat = '###,###,##0.00'
    end
    object cdsProdutocheck_nao_vai: TBooleanField
      FieldName = 'check_nao_vai'
    end
  end
  object dsProduto: TDataSource
    DataSet = cdsProduto
    Left = 702
    Top = 242
  end
  object dsParcelas: TDataSource
    DataSet = cdsParcelas
    Left = 830
    Top = 242
  end
  object cdsParcelas: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspPesquisa'
    Left = 854
    Top = 242
    object cdsParcelasdata_vencimento: TDateField
      DisplayLabel = 'Data Vencimento'
      FieldName = 'data_vencimento'
    end
    object cdsParcelasvalor_parcela: TFloatField
      DisplayLabel = 'Valor'
      FieldName = 'valor_parcela'
      DisplayFormat = '###,##0.00'
    end
  end
  object dsProdutoConsulta: TDataSource
    DataSet = DtmDadosPedido.cdsProduto
    OnDataChange = dsProdutoConsultaDataChange
    Left = 660
    Top = 359
  end
end
