import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_web_view.dart';
import 'package:flutter/material.dart';
import 'owned_hat_colors_model.dart';
export 'owned_hat_colors_model.dart';

class OwnedHatColorsWidget extends StatefulWidget {
  const OwnedHatColorsWidget({super.key});

  @override
  State<OwnedHatColorsWidget> createState() => _OwnedHatColorsWidgetState();
}

class _OwnedHatColorsWidgetState extends State<OwnedHatColorsWidget> {
  late OwnedHatColorsModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => OwnedHatColorsModel());

    logFirebaseEvent('screen_view',
        parameters: {'screen_name': 'OwnedHatColors'});
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
              logFirebaseEvent('OWNED_HAT_COLORS_Icon_ez6c21tq_ON_TAP');
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
                  fontSize: 32.0,
                  letterSpacing: 0.0,
                  fontWeight: FontWeight.w500,
                ),
          ),
          actions: [
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 12.0, 0.0),
              child: FlutterFlowIconButton(
                borderColor: Colors.transparent,
                borderRadius: 30.0,
                borderWidth: 1.0,
                buttonSize: 44.0,
                icon: const Icon(
                  Icons.shopping_cart_outlined,
                  color: Color(0xFF57636C),
                  size: 24.0,
                ),
                onPressed: () async {
                  logFirebaseEvent('OWNED_HAT_COLORS_shopping_cart_outlined_');
                  logFirebaseEvent('IconButton_navigate_to');

                  context.pushNamed('HatColorsShop');
                },
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
                        final hatColorsOwn =
                            (currentUserDocument?.ownedHatColors.toList() ??
                                    [])
                                .toList();

                        return ListView.builder(
                          padding: EdgeInsets.zero,
                          primary: false,
                          shrinkWrap: true,
                          scrollDirection: Axis.vertical,
                          itemCount: hatColorsOwn.length,
                          itemBuilder: (context, hatColorsOwnIndex) {
                            final hatColorsOwnItem =
                                hatColorsOwn[hatColorsOwnIndex];
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
                                      'OWNED_HAT_COLORS_PAGE_menuItem_ON_TAP');
                                  logFirebaseEvent('menuItem_backend_call');

                                  await currentUserReference!
                                      .update(createUsersRecordData(
                                    selectedHatColors: hatColorsOwnItem,
                                  ));
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
                                            'https://avataaars.io/?avatarStyle=Circle&topType=${valueOrDefault(currentUserDocument?.selectedTop, '')}&accessoriesType=${valueOrDefault(currentUserDocument?.selectedAccessories, '')}&hairColor=${valueOrDefault(currentUserDocument?.selectedHairColors, '')}&facialHairType=${valueOrDefault(currentUserDocument?.selectedFacialHairs, '')}&clotheType=${valueOrDefault(currentUserDocument?.selectedClothes, '')}&eyeType=${valueOrDefault(currentUserDocument?.selectedEyes, '')}&eyebrowType=${valueOrDefault(currentUserDocument?.selectedEyebrows, '')}&mouthType=${valueOrDefault(currentUserDocument?.selectedMouth, '')}&skinColor=${valueOrDefault(currentUserDocument?.selectedSkin, '')}&hatColor=$hatColorsOwnItem&facialHairColor=${valueOrDefault(currentUserDocument?.selectedFacialHairColors, '')}&clotheColor=${valueOrDefault(currentUserDocument?.selectedColorFabric, '')}',
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
                                                  hatColorsOwnItem,
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
                                        const Column(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.end,
                                          children: [
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(0.0, 4.0, 0.0, 0.0),
                                              child: Icon(
                                                Icons.chevron_right_rounded,
                                                color: Color(0xFF57636C),
                                                size: 24.0,
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
