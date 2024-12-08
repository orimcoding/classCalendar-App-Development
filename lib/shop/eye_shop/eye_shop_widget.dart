import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_web_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'eye_shop_model.dart';
export 'eye_shop_model.dart';

class EyeShopWidget extends StatefulWidget {
  const EyeShopWidget({super.key});

  @override
  State<EyeShopWidget> createState() => _EyeShopWidgetState();
}

class _EyeShopWidgetState extends State<EyeShopWidget>
    with TickerProviderStateMixin {
  late EyeShopModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = <String, AnimationInfo>{};

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => EyeShopModel());

    logFirebaseEvent('screen_view', parameters: {'screen_name': 'EyeShop'});
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
      'imageOnPageLoadAnimation': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          RotateEffect(
            curve: Curves.easeOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
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
              logFirebaseEvent('EYE_SHOP_PAGE_Icon_t7mfq5j6_ON_TAP');
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
            'Eye Type',
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
              padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 5.0, 0.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8.0),
                child: Image.asset(
                  'assets/images/Untitled_design_(7)-Photoroom.png',
                  width: 60.0,
                  height: 60.0,
                  fit: BoxFit.cover,
                ),
              ).animateOnPageLoad(animationsMap['imageOnPageLoadAnimation']!),
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
                              'Choose an eye type below.',
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
                              final eyesShop =
                                  (currentUserDocument?.shopEyes.toList() ??
                                          [])
                                      .toList();

                              return ListView.builder(
                                padding: EdgeInsets.zero,
                                primary: false,
                                shrinkWrap: true,
                                scrollDirection: Axis.vertical,
                                itemCount: eyesShop.length,
                                itemBuilder: (context, eyesShopIndex) {
                                  final eyesShopItem = eyesShop[eyesShopIndex];
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
                                            'EYE_SHOP_PAGE_menuItem_ON_TAP');
                                        if (valueOrDefault(
                                                currentUserDocument?.coins,
                                                0) >=
                                            valueOrDefault<int>(
                                              () {
                                                if ((eyesShopItem == 'cry') ||
                                                    (eyesShopItem ==
                                                        'xDizzy') ||
                                                    (eyesShopItem == 'happy') ||
                                                    (eyesShopItem == 'side') ||
                                                    (eyesShopItem ==
                                                        'surprised')) {
                                                  return 10;
                                                } else if ((eyesShopItem ==
                                                        'eyeRoll') ||
                                                    (eyesShopItem ==
                                                        'hearts') ||
                                                    (eyesShopItem ==
                                                        'winkWacky')) {
                                                  return 15;
                                                } else if ((eyesShopItem ==
                                                        'squint') ||
                                                    (eyesShopItem == 'wink') ||
                                                    (eyesShopItem == 'close')) {
                                                  return 5;
                                                } else {
                                                  return 0;
                                                }
                                              }(),
                                              1,
                                            )) {
                                          logFirebaseEvent(
                                              'menuItem_backend_call');

                                          await currentUserReference!.update({
                                            ...mapToFirestore(
                                              {
                                                'coins': FieldValue.increment(
                                                    -(valueOrDefault<int>(
                                                  () {
                                                    if ((eyesShopItem ==
                                                            'Cry') ||
                                                        (eyesShopItem ==
                                                            'Dizzy') ||
                                                        (eyesShopItem ==
                                                            'Happy') ||
                                                        (eyesShopItem ==
                                                            'Side') ||
                                                        (eyesShopItem ==
                                                            'Surprised')) {
                                                      return 10;
                                                    } else if ((eyesShopItem ==
                                                            'EyeRoll') ||
                                                        (eyesShopItem ==
                                                            'Hearts') ||
                                                        (eyesShopItem ==
                                                            'WinkWacky')) {
                                                      return 15;
                                                    } else if ((eyesShopItem ==
                                                            'Squint') ||
                                                        (eyesShopItem ==
                                                            'Wink') ||
                                                        (eyesShopItem ==
                                                            'Close')) {
                                                      return 5;
                                                    } else {
                                                      return 0;
                                                    }
                                                  }(),
                                                  1,
                                                ))),
                                              },
                                            ),
                                          });
                                          logFirebaseEvent(
                                              'menuItem_backend_call');

                                          await currentUserReference!.update({
                                            ...mapToFirestore(
                                              {
                                                'ownedEyes':
                                                    FieldValue.arrayUnion(
                                                        [eyesShopItem]),
                                                'shopEyes':
                                                    FieldValue.arrayRemove(
                                                        [eyesShopItem]),
                                              },
                                            ),
                                          });
                                          logFirebaseEvent(
                                              'menuItem_show_snack_bar');
                                          ScaffoldMessenger.of(context)
                                              .showSnackBar(
                                            SnackBar(
                                              content: Text(
                                                'You successfully purchased this item!',
                                                style: TextStyle(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primaryText,
                                                ),
                                              ),
                                              duration:
                                                  const Duration(milliseconds: 4000),
                                              backgroundColor:
                                                  FlutterFlowTheme.of(context)
                                                      .secondary,
                                            ),
                                          );
                                        } else {
                                          logFirebaseEvent(
                                              'menuItem_show_snack_bar');
                                          ScaffoldMessenger.of(context)
                                              .showSnackBar(
                                            SnackBar(
                                              content: Text(
                                                'Collect additional coins to unlock this purchase',
                                                style: TextStyle(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primaryText,
                                                ),
                                              ),
                                              duration:
                                                  const Duration(milliseconds: 4000),
                                              backgroundColor:
                                                  FlutterFlowTheme.of(context)
                                                      .secondary,
                                            ),
                                          );
                                        }

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
                                                    'https://api.dicebear.com/9.x/avataaars/svg?accessories=${valueOrDefault(currentUserDocument?.selectedAccessories, '')}&accessoriesProbability=${valueOrDefault(currentUserDocument?.selectedAccessories, '') == '' ? '0' : '100'}&clothesColor=${valueOrDefault(currentUserDocument?.selectedColorFabric, '')}&clothing=${valueOrDefault(currentUserDocument?.selectedClothes, '')}&eyebrows=${valueOrDefault(currentUserDocument?.selectedEyebrows, '')}&eyes=$eyesShopItem&facialHair=${valueOrDefault(currentUserDocument?.selectedFacialHairs, '')}&facialHairColor=${valueOrDefault(currentUserDocument?.selectedFacialHairColors, '')}&facialHairProbability=${valueOrDefault(currentUserDocument?.selectedFacialHairs, '') == '' ? '0' : '100'}&hairColor=${valueOrDefault(currentUserDocument?.selectedHairColors, '')}&hatColor=${valueOrDefault(currentUserDocument?.selectedHatColors, '')}&mouth=${valueOrDefault(currentUserDocument?.selectedMouth, '')}&skinColor=${valueOrDefault(currentUserDocument?.selectedSkin, '')}&top=${valueOrDefault(currentUserDocument?.selectedTop, '')}&topProbability=${valueOrDefault(currentUserDocument?.selectedTop, '') == '' ? '0' : '100'}',
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
                                                        eyesShopItem,
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
                                              Column(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.end,
                                                children: [
                                                  Text(
                                                    valueOrDefault<String>(
                                                      () {
                                                        if ((eyesShopItem ==
                                                                'cry') ||
                                                            (eyesShopItem ==
                                                                'xDizzy') ||
                                                            (eyesShopItem ==
                                                                'happy') ||
                                                            (eyesShopItem ==
                                                                'side') ||
                                                            (eyesShopItem ==
                                                                'surprised')) {
                                                          return 10;
                                                        } else if ((eyesShopItem ==
                                                                'eyeRoll') ||
                                                            (eyesShopItem ==
                                                                'hearts') ||
                                                            (eyesShopItem ==
                                                                'winkWacky')) {
                                                          return 15;
                                                        } else if ((eyesShopItem ==
                                                                'squint') ||
                                                            (eyesShopItem ==
                                                                'wink') ||
                                                            (eyesShopItem ==
                                                                'close')) {
                                                          return 5;
                                                        } else {
                                                          return 0;
                                                        }
                                                      }()
                                                          .toString(),
                                                      '1',
                                                    ),
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Outfit',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
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
