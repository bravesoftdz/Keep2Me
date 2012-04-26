object FPasteBin: TFPasteBin
  Left = 0
  Top = 0
  Caption = 'PasteBin.com'
  ClientHeight = 531
  ClientWidth = 872
  Color = clBtnFace
  Constraints.MinHeight = 238
  Constraints.MinWidth = 742
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = mm
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  DesignSize = (
    872
    531)
  PixelsPerInch = 96
  TextHeight = 13
  object syn_code: TSynEdit
    Left = 8
    Top = 72
    Width = 856
    Height = 434
    Anchors = [akLeft, akTop, akRight, akBottom]
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Courier New'
    Font.Style = []
    TabOrder = 1
    OnClick = syn_codeClick
    Gutter.Font.Charset = DEFAULT_CHARSET
    Gutter.Font.Color = clWindowText
    Gutter.Font.Height = -11
    Gutter.Font.Name = 'Courier New'
    Gutter.Font.Style = []
    Gutter.LeftOffset = 8
    Gutter.ShowLineNumbers = True
    WantTabs = True
    OnChange = syn_codeChange
  end
  object pnl_actions: TPanel
    Left = 0
    Top = 0
    Width = 872
    Height = 66
    Align = alTop
    TabOrder = 0
    DesignSize = (
      872
      66)
    object lbl_syntax: TLabel
      Left = 8
      Top = 10
      Width = 59
      Height = 13
      Caption = #1055#1086#1076#1089#1074#1077#1090#1082#1072':'
    end
    object lbl_expire: TLabel
      Left = 239
      Top = 10
      Width = 46
      Height = 13
      Caption = #1061#1088#1072#1085#1080#1090#1100':'
    end
    object lbl_private: TLabel
      Left = 399
      Top = 10
      Width = 41
      Height = 13
      Caption = #1044#1086#1089#1090#1091#1087':'
    end
    object lbl_caption: TLabel
      Left = 619
      Top = 10
      Width = 23
      Height = 13
      Caption = #1048#1084#1103':'
    end
    object btn_load: TsSpeedButton
      Left = 239
      Top = 34
      Width = 154
      Height = 25
      Caption = #1047#1072#1075#1088#1091#1079#1080#1090#1100' (Alt + Enter)'
      OnClick = btn_loadClick
      SkinData.SkinSection = 'SPEEDBUTTON'
      ImageIndex = 0
      Images = Images
    end
    object lbl_link: TLabel
      Left = 399
      Top = 40
      Width = 42
      Height = 13
      Caption = #1057#1089#1099#1083#1082#1072':'
    end
    object btn_copy: TsSpeedButton
      Left = 812
      Top = 35
      Width = 23
      Height = 25
      Hint = #1057#1082#1086#1087#1080#1088#1086#1074#1072#1090#1100
      Anchors = [akTop, akRight]
      ParentShowHint = False
      ShowHint = True
      OnClick = btn_copyClick
      SkinData.SkinSection = 'SPEEDBUTTON'
      ImageIndex = 1
      Images = Images
      ExplicitLeft = 803
    end
    object btn_open: TsSpeedButton
      Left = 841
      Top = 35
      Width = 23
      Height = 25
      Hint = #1054#1090#1082#1088#1099#1090#1100' '#1074' '#1073#1088#1072#1091#1079#1077#1088#1077
      Anchors = [akTop, akRight]
      ParentShowHint = False
      ShowHint = True
      OnClick = btn_openClick
      SkinData.SkinSection = 'SPEEDBUTTON'
      ImageIndex = 2
      Images = Images
      ExplicitLeft = 814
    end
    object cbb_syntax: TComboBox
      Left = 73
      Top = 7
      Width = 160
      Height = 21
      Style = csDropDownList
      DropDownCount = 20
      TabOrder = 0
      OnChange = cbb_syntaxChange
    end
    object cbb_expire: TComboBox
      Left = 291
      Top = 7
      Width = 102
      Height = 21
      Style = csDropDownList
      TabOrder = 1
    end
    object pb: TProgressBar
      Left = 8
      Top = 38
      Width = 225
      Height = 17
      TabOrder = 5
    end
    object cbb_private: TComboBox
      Left = 446
      Top = 7
      Width = 167
      Height = 21
      Style = csDropDownList
      TabOrder = 2
    end
    object edt_caption: TEdit
      Left = 648
      Top = 7
      Width = 216
      Height = 21
      Anchors = [akLeft, akTop, akRight]
      TabOrder = 3
    end
    object edt_link: TEdit
      Left = 447
      Top = 37
      Width = 359
      Height = 21
      Anchors = [akLeft, akTop, akRight]
      ReadOnly = True
      TabOrder = 4
    end
  end
  object sb_info: TsStatusBar
    Left = 0
    Top = 512
    Width = 872
    Height = 19
    Panels = <>
    SimplePanel = True
    SimpleText = '0'
    SkinData.SkinSection = 'STATUSBAR'
    ExplicitLeft = 568
    ExplicitTop = 504
    ExplicitWidth = 0
  end
  object HTTP: TIdHTTP
    OnWork = HTTPWork
    OnWorkBegin = HTTPWorkBegin
    AllowCookies = True
    HandleRedirects = True
    ProxyParams.BasicAuthentication = False
    ProxyParams.ProxyPort = 0
    Request.ContentLength = -1
    Request.ContentRangeEnd = -1
    Request.ContentRangeStart = -1
    Request.ContentRangeInstanceLength = -1
    Request.Accept = 'text/html, */*'
    Request.BasicAuthentication = False
    Request.UserAgent = 'Mozilla/5.0 (Windows NT 6.1) Gecko/20100101 Firefox/9.0.1'
    Request.Ranges.Units = 'bytes'
    Request.Ranges = <>
    HTTPOptions = [hoForceEncodeParams]
    Left = 368
    Top = 96
  end
  object Images: TsAlphaImageList
    DrawingStyle = dsTransparent
    Items = <
      item
        ImageFormat = ifPNG
        ImgData = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          610000001974455874536F6674776172650041646F626520496D616765526561
          647971C9653C000001F24944415478DAA453CD4B1B51109FB79B8F351A230D89
          10B424C79E145E3CDA468A140A3D94528A100F82D0EBDEFC37BC2AE24197965E
          AA87D08285B4552F35BE1E4AA097482F62142BF5A2FBF176B3CE6CA36CFCC043
          067E6F7666767E6F667696F9BE0FDD88025D4A848ED2F2D1958331B6808ADF93
          27BECE64DF5E11B45AAD70700BDBE26F2673DCB27CB8DE6104333E7E6B765610
          164C365CC701A3F2477F3D39CC0F0F9D8E7822A180B4ED4E82938303608A022A
          D213B00D83DA785769C0CBA705BEBF7F1EBA207293E02F1228AA0AF11E0D625A
          0F422B23C9F88B8902DFD9D9032925789E1724A4D349702CEBEEAF802D94F105
          7D622CCB6BB50698A609AEEB423E9FA618388E041B7DB71250B2B42DFDF17881
          8BC63F388F6A01B2F941D8D8DC130F863270A644B1825B08FEDF6CEBC567A37C
          BB29E124D11F20F57010AA1BBF846D5A5B9BD5BA3093FD5881D539039A3A8A3E
          32FD9C7F3F9638EA54102CA422F0E3C36781F39857A351C393B25CAF6CEB3736
          51220162BEB6B42632993E38D57A2195EE83DF2BEB82FC4EB36E9C89F7409A6C
          8408F71D6835FB08624FE6CAF157CBBBB92FBE4F9A6CF287856C02E511587030
          16C3581E9154F86C0972C52968FE5C6DED2E7E421FF567B7354112302F58DF4B
          02159F0710712A8AB63B045A00B7ADBD4B9FDF2E9D75FB3B5F0830002235FA4E
          C6E66D9B0000000049454E44AE426082}
      end
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
      end
      item
        ImageFormat = ifPNG
        ImgData = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          610000001974455874536F6674776172650041646F626520496D616765526561
          647971C9653C000002B24944415478DAA4935D48935118C7FFC7CDCF3975CD9C
          AEE95CD3993974399B985A398BA64B8A2884882E4AC88BBA882E02918AF0A29B
          02A16FB28B02093423DC5033D0A234D2C9A254CA8F5899253ABFB67473EFF676
          0E2E08420A7CE1F73E87E73CCF73FEE79CE7109EE7B19E4F78B32A04AC04ABC3
          20647582D9D30D3CF6EB09CCB9AB73018A6798479810267F00753E1F6A43FE63
          91029A778F41C73B6921D39207753BCA0EE9DDCBA813FE2339CD62E3B3EBEF5C
          39C924586ED4487F2E23D960DCA56F7AD062E3FC6B2B88A3F167A8DD3B3A3A76
          BBED4D34BC535328AFBA7850AC25938F1FBDB04DCCA03610403B53104A89A5C4
          539268A22142149B979A53A81BACCC5659AD1694969AD0D6E145897204FB8E9D
          AB58E1AE5AF9003CEC4C84F477214224D91E2E8A11458AA5E28DC9E932894C11
          EF73AD085D134E9419A2D0627902A3D10C6BC7124A5563301E3861EE68BEBF40
          17EB0EA1323ADD0B73DE0C4379915CADCFF1CC0712C77B8785AEE93944292498
          1DFA8A8A5C172C962614179BD13A988445C722380E8402812987387A6CFC7C4F
          575FA688875C141B0D59BA02027A57DFEDE390A813C1B93DC88C5B42E3733B34
          9A7C549EBDDC58988606BA8DCFBF6FA13D574B969DCE81F35B0AB46523034310
          F202A464A7C13D330FDEE3479C3201C7B31660A8AE6CA6F1B7A8FC57AC6504AC
          6316DD805A4E1CF621DED9F7FA5D667EA14EBE696B2A26871DE0BC1C621452CC
          7D9C44D3D3872FF5C9B8D6FF8574A76C00DE7FA30DF7FBDE5409044ABA87222D
          29A15D56A3D114EC09D00352EB32304D93DBBB3A7BA9FFD2AC07CF5A3F10ACF9
          04945282DD2A988E64A1BFEDFA61FEEEA93CFEA80E6F8D9B619289FF8E670A58
          33892831141612C97C3A39B6654851CD16FA34837AFB0F7451FF0AC54BF105C7
          7E122C1246090FDAD0A08F690C04F153B8A0FD139EACF739FF126000273A1B1D
          EED2CA140000000049454E44AE426082}
      end
      item
        ImageFormat = ifPNG
        ImgData = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          610000001974455874536F6674776172650041646F626520496D616765526561
          647971C9653C000002394944415478DAA4534B68135114BD33F912F205539BD1
          12EDC22E2285A44A104148175270A7A022882BDB85561776E96753441141978A
          822E5D881B5B7775A7D046A55DA4B191D64A2325A6EA0C3AFFE47966E6A5B460
          577970E7DDF7EEB9E7DDDF088C31EA6689D4E5F23B9F17824002D108D4497EFF
          BE4D346E41D13928E8ED39E04E412D40A64F33F6D825B03DA7C9B3131343BAA6
          B1CF737399C5D9D92348EE50E725E87729183C6E99E64F90DCC7D51BE75E706A
          F00C11608D02349A2B1633FB7339C95055AB3C33F3E547A3713E118F5F4E4BD2
          B1AFD5EA2290970244AB8EC739F86E1238A534898610FA19A8C3C552A93F9A4C
          26962B95EFA17098AAF3F31F11EE189CD703CECB3B10B839B74004C0A3C17C7E
          80443154AB5496344D3B2878A9B86B3727706BB0BABD2D695CDEE897A43DBA2C
          0797EAF56A2A164BA8B6BDF0C7B2064D5EB3C6D636EA5C2CCF787D5F3A7DB8C7
          E7EBA9D4EB35D9301EAE349B1F42814004B6E9F6FFE6A04300F6B1DE58ECC401
          5194D614657DC3309E23E4A7703CF94D55A7A27E7F16FA6D8BA7BB49607B7967
          0DA28B47C3E1AC669A7FCBB2FC09E7270A6C6D0F7375CDB65FE2A1029C4BDB08
          9C03C0E3F94824136DB5FC538AB282F32DD4E6D703D8EE40DE7924374150866D
          44E743484E177AB15F80A1964AB55F45A34DE8F7323B8C6EC1C35EC3D81658A7
          8D8220EC85617880E80AC2FDFD1679A2CACBC0AA5E706E163E883302C13EA2BE
          24D1AE05C65E7708E27CDC03FCA116CFCCE23AE3B3E3DB22227C37846E7FE77F
          020C007470F08128782D7E0000000049454E44AE426082}
      end>
    Left = 464
    Top = 96
    Bitmap = {}
  end
  object mm: TMainMenu
    Images = Images
    Left = 416
    Top = 96
    object mm_menu: TMenuItem
      Caption = #1052#1077#1085#1102
      object mm_load: TMenuItem
        Caption = #1047#1072#1075#1088#1091#1079#1080#1090#1100
        ImageIndex = 0
        ShortCut = 32781
        OnClick = btn_loadClick
      end
      object mm_clear: TMenuItem
        Caption = #1054#1095#1080#1089#1090#1080#1090#1100
        ImageIndex = 3
        OnClick = mm_clearClick
      end
      object mm_close: TMenuItem
        Caption = #1047#1072#1082#1088#1099#1090#1100
        ImageIndex = 4
        OnClick = mm_closeClick
      end
    end
    object mm_link: TMenuItem
      Caption = #1057#1089#1099#1083#1082#1072
      object mm_copy: TMenuItem
        Caption = #1050#1086#1087#1080#1088#1086#1074#1072#1090#1100
        ImageIndex = 1
        OnClick = btn_copyClick
      end
      object mm_open: TMenuItem
        Caption = #1054#1090#1082#1088#1099#1090#1100
        ImageIndex = 2
        OnClick = btn_openClick
      end
    end
  end
end
