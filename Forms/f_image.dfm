object FImage: TFImage
  Left = 0
  Top = 0
  Caption = #1048#1079#1086#1073#1088#1072#1078#1077#1085#1080#1077
  ClientHeight = 474
  ClientWidth = 895
  Color = clBtnFace
  Constraints.MinHeight = 374
  Constraints.MinWidth = 572
  DoubleBuffered = True
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
    895
    474)
  PixelsPerInch = 96
  TextHeight = 13
  object scrlbx: TScrollBox
    Left = 8
    Top = 40
    Width = 879
    Height = 423
    Anchors = [akLeft, akTop, akRight, akBottom]
    TabOrder = 1
    object img: TImage
      Left = 0
      Top = 0
      Width = 81
      Height = 57
      AutoSize = True
    end
    object pb: TPaintBox
      Left = 0
      Top = 0
      Width = 225
      Height = 193
      OnMouseDown = imgMouseDown
      OnMouseMove = imgMouseMove
      OnMouseUp = imgMouseUp
      OnPaint = pbPaint
    end
  end
  object pnl_Tools: TPanel
    Left = 0
    Top = 0
    Width = 895
    Height = 37
    Align = alTop
    TabOrder = 0
    DesignSize = (
      895
      37)
    object btn_Brush: TsSpeedButton
      Left = 199
      Top = 6
      Width = 23
      Height = 25
      GroupIndex = 1
      Down = True
      Flat = True
      SkinData.SkinSection = 'SPEEDBUTTON'
      ImageIndex = 0
      Images = Images
    end
    object btn_DoLoad: TsSpeedButton
      Left = 728
      Top = 6
      Width = 160
      Height = 25
      Anchors = [akTop, akRight]
      Caption = #1047#1072#1075#1088#1091#1079#1080#1090#1100' (Alt + Enter)'
      OnClick = mm_LoadClick
      SkinData.SkinSection = 'SPEEDBUTTON'
      ImageIndex = 1
      Images = Images
      ExplicitLeft = 656
    end
    object shp_brush: TShape
      Left = 22
      Top = 14
      Width = 20
      Height = 20
      Brush.Color = clGreen
      OnMouseDown = shp_brushMouseDown
    end
    object shp_pen: TShape
      Left = 10
      Top = 2
      Width = 20
      Height = 20
      Brush.Color = clRed
      OnMouseDown = shp_penMouseDown
    end
    object lbl_penwidth: TLabel
      Left = 48
      Top = 11
      Width = 76
      Height = 13
      Caption = #1064#1080#1088#1080#1085#1072' '#1082#1080#1089#1090#1080':'
    end
    object btn_line: TsSpeedButton
      Left = 228
      Top = 6
      Width = 23
      Height = 25
      GroupIndex = 1
      Flat = True
      SkinData.SkinSection = 'SPEEDBUTTON'
      ImageIndex = 7
      Images = Images
    end
    object spin_penwidth: TsSpinEdit
      Left = 130
      Top = 8
      Width = 63
      Height = 21
      Alignment = taCenter
      NumbersOnly = True
      TabOrder = 0
      Text = '7'
      SkinData.SkinSection = 'EDIT'
      BoundLabel.Indent = 0
      BoundLabel.Font.Charset = DEFAULT_CHARSET
      BoundLabel.Font.Color = clWindowText
      BoundLabel.Font.Height = -11
      BoundLabel.Font.Name = 'Tahoma'
      BoundLabel.Font.Style = []
      BoundLabel.Layout = sclLeft
      BoundLabel.MaxWidth = 0
      BoundLabel.UseSkinColor = True
      MaxValue = 20
      MinValue = 1
      Value = 7
    end
  end
  object mm: TMainMenu
    Images = Images
    Left = 408
    Top = 160
    object mm_menu: TMenuItem
      Caption = #1052#1077#1085#1102
      object mm_Load: TMenuItem
        Caption = #1047#1072#1075#1088#1091#1079#1080#1090#1100
        ImageIndex = 1
        ShortCut = 32781
        OnClick = mm_LoadClick
      end
      object mm_copyimg: TMenuItem
        Caption = #1057#1082#1086#1087#1080#1088#1086#1074#1072#1090#1100' '#1080#1079#1086#1073#1088#1072#1078#1077#1085#1080#1077
        ImageIndex = 9
        ShortCut = 16451
        OnClick = mm_copyimgClick
      end
      object mm_close: TMenuItem
        Caption = #1047#1072#1082#1088#1099#1090#1100
        ImageIndex = 4
        OnClick = mm_closeClick
      end
    end
    object N1: TMenuItem
      Caption = #1056#1077#1076#1072#1082#1090#1086#1088
      object mm_Cancel: TMenuItem
        Caption = #1054#1090#1084#1077#1085#1080#1090#1100' '#1076#1077#1081#1089#1090#1074#1080#1077
        ImageIndex = 5
        ShortCut = 16474
        OnClick = mm_CancelClick
      end
      object mm_swapcolors: TMenuItem
        Caption = #1055#1086#1084#1077#1085#1103#1090#1100' '#1094#1074#1077#1090#1072
        ImageIndex = 8
        ShortCut = 16471
        OnClick = mm_swapcolorsClick
      end
      object mm_DefaultColor: TMenuItem
        Caption = #1062#1074#1077#1090#1072' '#1087#1086' '#1091#1084#1086#1083#1095#1072#1085#1080#1102
        ImageIndex = 6
        ShortCut = 16452
        OnClick = mm_DefaultColorClick
      end
      object mm_deleteall: TMenuItem
        Caption = #1059#1073#1088#1072#1090#1100' '#1074#1089#1077' '#1080#1079#1084#1077#1085#1077#1085#1080#1103
        ImageIndex = 2
        OnClick = mm_deleteallClick
      end
    end
    object mm_tools: TMenuItem
      Caption = #1048#1085#1089#1090#1088#1091#1084#1077#1085#1090#1099
      object mm_brush: TMenuItem
        Caption = #1050#1080#1089#1090#1100
        ImageIndex = 0
        OnClick = mm_brushClick
      end
      object mm_line: TMenuItem
        Caption = #1051#1080#1085#1080#1103
        ImageIndex = 7
        OnClick = mm_lineClick
      end
    end
    object mm_view: TMenuItem
      Caption = #1042#1080#1076
      object mm_showtools: TMenuItem
        Caption = #1055#1072#1085#1077#1083#1100' '#1080#1085#1089#1090#1088#1091#1084#1077#1085#1090#1086#1074
        Checked = True
        OnClick = mm_showtoolsClick
      end
    end
  end
  object Images: TsAlphaImageList
    DrawingStyle = dsTransparent
    Items = <
      item
        ImageFormat = ifPNG
        ImgData = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          610000001974455874536F6674776172650041646F626520496D616765526561
          647971C9653C000001EF4944415478DA6264000256515106161111065C40F9DB
          3706B7376F1894BE7E65F80B15FBCFC060FD9B8161220B031EE00ED204D40CD2
          8806FC819AAB7F3130CC63C1A5D1FDF56B30FB2FAA142310A70335A600F1C17F
          0C0CD3500C50057A25F3D0215C0E62056AA8F9C5C8E8F3EBFFFF3B7F1818AA40
          826003D4E5E519D4E4E4F0F98607A8B99B9D8FCFEECBD7AF3FFEFCFDDB0514FB
          093620282888810010076A9E282E2F6FF1F4CD9B8F3FFEFECD0706E059982413
          BAEAB7C0D8F80F09651056F9C7C8B840D3D0D0E5CDA74FDF3F7CFDDA0F143B82
          AC1ED300616106A08D206C0CF4E70A533B3BFB176FDF7E79F9FEFD56A0D80224
          C3C1980987B38D818A673AF9F818BF78F5EAD3ED478F7602F9255083E1F8012C
          1071697EF8F8F1BBF3D7AF9F06F2D3FF23297804C48781F821BA01FFFFFF57BD
          2A2F6F15202464FCE8C993CF272F5EBC0F4C07BEFFB16884011664CD5FBF7EF5
          D8B469D3A46DDBB63DBC1014F406A8D9E43F0E8D70B03E4B14840D56A6081FFC
          F1E3C7FF75EBD63D10111169496066668801CACB138AE4E6C22A06A0E695E7E7
          44FCDF5865F911A4999B9B9B811968003180E506774602BB804498E0F30D9FD6
          6D39B3E9CD9BDF5380E2624881FD17071BE4BB7F2C40307FE5154D863997766C
          BC75F3F70450CA03E23F48F83712FD1B491C64D87F800003003168E3181E3C4A
          170000000049454E44AE426082}
      end
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
          647971C9653C000002A24944415478DA74534B4F135114FEE6D5E9006D290690
          427061822626125289260695102231319AE8C6850B37B074E55E97CA0AA3465D
          99A87F405D28A0B2309104CAC28D964408A516A85A4A999976DE9E3B9D0E6AF4
          4CBE39B9E79C7B1EDFBD97C3DF72B109B8D2BCB7E63042FFEB8414A140988287
          B77BEE70A3025C207064120852E87A7D6DF8EA59CBB2208A229ECC3D7B43B6B1
          8653C4DD041013FEECC2F5008B7460FEF6A3A036094A8BEEE8AAEF63E2B09F07
          1EFF131668131C6F727A69262B4912A69766B36C1DD87DBFF88FAD8F28711AF5
          02BE74263B629AA621196D8D6D6BE5DB415C8630514F507501B9D18C97BE7CFA
          52BA56ABC1F33C1FA6694255550C1E3CD6A7280A5CD7C5CBF9570107FE3C54AA
          4649C43A71BBBBBBA8542A614B3CCFC3A86AE5850FB339B63ED23FD8EB8F1126
          0867AE9F0B639CA121D168149F3F65F2555DBBCF5A5FFC38378E88944144F413
          8CD0AC37824E267DE538302D13BAAE43AFEA90233234B56290EB7190738202C0
          2060549E1A1D1A3B976869DDBFB9591848C6DB62966BEF2B6E17A19B3A756AC3
          133C18AA5A726DDB0912DC8420A62049190E77628B432787D3AC1A23483774AC
          9656C1733C44410C0EC383AD56CB3BEB1B3E072DDD1DBD6A49CB3996D32F5289
          02C77169D330D4CCC27C566A8EC4627DC93E14AC72697E3D6F950D434C44E4E6
          E3ED3DAD03078EFA27C3BEEF6A8E1129E08C545C5B59E92C6E6CAC93FD965B73
          4E250EB7A54A2FD696ED8A798FCDEB1A8E636D550FC983F14E44C84230F2FA96
          67BA0F45BCB3D8C3A83F8E1EBA0BDD1C6C85E6E6BCC665A96B764D7E7B63FEB1
          676D32BF37A38438A11D4F6B5DD8B1E1441D349D6FEFA5B0F1207CDC5FD35B0B
          A1129FCF8D14634966BC10E2BEEBABB3BCF3202FF9DB143EEC409FF9790233C8
          351AF072EE17525DBF041800BF8A3DEF3C0699F10000000049454E44AE426082}
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
      end
      item
        ImageFormat = ifPNG
        ImgData = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          610000001974455874536F6674776172650041646F626520496D616765526561
          647971C9653C000002DA4944415478DAA4936F48137118C79FDB7E53B7DDDD6E
          7376DB6DA52D24D3CADC1A91CAB4214469090589A0BE0A232CF2851015F52AA2
          02DFD75B0D04094492D05712868803434C999192B4B5C839DBDDFEDCFEDDF5BB
          6563F9A617FDE0C3DD3DBFDFF3BDE7F9DE3D842CCBF03F0B119D3A80CBDADF4F
          1A4289804EAB3B6437DA6EB29B06C6B0AADDD07E4511BC1BC504F00BD730422E
          97034992001592F756192ABD5A6F3F315CB35B2D0F34DE006B6785558987B6B7
          438B0B0BBEC5B9B959211A9DC521BF1257FF25A0222E396B1A5E5002657974EC
          9EE9A0D9C2ACADAC20CE66430C4531B6CACA3A476D6DFDC6FABA108FC5C2B892
          B00A72D80305093833657A68D0D2AC139D525B49735E73C9E72BE8D35A2D184D
          267B4F7FFF0049D36D588056412C0790C10269E98AD566AD8E0476E08CD9858B
          21F249A228161588FD2929019261EC8D2D2DADD887E32A102580381649494D25
          8C864C4592408211B6C2E13C7EBFBF70AFC0279379F31ADC6E77369BAD4220C3
          4BC8CA2E0C88652924F159187C770BDC56270C9F7B06822040A5D95CA8228B93
          839108181886C502460469790224D95575FDA82B0E7180F3008637A5D07EF802
          5C6C6B03AFD70BBD5D5D4051541E9224C1D9D404679B9B010BA8104E9E869F59
          F8F2FCE3E303430E57F9A816EEB7DF056F552BB8C64F424F7737BC1A1B2B54A0
          FC76D1741A123CFF030B4411F7B90220294D6323D9D4D3DD27B7AF3DE03C475A
          F3870D26533E59B916B720E2B6E66766963399CC16B27C2AFFB337694C9B2CA7
          2DCE3B3949B22295AA2052BC140355A2187A3D3EFE1E7F856535CBB2A0CC0346
          14783EF6C1E7933D1E8F83A6696AFF9CA8B1281F8984860607470381C0044110
          5B44F1019D4E077ABDDEC9715C676F5F5F637B47479D85E3CA9543DF43A19DB7
          5353AB232323F3C16070321E8F2F25120920F60D1785611142168D46E350ABD5
          9CD2C5DE5E1497FC0DF7BD89CDDB563431FC7E81528C5E99A97F4C711A13C3A4
          7E093000F6343C098E390A110000000049454E44AE426082}
      end
      item
        ImageFormat = ifPNG
        ImgData = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          610000001974455874536F6674776172650041646F626520496D616765526561
          647971C9653C000001DF4944415478DA7C533B6B0241109EBB5B152E8D288889
          DA0A161662E391A0585A04F517D899902265402D04C1FF90D62EA590D6CA4614
          4B7BB1108D8D28F83A1F97994DF6B833C681E176BF9DF7372755ABD54700B885
          EB32310CE3535C46A311341A0D7E66FBFDFEAE5EAFBF5FF3AE542ACFD67B2010
          004CFC1340D775E9743A413299BCE8DC6EB7816CAC98AAAA2049126055C0B6DB
          AD74381CE0783C82DFEFB7394FA753A037B21198DBED0659964D1B1E809CB115
          CA640B4018BD89003E9F0F1863361B0A209321299E39B85C2ECD60BFB81C0C06
          C1E974FE6991ADD76B5E01952A9C10834EA703A23574BC77B95C3AF57CCE0E64
          3299D7D96C6684C3619B12562C16F9B7D96C1A97A45C2E3FB1F97CAED05068DA
          5621666AB51A1F58B7DBE595582597CB7176182EC5241289BC9DD7863D6B8542
          213F1C0E219D4E43369B35DF5AAD96C90EC3C387189E109A763C1E7FC116F2BD
          5E0F52A994EDDDE17098ECB0F3CC5EAF17344D03C18E95B6C160008BC5826382
          1D620176BB1D2F8924168B711650383BD600ABD50AA2D1A8C90E312813289CC5
          EA8EC763D86C367C431545817EBFCF95CE94AC542A711FB211E169D3146A0FD5
          895377241209CE4E2814FA971D6250EC382D37AD998A7A435F8FC7F380193DD7
          FE526CE3EB5B800100232C3F6DB019BD390000000049454E44AE426082}
      end
      item
        ImageFormat = ifPNG
        ImgData = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          610000001974455874536F6674776172650041646F626520496D616765526561
          647971C9653C000001854944415478DA62342EDF6DC6C0C000C2A7A0180E3E7C
          F800C6FF7F7E6278B7A198011DFCFFFF9F810948989FE9704900D1200164CCCF
          CFCFC0C1C1C1800FB000159E362ADBC50864FF05627120FFE5BF7FFFC0068068
          9021BCBCBC0C8CA6E10C6F4FAFC43080D1B074278C2D01D4E406A4770135BE80
          1900A3616C90213017BE3FBB9A8105C9B01720CD40097720BD13CAC70082C6A1
          70434180094D1E643348B327104B32100198B088810CD901C44419C28443FC39
          D080ED40DA9B90218C30068FAC1E8384550C0397B40E0352004A01B10F106F01
          F29FA107ECFDD9E10803900D12B38862E094D286290419E207C49B80F8194103
          60805B469741D43C928143520BA4581A28E40FD4B811C87E4A94013000F29230
          3011010D92066A0C04E2F540FC9468036000E425601A906113D7480172598186
          EC7F3027620F133420994182400C4AF8DC40CC07C402402C04C422402CF6FDD9
          5589679B1BFEFEFAF58B0F68B3FBEFDFBFBDC079818144F0F3F39B83A2917339
          181919F782A3111420940080000300BD03052AD1467B4D0000000049454E44AE
          426082}
      end
      item
        ImageFormat = ifPNG
        ImgData = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          610000001974455874536F6674776172650041646F626520496D616765526561
          647971C9653C000002644944415478DA7C53CF8B5251143EEFBDFBDE33279DC9
          794A3368413B2169619153B3487015A4CE26A616194412B56A138982200AA1FF
          8010B471D35208A68DE0E0C6C5B87048088A2164163A2A9836FE7CEFF9BAF7D2
          931CC40B1FF770BF73CE3DE77CF732F178FC11006CC1EAD5D034EDCB29FF0678
          9E07555541511498CD5440B22C6FA752A9ECAAE86834FA6ACADA89F900272ACE
          663346E7D0743A65F001E4F3F9A5C1C1601088CF396FC3B7CA458C3A3E56308E
          71B2A7683C1E33A41CB3D90C3E9F6F21B85028D052898FA69C80CCB8BD385951
          107846556777702B1F5842929E486F1797DE2FF539FF0912777CA8AA0AB3C956
          81574E8F86C3E14752018BE70008A17960AD56835EAF47CF08477CEC763B18B8
          2A48EB55EA633501F445E900E12CB482FF130C060370B95CB47CC20982705F14
          C529EE79A14213DF6EA0D1684467C0711C542A154A107B3299402C1683643209
          7EBF7F3F1008EC2F530775BB5D8E655970381C0B245126914800E1D2E9346432
          9905BE542A517550BD5E6F389DCE7717B3E39E7742A1D05E369B05499228F4D5
          6C36E7EAA04BDB8F3FB77F7C5A08B6D96CE076BB5F87C3E1BD5C2E4725C6B7CD
          7932585D1D64BAF6E4E1951BCF0FC6BFBF81B87E13E43FDFE196F52BE8EAFC53
          8106F6FBFD79225D1DC4F3C6972CCBB54DD6BB478A32D1D6366F7B7B93EA21AF
          9E30FA9BD783B062502E97E7EA10055951BCFC5E108C598404C56030D5F15E1C
          6AD7415787A0D56A51109BA8138944A84D7C60F7D92FD8B8BA433E07F2BE38D3
          36B6EE05B02D793C9EB79D4E47C3035B0AC2111FFD57B118028611638DEC168B
          6517BF07CBAA5F8ADB38FB2BC0004D497330E22BDBBE0000000049454E44AE42
          6082}
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
      end>
    Left = 432
    Top = 200
    Bitmap = {}
  end
  object dlg_color: TsColorDialog
    Left = 112
    Top = 168
  end
end
