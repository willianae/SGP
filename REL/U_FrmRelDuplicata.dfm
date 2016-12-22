inherited FrmRelDuplicata: TFrmRelDuplicata
  Caption = 'FrmRelDuplicata'
  ExplicitWidth = 1121
  ExplicitHeight = 561
  PixelsPerInch = 96
  TextHeight = 13
  inherited RLReport1: TRLReport
    Top = -16
    DataSource = DtmDadosDuplicatas.dsPesquisa
    ExplicitTop = -16
    inherited RLBand2: TRLBand
      Height = 20
      Borders.Sides = sdCustom
      Borders.DrawLeft = True
      Borders.DrawTop = True
      Borders.DrawRight = True
      Borders.DrawBottom = True
      Borders.FixedBottom = True
      Color = clInfoBk
      ParentColor = False
      Transparent = False
      ExplicitHeight = 20
      object RLLabel1: TRLLabel
        Left = 3
        Top = 1
        Width = 88
        Height = 16
        Caption = 'Raz'#227'o Social'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
      end
      object RLLabel2: TRLLabel
        Left = 299
        Top = 1
        Width = 38
        Height = 16
        Caption = 'Valor'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
      end
      object RLLabel3: TRLLabel
        Left = 547
        Top = 1
        Width = 32
        Height = 16
        Caption = 'Loja'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
      end
    end
    inherited RLBand3: TRLBand
      Top = 240
      ExplicitTop = 240
    end
    inherited RLBand4: TRLBand
      Top = 220
      Height = 20
      Borders.Sides = sdCustom
      Borders.DrawLeft = True
      Borders.DrawRight = True
      Borders.DrawBottom = True
      Borders.FixedBottom = True
      ExplicitTop = 220
      ExplicitHeight = 20
      object RLDBResult1: TRLDBResult
        Left = 204
        Top = 2
        Width = 133
        Height = 16
        Alignment = taRightJustify
        DataField = 'valor_parcela'
        DataSource = DtmDadosDuplicatas.dsPesquisa
        Info = riSum
        Text = 'Total (R$):'
      end
    end
    inherited RLBand5: TRLBand
      Top = 201
      Height = 19
      Borders.Sides = sdCustom
      Borders.DrawLeft = True
      Borders.DrawRight = True
      Borders.DrawBottom = True
      Borders.FixedBottom = True
      ExplicitTop = 201
      ExplicitHeight = 19
      object RLDBText1: TRLDBText
        Left = 3
        Top = 0
        Width = 81
        Height = 16
        DataField = 'razao_social'
        DataSource = DtmDadosDuplicatas.dsPesquisa
        Text = ''
      end
      object RLDBText2: TRLDBText
        Left = 299
        Top = 0
        Width = 34
        Height = 16
        Alignment = taRightJustify
        DataField = 'valor_parcela'
        DataSource = DtmDadosDuplicatas.dsPesquisa
        Text = ''
      end
      object RLDBText3: TRLDBText
        Left = 551
        Top = 0
        Width = 24
        Height = 16
        DataField = 'loja'
        DataSource = DtmDadosDuplicatas.dsPesquisa
        Text = ''
      end
    end
  end
end
