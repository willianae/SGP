inherited FrmRelatorioPedido: TFrmRelatorioPedido
  Caption = 'FrmRelatorioPedido'
  ClientWidth = 1166
  ExplicitLeft = -28
  ExplicitTop = -139
  ExplicitWidth = 1172
  ExplicitHeight = 560
  PixelsPerInch = 96
  TextHeight = 13
  inherited RLReport1: TRLReport
    Left = -16
    Top = 70
    Width = 1123
    Height = 794
    PageSetup.Orientation = poLandscape
    BeforePrint = RLReport1BeforePrint
    ExplicitLeft = -16
    ExplicitTop = 70
    ExplicitWidth = 1123
    ExplicitHeight = 794
    inherited RLBand1: TRLBand
      Width = 1047
      ExplicitWidth = 1047
      inherited RLSystemInfo1: TRLSystemInfo
        Left = 980
        Top = 112
        Width = 65
        Font.Style = [fsBold]
        ParentFont = False
        ExplicitLeft = 980
        ExplicitTop = 112
        ExplicitWidth = 65
      end
      inherited RLLblTelefoneCelular: TRLLabel
        Top = 98
        ExplicitTop = 98
      end
      object RLLabel14: TRLLabel [5]
        Left = 426
        Top = 3
        Width = 162
        Height = 16
        Caption = 'Relat'#243'rios sobre Pedidos'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLSystemInfo3: TRLSystemInfo [6]
        Left = 863
        Top = 3
        Width = 136
        Height = 16
        Alignment = taRightJustify
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Info = itPageNumber
        ParentFont = False
        Text = 'P'#225'g:   '
      end
      object RLSystemInfo4: TRLSystemInfo [7]
        Left = 997
        Top = 3
        Width = 141
        Height = 16
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Info = itLastPageNumber
        ParentFont = False
        Text = 'de '
      end
    end
    inherited RLBand2: TRLBand
      Width = 1047
      BandType = btHeader
      ExplicitWidth = 1047
      object RlblPeriodo: TRLLabel
        Left = 106
        Top = 3
        Width = 169
        Height = 16
        Caption = 'De 11/02/2015 '#224' 11/03/2015'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel10: TRLLabel
        Left = 6
        Top = 3
        Width = 97
        Height = 16
        Caption = 'Data do Pedido:'
      end
      object RLLabel23: TRLLabel
        Left = 283
        Top = 3
        Width = 162
        Height = 16
        Caption = 'Data Previsto Faturamento:'
      end
      object RlblPrevFaturamento: TRLLabel
        Left = 444
        Top = 3
        Width = 169
        Height = 16
        Caption = 'De 11/02/2015 '#224' 11/03/2015'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
    inherited RLBand3: TRLBand
      Top = 312
      Width = 1047
      Height = 27
      BandType = btSummary
      Borders.Sides = sdCustom
      Borders.DrawLeft = True
      Borders.DrawTop = True
      Borders.DrawRight = True
      Color = clMoneyGreen
      ParentColor = False
      Transparent = False
      ExplicitTop = 312
      ExplicitWidth = 1047
      ExplicitHeight = 27
      object RLLabel20: TRLLabel
        Left = 464
        Top = 4
        Width = 68
        Height = 19
        Alignment = taRightJustify
        Caption = 'Resumo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
      end
      object RLLabel21: TRLLabel
        Left = 693
        Top = 9
        Width = 30
        Height = 16
        Caption = 'Qtd.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
      end
      object RLLabel22: TRLLabel
        Left = 880
        Top = 9
        Width = 64
        Height = 16
        Caption = 'Total (R$)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
      end
    end
    inherited RLBand4: TRLBand
      Top = 339
      Width = 1047
      Height = 96
      Borders.Sides = sdCustom
      Borders.DrawLeft = True
      Borders.DrawTop = True
      Borders.DrawRight = True
      Borders.DrawBottom = True
      BeforePrint = RLBand4BeforePrint
      ExplicitTop = 339
      ExplicitWidth = 1047
      ExplicitHeight = 96
      object RLLabel11: TRLLabel
        Left = 5
        Top = 0
        Width = 105
        Height = 16
        Caption = 'Total a receber:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Holder = RLLabel1
        ParentFont = False
      end
      object RLLabel12: TRLLabel
        Left = 5
        Top = 32
        Width = 104
        Height = 16
        Caption = 'Total Recebido:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Holder = RLLabel1
        ParentFont = False
      end
      object RLLabel13: TRLLabel
        Left = 5
        Top = 69
        Width = 36
        Height = 16
        Caption = 'Total'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Holder = RLLabel1
        ParentFont = False
      end
      object RLLblValorTotalReceber: TRLLabel
        Left = 836
        Top = 4
        Width = 105
        Height = 16
        Alignment = taRightJustify
        Caption = 'Total a receber:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLblValorTotalRecebido: TRLLabel
        Left = 837
        Top = 32
        Width = 104
        Height = 16
        Alignment = taRightJustify
        Caption = 'Total Recebido:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLblQtdTotalReceber: TRLLabel
        Left = 620
        Top = 1
        Width = 105
        Height = 16
        Alignment = taRightJustify
        Caption = 'Total a receber:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLblQtdTotalRecebido: TRLLabel
        Left = 621
        Top = 32
        Width = 104
        Height = 16
        Alignment = taRightJustify
        Caption = 'Total Recebido:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLblQtdTotal: TRLLabel
        Left = 621
        Top = 71
        Width = 104
        Height = 16
        Alignment = taRightJustify
        Caption = 'Total Recebido:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLblValorTotal: TRLLabel
        Left = 837
        Top = 71
        Width = 104
        Height = 16
        Alignment = taRightJustify
        Caption = 'Total Recebido:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
    inherited RLBand5: TRLBand
      Width = 1047
      Height = 58
      Borders.Sides = sdCustom
      Borders.DrawLeft = True
      Borders.DrawTop = True
      Borders.DrawRight = True
      Borders.DrawBottom = True
      ExplicitWidth = 1047
      ExplicitHeight = 58
      object RLLabel1: TRLLabel
        Left = 5
        Top = 6
        Width = 63
        Height = 16
        Caption = 'Empresa:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel2: TRLLabel
        Left = 5
        Top = 23
        Width = 81
        Height = 16
        Caption = 'Fornecedor:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Holder = RLLabel1
        ParentFont = False
      end
      object RLLabel4: TRLLabel
        Left = 409
        Top = 6
        Width = 58
        Height = 16
        Caption = 'N'#250'mero:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel5: TRLLabel
        Left = 409
        Top = 23
        Width = 37
        Height = 16
        Caption = 'Data:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel6: TRLLabel
        Left = 5
        Top = 40
        Width = 126
        Height = 16
        Caption = 'Forma Pagamento:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Holder = RLLabel1
        ParentFont = False
      end
      object RLDBText6: TRLDBText
        Left = 70
        Top = 6
        Width = 69
        Height = 16
        DataField = 'EMPRESA'
        DataSource = DtmDadosRelatorioPedido.dsPesquisa
        Text = ''
      end
      object RLDBText7: TRLDBText
        Left = 87
        Top = 23
        Width = 95
        Height = 16
        DataField = 'FORNECEDOR'
        DataSource = DtmDadosRelatorioPedido.dsPesquisa
        Text = ''
      end
      object RLDBText8: TRLDBText
        Left = 466
        Top = 6
        Width = 55
        Height = 16
        DataField = 'CODIGO'
        DataSource = DtmDadosRelatorioPedido.dsPesquisa
        Text = ''
      end
      object RLDBText9: TRLDBText
        Left = 449
        Top = 23
        Width = 94
        Height = 16
        DataField = 'DATA_PEDIDO'
        DataSource = DtmDadosRelatorioPedido.dsPesquisa
        Text = ''
      end
      object RLDBText10: TRLDBText
        Left = 131
        Top = 40
        Width = 102
        Height = 16
        DataField = 'PARCELAS_TXT'
        DataSource = DtmDadosRelatorioPedido.dsPesquisa
        Text = ''
      end
      object RLDBText3: TRLDBText
        Left = 910
        Top = 6
        Width = 134
        Height = 16
        Alignment = taRightJustify
        DataField = 'VALOR_DESCONTO1'
        DataSource = DtmDadosRelatorioPedido.dsPesquisa
        Text = ''
      end
      object RLDBText4: TRLDBText
        Left = 909
        Top = 22
        Width = 134
        Height = 16
        Alignment = taRightJustify
        DataField = 'VALOR_DESCONTO2'
        DataSource = DtmDadosRelatorioPedido.dsPesquisa
        Text = ''
      end
      object RLLabel19: TRLLabel
        Left = 409
        Top = 40
        Width = 175
        Height = 16
        Alignment = taRightJustify
        Caption = 'Data Prev. de faturamento:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLDBText5: TRLDBText
        Left = 582
        Top = 40
        Width = 185
        Height = 16
        DataField = 'DATA_PREV_FATURAMENTO'
        DataSource = DtmDadosRelatorioPedido.dsPesquisa
        Text = ''
      end
      object RLDBText12: TRLDBText
        Left = 970
        Top = 37
        Width = 74
        Height = 16
        Alignment = taRightJustify
        DataField = 'VALOR_PEDIDO'
        DataSource = DtmDadosRelatorioPedido.dsPesquisa
        Text = ''
      end
      object RLLabel24: TRLLabel
        Left = 819
        Top = 37
        Width = 112
        Height = 16
        Caption = 'Total pedido(R$):'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel18: TRLLabel
        Left = 819
        Top = 22
        Width = 84
        Height = 16
        Caption = 'Desconto 02:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel17: TRLLabel
        Left = 819
        Top = 6
        Width = 84
        Height = 16
        Caption = 'Desconto 01:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
    object RLSubDetailProduto: TRLSubDetail
      Left = 38
      Top = 263
      Width = 1047
      Height = 49
      Borders.Sides = sdCustom
      Borders.DrawLeft = True
      Borders.DrawTop = False
      Borders.DrawRight = True
      Borders.DrawBottom = False
      DataSource = DtmDadosRelatorioPedido.dsProduto
      PageBreaking = pbAfterPrint
      object RLBand6: TRLBand
        Left = 1
        Top = 15
        Width = 1045
        Height = 17
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = False
        Borders.DrawBottom = True
        BeforePrint = RLBand6BeforePrint
        object RLDBText13: TRLDBText
          Left = 4
          Top = 0
          Width = 65
          Height = 14
          DataField = 'REFERENCIA'
          DataSource = DtmDadosRelatorioPedido.dsProduto
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Holder = RLLabel1
          ParentFont = False
          Text = ''
        end
        object RLDBText14: TRLDBText
          Left = 507
          Top = 0
          Width = 69
          Height = 14
          Alignment = taRightJustify
          DataField = 'QUANTIDADE'
          DataSource = DtmDadosRelatorioPedido.dsProduto
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Holder = RLLabel7
          ParentFont = False
          Text = ''
        end
        object RLDBText16: TRLDBText
          Left = 701
          Top = 0
          Width = 80
          Height = 14
          Alignment = taRightJustify
          DataField = 'VALOR_TOTAL'
          DataSource = DtmDadosRelatorioPedido.dsProduto
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Holder = RLLabel9
          ParentFont = False
          Text = ''
        end
        object RLDBText17: TRLDBText
          Left = 781
          Top = 0
          Width = 80
          Height = 14
          Alignment = taCenter
          DataField = 'FLG_RECEBIDO'
          DataSource = DtmDadosRelatorioPedido.dsProduto
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Holder = RLLabel15
          ParentFont = False
          Text = ''
        end
        object RLDBText1: TRLDBText
          Left = 585
          Top = 1
          Width = 93
          Height = 14
          Alignment = taRightJustify
          DataField = 'VALOR_UNITARIO'
          DataSource = DtmDadosRelatorioPedido.dsProduto
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Holder = RLLabel8
          ParentFont = False
          Text = ''
        end
        object RLDBText2: TRLDBText
          Left = 145
          Top = 2
          Width = 62
          Height = 14
          DataField = 'DESCRICAO'
          DataSource = DtmDadosRelatorioPedido.dsProduto
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Holder = RLLabel16
          ParentFont = False
          SecondHoldStyle = hsVertically
          Text = ''
        end
        object RLDBText11: TRLDBText
          Left = 958
          Top = 2
          Width = 104
          Height = 14
          Alignment = taCenter
          DataField = 'DATA_EMISSAO_NF'
          DataSource = DtmDadosRelatorioPedido.dsProduto
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Holder = RLLabel25
          ParentFont = False
          Text = ''
        end
        object RLDBText15: TRLDBText
          Left = 864
          Top = 2
          Width = 74
          Height = 14
          DataField = 'NOTA_FISCAL'
          DataSource = DtmDadosRelatorioPedido.dsProduto
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Holder = RLLabel26
          ParentFont = False
          Text = ''
        end
      end
      object RLBand7: TRLBand
        Left = 1
        Top = 0
        Width = 1045
        Height = 15
        BandType = btHeader
        Color = clInfoBk
        ParentColor = False
        Transparent = False
        object RLLabel3: TRLLabel
          Left = 4
          Top = 0
          Width = 73
          Height = 16
          Caption = 'Refer'#234'ncia'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Holder = RLLabel1
          ParentFont = False
          Transparent = False
        end
        object RLLabel7: TRLLabel
          Left = 546
          Top = 0
          Width = 30
          Height = 16
          Caption = 'Qtd.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = False
        end
        object RLLabel8: TRLLabel
          Left = 621
          Top = 0
          Width = 57
          Height = 16
          Caption = 'Unit.(R$)'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = False
        end
        object RLLabel9: TRLLabel
          Left = 684
          Top = 0
          Width = 97
          Height = 16
          Caption = 'Sub. Total.(R$)'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = False
        end
        object RLLabel15: TRLLabel
          Left = 789
          Top = -1
          Width = 64
          Height = 16
          Caption = 'Recebido'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = False
        end
        object RLLabel16: TRLLabel
          Left = 145
          Top = 0
          Width = 54
          Height = 16
          Caption = 'Produto'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = False
        end
        object RLLabel25: TRLLabel
          Left = 983
          Top = -1
          Width = 54
          Height = 16
          Caption = 'Data NF'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = False
        end
        object RLLabel26: TRLLabel
          Left = 864
          Top = -1
          Width = 74
          Height = 16
          Caption = 'Nota Fiscal'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = False
        end
      end
      object RLBand8: TRLBand
        Left = 1
        Top = 32
        Width = 1045
        Height = 16
        BandType = btSummary
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = False
        Borders.DrawBottom = True
        object RLDBResult1: TRLDBResult
          Left = 533
          Top = 0
          Width = 191
          Height = 16
          Alignment = taRightJustify
          DataField = 'QUANTIDADE'
          DataSource = DtmDadosRelatorioPedido.dsProduto
          Info = riSum
          Text = 'Qtd. Total: '
        end
        object RLSystemInfo2: TRLSystemInfo
          Left = 9
          Top = 1
          Width = 136
          Height = 16
          Info = itDetailCount
          Text = 'Qtd.Itens:'
        end
        object RLDBResult2: TRLDBResult
          Left = 781
          Top = -1
          Width = 166
          Height = 16
          Alignment = taRightJustify
          DataField = 'VALOR_TOTAL'
          DataSource = DtmDadosRelatorioPedido.dsProduto
          Info = riSum
          Text = 'Total:'
        end
      end
    end
  end
end
