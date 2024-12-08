import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_web_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'owned_clothes_color_model.dart';
export 'owned_clothes_color_model.dart';

class OwnedClothesColorWidget extends StatefulWidget {
  const OwnedClothesColorWidget({super.key});

  @override
  State<OwnedClothesColorWidget> createState() =>
      _OwnedClothesColorWidgetState();
}

class _OwnedClothesColorWidgetState extends State<OwnedClothesColorWidget>
    with TickerProviderStateMixin {
  late OwnedClothesColorModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = <String, AnimationInfo>{};

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => OwnedClothesColorModel());

    logFirebaseEvent('screen_view',
        parameters: {'screen_name': 'OwnedClothesColor'});
    animationsMap.addAll({
      'textOnPageLoadAnimation1': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          ShimmerEffect(
            curve: Curves.linear,
            delay: 0.0.ms,
            duration: 600.0.ms,
            color: const Color(0x80FFFFFF),
            angle: 0.524,
          ),
        ],
      ),
      'iconButtonOnPageLoadAnimation': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          ShimmerEffect(
            curve: Curves.linear,
            delay: 0.0.ms,
            duration: 600.0.ms,
            color: const Color(0x80FFFFFF),
            angle: 0.524,
          ),
        ],
      ),
      'textOnPageLoadAnimation2': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          ShimmerEffect(
            curve: Curves.linear,
            delay: 0.0.ms,
            duration: 600.0.ms,
            color: const Color(0x80FFFFFF),
            angle: 0.524,
          ),
        ],
      ),
      'listViewOnPageLoadAnimation': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          MoveEffect(
            curve: Curves.easeOut,
            delay: 0.0.ms,
            duration: 450.0.ms,
            begin: const Offset(100.0, 0.0),
            end: const Offset(0.0, 0.0),
          ),
        ],
      ),
    });

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
              logFirebaseEvent('OWNED_CLOTHES_COLOR_Icon_l6f3f6pj_ON_TAP');
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
            'Gear Tone',
            style: FlutterFlowTheme.of(context).displaySmall.override(
                  fontFamily: 'Outfit',
                  color: const Color(0xFF0F1113),
                  fontSize: 32.0,
                  letterSpacing: 0.0,
                  fontWeight: FontWeight.w500,
                ),
          ).animateOnPageLoad(animationsMap['textOnPageLoadAnimation1']!),
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
                  logFirebaseEvent('OWNED_CLOTHES_COLOR_shopping_cart_outlin');
                  logFirebaseEvent('IconButton_navigate_to');

                  context.pushNamed('ClothesColorShop');
                },
              ).animateOnPageLoad(
                  animationsMap['iconButtonOnPageLoadAnimation']!),
            ),
          ],
          centerTitle: false,
          elevation: 0.0,
        ),
        body: SizedBox(
          height: 1200.0,
          child: Stack(
            children: [
              SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 25.0),
                            child: Text(
                              'Choose a clothing color below.',
                              style: FlutterFlowTheme.of(context)
                                  .labelMedium
                                  .override(
                                    fontFamily: 'Plus Jakarta Sans',
                                    color: const Color(0xFF57636C),
                                    fontSize: 14.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w500,
                                  ),
                            ).animateOnPageLoad(
                                animationsMap['textOnPageLoadAnimation2']!),
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
                              final clothesColorOwn = (currentUserDocument
                                          ?.ownedColorFabric
                                          .toList() ??
                                      [])
                                  .toList();

                              return ListView.builder(
                                padding: EdgeInsets.zero,
                                primary: false,
                                shrinkWrap: true,
                                scrollDirection: Axis.vertical,
                                itemCount: clothesColorOwn.length,
                                itemBuilder: (context, clothesColorOwnIndex) {
                                  final clothesColorOwnItem =
                                      clothesColorOwn[clothesColorOwnIndex];
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
                                            'OWNED_CLOTHES_COLOR_PAGE_menuItem_ON_TAP');
                                        logFirebaseEvent(
                                            'menuItem_backend_call');

                                        await currentUserReference!
                                            .update(createUsersRecordData(
                                          selectedColorFabric:
                                              clothesColorOwnItem,
                                        ));
                                        logFirebaseEvent(
                                            'menuItem_navigate_to');

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
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              FlutterFlowWebView(
                                                content:
                                                    'https://api.dicebear.com/9.x/avataaars/svg?accessories=${valueOrDefault(currentUserDocument?.selectedAccessories, '')}&accessoriesProbability=${valueOrDefault(currentUserDocument?.selectedAccessories, '') == '' ? '0' : '100'}&clothesColor=$clothesColorOwnItem&clothing=${valueOrDefault(currentUserDocument?.selectedClothes, '')}&eyebrows=${valueOrDefault(currentUserDocument?.selectedEyebrows, '')}&eyes=${valueOrDefault(currentUserDocument?.selectedEyes, '')}&facialHair=${valueOrDefault(currentUserDocument?.selectedFacialHairs, '')}&facialHairColor=${valueOrDefault(currentUserDocument?.selectedFacialHairColors, '')}&facialHairProbability=${valueOrDefault(currentUserDocument?.selectedFacialHairs, '') == '' ? '0' : '100'}&hairColor=${valueOrDefault(currentUserDocument?.selectedHairColors, '')}&hatColor=${valueOrDefault(currentUserDocument?.selectedHatColors, '')}&mouth=${valueOrDefault(currentUserDocument?.selectedMouth, '')}&skinColor=${valueOrDefault(currentUserDocument?.selectedSkin, '')}&top=${valueOrDefault(currentUserDocument?.selectedTop, '')}&topProbability=${valueOrDefault(currentUserDocument?.selectedTop, '') == '' ? '0' : '100'}',
                                                bypass: false,
                                                width: 70.0,
                                                height: 70.0,
                                                verticalScroll: false,
                                                horizontalScroll: false,
                                              ),
                                              Expanded(
                                                child: Padding(
                                                  padding: const EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          8.0, 8.0, 4.0, 0.0),
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Text(
                                                        () {
                                                          if (clothesColorOwnItem ==
                                                              '3c4f5c') {
                                                            return 'Dark Grayish Blue';
                                                          } else if (clothesColorOwnItem ==
                                                              '65c9ff') {
                                                            return 'Light Sky Blue';
                                                          } else if (clothesColorOwnItem ==
                                                              '262e33') {
                                                            return 'ery Dark Grayish Blue';
                                                          } else if (clothesColorOwnItem ==
                                                              '5199e4') {
                                                            return 'Medium Sky Blue';
                                                          } else if (clothesColorOwnItem ==
                                                              '25557c') {
                                                            return ' Dark Cerulean Blue';
                                                          } else if (clothesColorOwnItem ==
                                                              '929598') {
                                                            return 'Grayish';
                                                          } else if (clothesColorOwnItem ==
                                                              'a7ffc4') {
                                                            return 'Light Mint Green';
                                                          } else if (clothesColorOwnItem ==
                                                              'b1e2ff') {
                                                            return 'Pale Light Blue';
                                                          } else if (clothesColorOwnItem ==
                                                              'e6e6e6') {
                                                            return 'Light Gray';
                                                          } else if (clothesColorOwnItem ==
                                                              'ff5c5c') {
                                                            return 'Soft Red';
                                                          } else if (clothesColorOwnItem ==
                                                              'ff488e') {
                                                            return 'Bright Pinkish Red';
                                                          } else if (clothesColorOwnItem ==
                                                              'ffafb9') {
                                                            return 'Light Pink';
                                                          } else if (clothesColorOwnItem ==
                                                              'ffffb1') {
                                                            return 'Light Yellow';
                                                          } else if (clothesColorOwnItem ==
                                                              'ffffff') {
                                                            return 'White';
                                                          } else {
                                                            return 'Error';
                                                          }
                                                        }(),
                                                        style: FlutterFlowTheme
                                                                .of(context)
                                                            .headlineSmall
                                                            .override(
                                                              fontFamily:
                                                                  'Outfit',
                                                              color: const Color(
                                                                  0xFF0F1113),
                                                              fontSize: 20.0,
                                                              letterSpacing:
                                                                  0.0,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .normal,
                                                            ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                              const Column(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.end,
                                                children: [
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 4.0,
                                                                0.0, 0.0),
                                                    child: Icon(
                                                      Icons
                                                          .chevron_right_rounded,
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
                              ).animateOnPageLoad(animationsMap[
                                  'listViewOnPageLoadAnimation']!);
                            },
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
