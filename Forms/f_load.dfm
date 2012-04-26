object FLoad: TFLoad
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = #1047#1072#1075#1088#1091#1079#1082#1072
  ClientHeight = 153
  ClientWidth = 413
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object btn_Copy: TsSpeedButton
    Left = 368
    Top = 57
    Width = 37
    Height = 42
    Hint = #1050#1086#1087#1080#1088#1086#1074#1072#1090#1100
    ParentShowHint = False
    ShowHint = True
    OnClick = btn_CopyClick
    SkinData.SkinSection = 'SPEEDBUTTON'
    ImageIndex = 0
    Images = Images
  end
  object btn_Open: TsSpeedButton
    Left = 368
    Top = 105
    Width = 37
    Height = 42
    Hint = #1054#1090#1082#1088#1099#1090#1100' '#1074' '#1073#1088#1072#1091#1079#1077#1088#1077
    ParentShowHint = False
    ShowHint = True
    OnClick = btn_OpenClick
    SkinData.SkinSection = 'SPEEDBUTTON'
    ImageIndex = 1
    Images = Images
  end
  object lbl_link: TLabel
    Left = 8
    Top = 33
    Width = 127
    Height = 13
    Caption = #1057#1089#1099#1083#1082#1072' '#1085#1072' '#1080#1079#1086#1073#1088#1072#1078#1077#1085#1080#1077':'
  end
  object pb: TProgressBar
    Left = 8
    Top = 8
    Width = 397
    Height = 17
    TabOrder = 0
  end
  object mmo_Link: TMemo
    Left = 8
    Top = 57
    Width = 354
    Height = 90
    ReadOnly = True
    TabOrder = 1
  end
  object cbb_view: TComboBox
    Left = 152
    Top = 30
    Width = 253
    Height = 21
    Style = csDropDownList
    ItemIndex = 0
    TabOrder = 2
    Text = #1057#1089#1099#1083#1082#1072
    OnChange = cbb_viewChange
    Items.Strings = (
      #1057#1089#1099#1083#1082#1072
      '[IMG] '#1057#1089#1099#1083#1082#1072' [/IMG]'
      '[URL] '#1057#1089#1099#1083#1082#1072' [/URL]'
      '<img> '#1057#1089#1099#1083#1082#1072' </img>'
      '<a href=" '#1057#1089#1099#1083#1082#1072' "> '#1057#1089#1099#1083#1082#1072' </a>')
  end
  object Images: TsAlphaImageList
    DrawingStyle = dsTransparent
    Items = <
      item
        ImageFormat = ifPNG
        ImgData = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          610000001974455874536F6674776172650041646F626520496D616765526561
          647971C9653C0000022C4944415478DA8C534D68134114FE92DD6CBBC425229A
          528225CD4134095EEAA10569BD68A115F1A2F88742057FD1432D1E3D792A1644
          DB83874A452FDA96828810AA587352D05322D11E520BD676116C63129AA4BB1B
          DFCC26D95930E083C7BC99F7BE6FBEF776C733DE076E1E0F1AB6A4EE53BEFB63
          4729DC553BFA152E7E79D5B999A9D46BAA557B951D181E9177B160C75A46DEDF
          7F38D83D74B39DED3F3C7EB0FA233173070118B5DACFE497F9C50FFB1A049F8E
          9C1CEA4AA552085D98446BAB8240601B4FE47205944A15AC3CB988582C863733
          538CE00057605A8E843DD726F1F1E9332493090207A0691A7C3E1F0AC522FEE4
          7208F60E63EFE95348BC986A6064D37408585B67CE9DC552368B7F596724C26B
          448C4B814993B12C0B1DE1B00BE8A94DD8A45CD5EB8588F132B6BA5B44605091
          E8EC2CF36E16D3B78FF398B988910D51010309FA24BAEDEBC21C12A3576C25B4
          672D8818D930DD2DD4092449C2B7F773981FBD8A783C8E743A8DFBFD3B794EC4
          C886E126D8B26C7A89A6CFC0D16814BAAE23C2064879E6A9B5F5260A84164A95
          0A0E8D4C60E1DE750ECE0A5FC6A560AB490B6CDDDD3388DE5B16926337F8D9A5
          D73A5FEFC6158760B900845481C072266494CB08750FE2E030BD8FB7CF91A71F
          4A51948682954D2298FD091C6B03DA15FB339A020127E52403DC4B14CB349B32
          3DA955F297BAFD98540AB413DBC193AADF8F66A6529ED5FCCE137803413ACA73
          02F2E072118BE7B516FC8FAD57B1C830ACCBBF020C00345C0E1A8D63C0FB0000
          000049454E44AE426082}
      end
      item
        ImageFormat = ifPNG
        ImgData = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          610000001974455874536F6674776172650041646F626520496D616765526561
          647971C9653C0000034D4944415478DA8453CF6FDB64187EECCF761C278ED3D0
          3489DBB4594BA6B410A858A1024D082198340D6913177E48DCA671E3C485F30E
          483BA01D39EC80F60F20A4318909554863CAD43184D622D235FDA5A44DBB26AD
          63E7A7E31F7BBDD2F35EEB915FDBDFF37EEFFB3C9F39FEDB12C00470D1382048
          32E5E7C17117004C1334428BB009DFBF07D7F9138EDDF7DB06284710024EC3F7
          72F4F1BB8524F7CE958232313522A95101D2785AB1CB87B6F5D3B2F1F1D286BD
          4CEBBEA7D5DBA734C6BD7715E090539977F3DA5BEA879FCFABF973794D6998B6
          60F43C2E1161C2744A562ECEAAE9332AF4D25AA3680F9D87D4917152A0F86918
          CEF0C6D7E7331FE8093993D355842501CD561FAACCA0105C9F83CDF1D047C3EA
          84E2C797FEAE8EA3DFB907BBE7F07EA7F57E21EE2D1A0337BD75DC47DD7470F7
          AF3D940F3AB089E80821DC79B08DB55A07FB6DE06C2E999E89388B01CFB78E48
          834EEBD2C24C413FE8B8707B1EEACB35C8211A9EF168580D580FB7605A3D8C4C
          4CE2BFBD23EC1F5978BB90D62B959D4B34C16F82DF35CFBE92D623D5ED068EEC
          01C2E11058DFA1D93878031BD3E91466F3296C3CEBE3C9EA0E4CC785AEB248C0
          3B71C1EE8F94965785C8D42CBA460D0337D0942E8E8C715D7437F6B15D6D612C
          3B89ADDD432433E368B7DB2F782705484D16D19CCD5A5564A200D7E3C0FF6F11
          0706CBB6E978C460F6E979086472AF41EA3E734E5D10C0C475A3D95C1413BAC6
          F31C0446A0DD833C088FB117DD1C6C55909D7B13BDAE09CB300701EFA48028FF
          5ADF3BBC70467F55F3E9852CF0040E22A31D031D3C1F439ADBE33D8C6753D8DF
          ADA3633B626E7EF1B8D7B6A8C7B92BBBBDA17B4E8BC5F5646254899388238A84
          E0AEC9129A46175D12D5A381BA6D134472AE7E3127AD3C6DAB112DDE6198FFCC
          8118FAC730AD052D1AD52693092A2222161211A10355DED9C3575F16119A1A43
          249B4072668CAF7681378AA9CCCAA3CA14C3BF3F0387E5632FA63FA8DBE264D3
          ECC8515911C21269CA04BE76D0F097FE287B4F4A4F87EB8FD6CCCDC7950DAF90
          1FBB7FEBEE636738BC192845D3224118859AD2F0FAE522F21FBD0B399605C7C7
          E8E731D137AB58FFBD84D55F56D44F6EDC02CF1C8E673F286AEC765020702D4C
          5008225E12D2E51FAFFBAE7D7F78E79BDB8149CF051800A9CA65AD3F19B3E700
          00000049454E44AE426082}
      end>
    Left = 304
    Top = 30
    Bitmap = {}
  end
end
