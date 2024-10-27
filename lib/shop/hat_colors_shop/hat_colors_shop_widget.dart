import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_web_view.dart';
import 'package:flutter/material.dart';
import 'hat_colors_shop_model.dart';
export 'hat_colors_shop_model.dart';

class HatColorsShopWidget extends StatefulWidget {
  const HatColorsShopWidget({super.key});

  @override
  State<HatColorsShopWidget> createState() => _HatColorsShopWidgetState();
}

class _HatColorsShopWidgetState extends State<HatColorsShopWidget> {
  late HatColorsShopModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HatColorsShopModel());

    logFirebaseEvent('screen_view',
        parameters: {'screen_name': 'HatColorsShop'});
    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        appBar: AppBar(
          backgroundColor: const Color(0xFFF1F5F8),
          automaticallyImplyLeading: false,
          leading: InkWell(
            splashColor: Colors.transparent,
            focusColor: Colors.transparent,
            hoverColor: Colors.transparent,
            highlightColor: Colors.transparent,
            onTap: () async {
              logFirebaseEvent('HAT_COLORS_SHOP_Icon_e1reuwxr_ON_TAP');
              logFirebaseEvent('Icon_navigate_back');
              context.safePop();
            },
            child: Icon(
              Icons.chevron_left_sharp,
              color: FlutterFlowTheme.of(context).secondaryText,
              size: 24.0,
            ),
          ),
          title: Text(
            'Hat Colors',
            style: FlutterFlowTheme.of(context).displaySmall.override(
                  fontFamily: 'Outfit',
                  color: const Color(0xFF0F1113),
                  fontSize: 30.0,
                  letterSpacing: 0.0,
                  fontWeight: FontWeight.w500,
                ),
          ),
          actions: [
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 5.0, 0.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8.0),
                child: Image.asset(
                  'assets/images/Untitled_design_(7)-Photoroom.png',
                  width: 60.0,
                  height: 60.0,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Align(
              alignment: const AlignmentDirectional(0.0, 0.0),
              child: Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 20.0, 0.0),
                child: AuthUserStreamWidget(
                  builder: (context) => Text(
                    valueOrDefault(currentUserDocument?.coins, 0).toString(),
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Outfit',
                          color: const Color(0xFF060606),
                          fontSize: 25.0,
                          letterSpacing: 0.0,
                        ),
                  ),
                ),
              ),
            ),
          ],
          centerTitle: false,
          elevation: 0.0,
        ),
        body: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 25.0),
                      child: Text(
                        'Choose hat color below',
                        style:
                            FlutterFlowTheme.of(context).labelMedium.override(
                                  fontFamily: 'Plus Jakarta Sans',
                                  color: const Color(0xFF57636C),
                                  fontSize: 14.0,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.w500,
                                ),
                      ),
                    ),
                  ],
                ),
              ),
              Flexible(
                child: Align(
                  alignment: const AlignmentDirectional(0.0, 0.0),
                  child: AuthUserStreamWidget(
                    builder: (context) => Builder(
                      builder: (context) {
                        final hatColorsshop =
                            (currentUserDocument?.shopHatColors.toList() ?? [])
                                .toList();

                        return ListView.builder(
                          padding: EdgeInsets.zero,
                          primary: false,
                          shrinkWrap: true,
                          scrollDirection: Axis.vertical,
                          itemCount: hatColorsshop.length,
                          itemBuilder: (context, hatColorsshopIndex) {
                            final hatColorsshopItem =
                                hatColorsshop[hatColorsshopIndex];
                            return Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  16.0, 0.0, 16.0, 8.0),
                              child: InkWell(
                                splashColor: Colors.transparent,
                                focusColor: Colors.transparent,
                                hoverColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                onTap: () async {
                                  logFirebaseEvent(
                                      'HAT_COLORS_SHOP_PAGE_menuItem_ON_TAP');
                                  if (valueOrDefault(
                                          currentUserDocument?.coins, 0) >=
                                      7) {
                                    logFirebaseEvent('menuItem_backend_call');

                                    await currentUserReference!.update({
                                      ...mapToFirestore(
                                        {
                                          'coins': FieldValue.increment(-(7)),
                                        },
                                      ),
                                    });
                                    logFirebaseEvent('menuItem_backend_call');

                                    await currentUserReference!.update({
                                      ...mapToFirestore(
                                        {
                                          'ownedHatColors':
                                              FieldValue.arrayUnion(
                                                  [hatColorsshopItem]),
                                          'shopHatColors':
                                              FieldValue.arrayRemove(
                                                  [hatColorsshopItem]),
                                        },
                                      ),
                                    });
                                    logFirebaseEvent('menuItem_show_snack_bar');
                                    ScaffoldMessenger.of(context).showSnackBar(
                                      SnackBar(
                                        content: Text(
                                          'You successfully purchased this item!',
                                          style: TextStyle(
                                            color: FlutterFlowTheme.of(context)
                                                .primaryText,
                                          ),
                                        ),
                                        duration: const Duration(milliseconds: 4000),
                                        backgroundColor:
                                            FlutterFlowTheme.of(context)
                                                .secondary,
                                      ),
                                    );
                                  } else {
                                    logFirebaseEvent('menuItem_show_snack_bar');
                                    ScaffoldMessenger.of(context).showSnackBar(
                                      SnackBar(
                                        content: Text(
                                          'Not Enough Coins',
                                          style: TextStyle(
                                            color: FlutterFlowTheme.of(context)
                                                .primaryText,
                                          ),
                                        ),
                                        duration: const Duration(milliseconds: 4000),
                                        backgroundColor:
                                            FlutterFlowTheme.of(context)
                                                .secondary,
                                      ),
                                    );
                                  }

                                  logFirebaseEvent('menuItem_navigate_to');

                                  context.pushNamed('TestProfile');
                                },
                                child: Container(
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    boxShadow: const [
                                      BoxShadow(
                                        blurRadius: 3.0,
                                        color: Color(0x411D2429),
                                        offset: Offset(
                                          0.0,
                                          1.0,
                                        ),
                                      )
                                    ],
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        FlutterFlowWebView(
                                          content: valueOrDefault<String>(
                                            'https://avataaars.io/?avatarStyle=Circle&hatColor=$hatColorsshopItem',
                                            'https://avataaars.io/?avatarStyle=Circle&topType=LongHairFro&accessoriesType=Wayfarers&hairColor=Brown&facialHairType=Blank&clotheType=BlazerSweater&eyeType=EyeRoll&eyebrowType=RaisedExcited&mouthType=Tongue&skinColor=Yellow',
                                          ),
                                          bypass: false,
                                          width: 70.0,
                                          height: 70.0,
                                          verticalScroll: false,
                                          horizontalScroll: false,
                                        ),
                                        Expanded(
                                          child: Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    8.0, 8.0, 4.0, 0.0),
                                            child: Column(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  hatColorsshopItem,
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .headlineSmall
                                                      .override(
                                                        fontFamily: 'Outfit',
                                                        color:
                                                            const Color(0xFF0F1113),
                                                        fontSize: 20.0,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.normal,
                                                      ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        Column(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.end,
                                          children: [
                                            Text(
                                              '7',
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Outfit',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primaryText,
                                                        letterSpacing: 0.0,
                                                      ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            );
                          },
                        );
                      },
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
