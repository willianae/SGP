object FrmRelPadrao: TFrmRelPadrao
  Left = 0
  Top = 0
  BorderStyle = bsSingle
  Caption = 'FrmRelPadrao'
  ClientHeight = 532
  ClientWidth = 1115
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object RLReport1: TRLReport
    Left = 192
    Top = -24
    Width = 794
    Height = 1123
    DataSource = ds1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    object RLBand1: TRLBand
      Left = 38
      Top = 38
      Width = 718
      Height = 143
      BandType = btHeader
      object RLImageLogoEmpresa: TRLImage
        Left = 16
        Top = 24
        Width = 97
        Height = 89
        Stretch = True
      end
      object RLLblNomeEmpresa: TRLLabel
        Left = 117
        Top = 19
        Width = 195
        Height = 22
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -19
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLSystemInfo1: TRLSystemInfo
        Left = 655
        Top = 97
        Width = 60
        Height = 16
        Alignment = taRightJustify
        Info = itFullDate
        Text = ''
      end
      object RLLblTelefoneFixo: TRLLabel
        Left = 116
        Top = 79
        Width = 110
        Height = 16
      end
      object RLLblTelefoneCelular: TRLLabel
        Left = 116
        Top = 96
        Width = 125
        Height = 16
      end
      object RLLbelBairroCidadeUf: TRLLabel
        Left = 116
        Top = 61
        Width = 130
        Height = 16
      end
      object RLLblEndereco: TRLLabel
        Left = 116
        Top = 40
        Width = 92
        Height = 16
      end
    end
    object RLBand2: TRLBand
      Left = 38
      Top = 181
      Width = 718
      Height = 24
      BandType = btTitle
    end
    object RLBand3: TRLBand
      Left = 38
      Top = 237
      Width = 718
      Height = 24
      BandType = btFooter
    end
    object RLBand4: TRLBand
      Left = 38
      Top = 221
      Width = 718
      Height = 16
      BandType = btSummary
    end
    object RLBand5: TRLBand
      Left = 38
      Top = 205
      Width = 718
      Height = 16
    end
  end
  object RLPDFFilter1: TRLPDFFilter
    DocumentInfo.Creator = 'FortesReport v4.0 \251 Copyright '#169' 1999-2014 Fortes Inform'#225'tica'
    DisplayName = 'Documento PDF'
    Left = 120
    Top = 40
  end
  object ds1: TDataSource
    Left = 120
    Top = 88
  end
end
