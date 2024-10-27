import '/auth/firebase_auth/auth_util.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';
import 'main_shop_model.dart';
export 'main_shop_model.dart';

class MainShopWidget extends StatefulWidget {
  const MainShopWidget({super.key});

  @override
  State<MainShopWidget> createState() => _MainShopWidgetState();
}

class _MainShopWidgetState extends State<MainShopWidget>
    with TickerProviderStateMixin {
  late MainShopModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = <String, AnimationInfo>{};

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MainShopModel());

    logFirebaseEvent('screen_view', parameters: {'screen_name': 'MainShop'});
    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      logFirebaseEvent('MAIN_SHOP_PAGE_MainShop_ON_INIT_STATE');
      logFirebaseEvent('MainShop_update_app_state');

      safeSetState(() {});
    });

    animationsMap.addAll({
      'columnOnPageLoadAnimation': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.linear,
            delay: 0.0.ms,
            duration: 950.0.ms,
            begin: 0.0,
            end: 1.0,
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
    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 25.0, 0.0, 0.0),
                child: GradientText(
                  'Shop',
                  style: FlutterFlowTheme.of(context).titleLarge.override(
                        fontFamily: 'Outfit',
                        fontSize: 50.0,
                        letterSpacing: 0.0,
                      ),
                  colors: [
                    FlutterFlowTheme.of(context).primary,
                    FlutterFlowTheme.of(context).secondary
                  ],
                  gradientDirection: GradientDirection.ltr,
                  gradientType: GradientType.linear,
                ),
              ),
              Flexible(
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    if ((valueOrDefault(currentUserDocument?.selectedTop, '') !=
                            'Turban') ||
                        (valueOrDefault(currentUserDocument?.selectedTop, '') !=
                            'Hijab') ||
                        (valueOrDefault(currentUserDocument?.selectedTop, '') !=
                            'WinterHat1') ||
                        (valueOrDefault(currentUserDocument?.selectedTop, '') !=
                            'WinterHat2') ||
                        (valueOrDefault(currentUserDocument?.selectedTop, '') !=
                            'WinterHat3') ||
                        (valueOrDefault(
                                currentUserDocument?.selectedTop, '') !=
                            'WinterHat4') ||
                        (valueOrDefault(currentUserDocument?.selectedTop, '') !=
                            'NoHair') ||
                        (valueOrDefault(currentUserDocument?.selectedTop, '') !=
                            'Eyepatch') ||
                        (valueOrDefault(currentUserDocument?.selectedTop, '') !=
                            'Hat'))
                      Flexible(
                        child: Align(
                          alignment: const AlignmentDirectional(0.0, 0.0),
                          child: Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 15.0, 0.0, 5.0),
                            child: AuthUserStreamWidget(
                              builder: (context) => FFButtonWidget(
                                onPressed: () async {
                                  logFirebaseEvent(
                                      'MAIN_SHOP_PAGE_HAIR_COLOR_BTN_ON_TAP');
                                  logFirebaseEvent('Button_navigate_to');

                                  context.pushNamed('HairColorsShop');
                                },
                                text: 'Hair Color',
                                icon: const Icon(
                                  Icons.face,
                                  size: 24.0,
                                ),
                                options: FFButtonOptions(
                                  width: 300.0,
                                  height: 50.0,
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      24.0, 0.0, 24.0, 0.0),
                                  iconPadding: const EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 0.0),
                                  color: FlutterFlowTheme.of(context).primary,
                                  textStyle: FlutterFlowTheme.of(context)
                                      .titleSmall
                                      .override(
                                        fontFamily: 'Open Sans',
                                        color: Colors.white,
                                        letterSpacing: 0.0,
                                      ),
                                  elevation: 3.0,
                                  borderSide: const BorderSide(
                                    color: Colors.transparent,
                                    width: 1.0,
                                  ),
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 5.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    if ((valueOrDefault(currentUserDocument?.selectedTop, '') ==
                            'Turban') ||
                        (valueOrDefault(currentUserDocument?.selectedTop, '') ==
                            'Hijab') ||
                        (valueOrDefault(currentUserDocument?.selectedTop, '') ==
                            'WinterHat1') ||
                        (valueOrDefault(currentUserDocument?.selectedTop, '') ==
                            'WinterHat2') ||
                        (valueOrDefault(currentUserDocument?.selectedTop, '') ==
                            'WinterHat3') ||
                        (valueOrDefault(currentUserDocument?.selectedTop, '') ==
                            'WinterHat4'))
                      Flexible(
                        child: Align(
                          alignment: const AlignmentDirectional(0.0, 0.0),
                          child: AuthUserStreamWidget(
                            builder: (context) => FFButtonWidget(
                              onPressed: () async {
                                logFirebaseEvent(
                                    'MAIN_SHOP_PAGE_HAT_COLOR_BTN_ON_TAP');
                                logFirebaseEvent('Button_navigate_to');

                                context.pushNamed('HatColorsShop');
                              },
                              text: 'Hat Color',
                              icon: const FaIcon(
                                FontAwesomeIcons.hatCowboy,
                                size: 15.0,
                              ),
                              options: FFButtonOptions(
                                width: 300.0,
                                height: 50.0,
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    24.0, 0.0, 24.0, 0.0),
                                iconPadding: const EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 0.0),
                                color: FlutterFlowTheme.of(context).primary,
                                textStyle: FlutterFlowTheme.of(context)
                                    .titleSmall
                                    .override(
                                      fontFamily: 'Open Sans',
                                      color: Colors.white,
                                      letterSpacing: 0.0,
                                    ),
                                elevation: 3.0,
                                borderSide: const BorderSide(
                                  color: Colors.transparent,
                                  width: 1.0,
                                ),
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                            ),
                          ),
                        ),
                      ),
                  ],
                ),
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Flexible(
                    child: Align(
                      alignment: const AlignmentDirectional(0.0, 0.0),
                      child: AuthUserStreamWidget(
                        builder: (context) => FFButtonWidget(
                          onPressed: (valueOrDefault(
                                      currentUserDocument?.selectedTop, '') ==
                                  'Hijab')
                              ? null
                              : () async {
                                  logFirebaseEvent(
                                      'MAIN_SHOP_PAGE_FACIAL_HAIR_BTN_ON_TAP');
                                  logFirebaseEvent('Button_navigate_to');

                                  context.pushNamed('FacialHairShop');
                                },
                          text: 'Facial Hair',
                          icon: const FaIcon(
                            FontAwesomeIcons.solidHandScissors,
                            size: 15.0,
                          ),
                          options: FFButtonOptions(
                            width: 300.0,
                            height: 50.0,
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                24.0, 0.0, 24.0, 0.0),
                            iconPadding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 0.0),
                            color: FlutterFlowTheme.of(context).primary,
                            textStyle: FlutterFlowTheme.of(context)
                                .titleSmall
                                .override(
                                  fontFamily: 'Open Sans',
                                  color: Colors.white,
                                  letterSpacing: 0.0,
                                ),
                            elevation: 3.0,
                            borderSide: const BorderSide(
                              color: Colors.transparent,
                              width: 1.0,
                            ),
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Flexible(
                    child: Align(
                      alignment: const AlignmentDirectional(0.0, 0.0),
                      child: Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 5.0, 0.0, 5.0),
                        child: FFButtonWidget(
                          onPressed: () async {
                            logFirebaseEvent(
                                'MAIN_SHOP_PAGE_CLOTHES_BTN_ON_TAP');
                            logFirebaseEvent('Button_navigate_to');

                            context.pushNamed('ClothesShop');
                          },
                          text: 'Clothes',
                          icon: const FaIcon(
                            FontAwesomeIcons.tshirt,
                            size: 15.0,
                          ),
                          options: FFButtonOptions(
                            width: 300.0,
                            height: 50.0,
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                24.0, 0.0, 24.0, 0.0),
                            iconPadding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 0.0),
                            color: FlutterFlowTheme.of(context).primary,
                            textStyle: FlutterFlowTheme.of(context)
                                .titleSmall
                                .override(
                                  fontFamily: 'Open Sans',
                                  color: Colors.white,
                                  letterSpacing: 0.0,
                                ),
                            elevation: 3.0,
                            borderSide: const BorderSide(
                              color: Colors.transparent,
                              width: 1.0,
                            ),
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Flexible(
                    child: Align(
                      alignment: const AlignmentDirectional(0.0, 0.0),
                      child: Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 5.0),
                        child: FFButtonWidget(
                          onPressed: () async {
                            logFirebaseEvent('MAIN_SHOP_PAGE_EYES_BTN_ON_TAP');
                            logFirebaseEvent('Button_navigate_to');

                            context.pushNamed('EyeShop');
                          },
                          text: 'Eyes',
                          icon: const FaIcon(
                            FontAwesomeIcons.eye,
                            size: 15.0,
                          ),
                          options: FFButtonOptions(
                            width: 300.0,
                            height: 50.0,
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                24.0, 0.0, 24.0, 0.0),
                            iconPadding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 0.0),
                            color: FlutterFlowTheme.of(context).primary,
                            textStyle: FlutterFlowTheme.of(context)
                                .titleSmall
                                .override(
                                  fontFamily: 'Open Sans',
                                  color: Colors.white,
                                  letterSpacing: 0.0,
                                ),
                            elevation: 3.0,
                            borderSide: const BorderSide(
                              color: Colors.transparent,
                              width: 1.0,
                            ),
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Flexible(
                    child: Align(
                      alignment: const AlignmentDirectional(0.0, 0.0),
                      child: FFButtonWidget(
                        onPressed: () async {
                          logFirebaseEvent('MAIN_SHOP_PAGE_MOUTH_BTN_ON_TAP');
                          logFirebaseEvent('Button_navigate_to');

                          context.pushNamed('MouthShop');
                        },
                        text: 'Mouth',
                        icon: const FaIcon(
                          FontAwesomeIcons.monument,
                          size: 15.0,
                        ),
                        options: FFButtonOptions(
                          width: 300.0,
                          height: 50.0,
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              24.0, 0.0, 24.0, 0.0),
                          iconPadding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 0.0),
                          color: FlutterFlowTheme.of(context).primary,
                          textStyle:
                              FlutterFlowTheme.of(context).titleSmall.override(
                                    fontFamily: 'Open Sans',
                                    color: Colors.white,
                                    letterSpacing: 0.0,
                                  ),
                          elevation: 3.0,
                          borderSide: const BorderSide(
                            color: Colors.transparent,
                            width: 1.0,
                          ),
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 5.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Flexible(
                      child: Align(
                        alignment: const AlignmentDirectional(0.0, 0.0),
                        child: Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 5.0, 0.0, 0.0),
                          child: FFButtonWidget(
                            onPressed: () async {
                              logFirebaseEvent(
                                  'MAIN_SHOP_PAGE_TOPS_BTN_ON_TAP');
                              logFirebaseEvent('Button_navigate_to');

                              context.pushNamed('TopsShop');
                            },
                            text: 'Tops',
                            icon: const FaIcon(
                              FontAwesomeIcons.blackTie,
                              size: 15.0,
                            ),
                            options: FFButtonOptions(
                              width: 300.0,
                              height: 50.0,
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  24.0, 0.0, 24.0, 0.0),
                              iconPadding: const EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 0.0),
                              color: FlutterFlowTheme.of(context).primary,
                              textStyle: FlutterFlowTheme.of(context)
                                  .titleSmall
                                  .override(
                                    fontFamily: 'Open Sans',
                                    color: Colors.white,
                                    letterSpacing: 0.0,
                                  ),
                              elevation: 3.0,
                              borderSide: const BorderSide(
                                color: Colors.transparent,
                                width: 1.0,
                              ),
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 5.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Flexible(
                      child: Align(
                        alignment: const AlignmentDirectional(0.0, 0.0),
                        child: AuthUserStreamWidget(
                          builder: (context) => FFButtonWidget(
                            onPressed: ((valueOrDefault(
                                            currentUserDocument
                                                ?.selectedFacialHairs,
                                            '') ==
                                        'Blank') &&
                                    (valueOrDefault(
                                            currentUserDocument?.selectedTop,
                                            '') ==
                                        'Hijab'))
                                ? null
                                : () async {
                                    logFirebaseEvent(
                                        'MAIN_SHOP_FACIAL_HAIR_COLOR_BTN_ON_TAP');
                                    logFirebaseEvent('Button_navigate_to');

                                    context.pushNamed('FacialHairColorShop');
                                  },
                            text: 'Facial Hair Color',
                            icon: const FaIcon(
                              FontAwesomeIcons.eyeDropper,
                              size: 15.0,
                            ),
                            options: FFButtonOptions(
                              width: 300.0,
                              height: 50.0,
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  24.0, 0.0, 24.0, 0.0),
                              iconPadding: const EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 0.0),
                              color: FlutterFlowTheme.of(context).primary,
                              textStyle: FlutterFlowTheme.of(context)
                                  .titleSmall
                                  .override(
                                    fontFamily: 'Open Sans',
                                    color: Colors.white,
                                    letterSpacing: 0.0,
                                  ),
                              elevation: 3.0,
                              borderSide: const BorderSide(
                                color: Colors.transparent,
                                width: 1.0,
                              ),
                              borderRadius: BorderRadius.circular(8.0),
                              disabledColor: const Color(0xFF666262),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 5.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Flexible(
                      child: Align(
                        alignment: const AlignmentDirectional(0.0, 0.0),
                        child: FFButtonWidget(
                          onPressed: () async {
                            logFirebaseEvent(
                                'MAIN_SHOP_PAGE_EYEBROW_BTN_ON_TAP');
                            logFirebaseEvent('Button_navigate_to');

                            context.pushNamed('EyebrowShop');
                          },
                          text: 'Eyebrow',
                          icon: const FaIcon(
                            FontAwesomeIcons.paintBrush,
                            size: 15.0,
                          ),
                          options: FFButtonOptions(
                            width: 300.0,
                            height: 50.0,
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                24.0, 0.0, 24.0, 0.0),
                            iconPadding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 0.0),
                            color: FlutterFlowTheme.of(context).primary,
                            textStyle: FlutterFlowTheme.of(context)
                                .titleSmall
                                .override(
                                  fontFamily: 'Open Sans',
                                  color: Colors.white,
                                  letterSpacing: 0.0,
                                ),
                            elevation: 3.0,
                            borderSide: const BorderSide(
                              color: Colors.transparent,
                              width: 1.0,
                            ),
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 5.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    if (valueOrDefault(currentUserDocument?.selectedTop, '') !=
                        'Eyepatch')
                      Flexible(
                        child: Align(
                          alignment: const AlignmentDirectional(0.0, 0.0),
                          child: AuthUserStreamWidget(
                            builder: (context) => FFButtonWidget(
                              onPressed: (valueOrDefault(
                                          currentUserDocument?.selectedTop,
                                          '') ==
                                      'Eyepatch')
                                  ? null
                                  : () async {
                                      logFirebaseEvent(
                                          'MAIN_SHOP_PAGE_ACCESSORIES_BTN_ON_TAP');
                                      logFirebaseEvent('Button_navigate_to');

                                      context.pushNamed('AccessoryShop');
                                    },
                              text: 'Accessories',
                              icon: const FaIcon(
                                FontAwesomeIcons.glasses,
                                size: 15.0,
                              ),
                              options: FFButtonOptions(
                                width: 300.0,
                                height: 50.0,
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    24.0, 0.0, 24.0, 0.0),
                                iconPadding: const EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 0.0),
                                color: FlutterFlowTheme.of(context).primary,
                                textStyle: FlutterFlowTheme.of(context)
                                    .titleSmall
                                    .override(
                                      fontFamily: 'Open Sans',
                                      color: Colors.white,
                                      letterSpacing: 0.0,
                                    ),
                                elevation: 3.0,
                                borderSide: const BorderSide(
                                  color: Colors.transparent,
                                  width: 1.0,
                                ),
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                            ),
                          ),
                        ),
                      ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 5.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Flexible(
                      child: Align(
                        alignment: const AlignmentDirectional(0.0, 0.0),
                        child: FFButtonWidget(
                          onPressed: () async {
                            logFirebaseEvent(
                                'MAIN_SHOP_PAGE_CLOTHING_COLOR_BTN_ON_TAP');
                            logFirebaseEvent('Button_navigate_to');

                            context.goNamed('ClothesColorShop');
                          },
                          text: 'Clothing Color',
                          icon: const FaIcon(
                            FontAwesomeIcons.fillDrip,
                            size: 15.0,
                          ),
                          options: FFButtonOptions(
                            width: 300.0,
                            height: 50.0,
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                24.0, 0.0, 24.0, 0.0),
                            iconPadding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 0.0),
                            color: FlutterFlowTheme.of(context).primary,
                            textStyle: FlutterFlowTheme.of(context)
                                .titleSmall
                                .override(
                                  fontFamily: 'Open Sans',
                                  color: Colors.white,
                                  letterSpacing: 0.0,
                                ),
                            elevation: 3.0,
                            borderSide: const BorderSide(
                              color: Colors.transparent,
                              width: 1.0,
                            ),
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ).animateOnPageLoad(animationsMap['columnOnPageLoadAnimation']!),
      ),
    );
  }
}
