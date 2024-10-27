import '/auth/firebase_auth/auth_util.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_web_view.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';
import 'test_profile_model.dart';
export 'test_profile_model.dart';

class TestProfileWidget extends StatefulWidget {
  const TestProfileWidget({super.key});

  @override
  State<TestProfileWidget> createState() => _TestProfileWidgetState();
}

class _TestProfileWidgetState extends State<TestProfileWidget>
    with TickerProviderStateMixin {
  late TestProfileModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = <String, AnimationInfo>{};

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => TestProfileModel());

    logFirebaseEvent('screen_view', parameters: {'screen_name': 'TestProfile'});
    animationsMap.addAll({
      'listViewOnPageLoadAnimation': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: const Offset(0.0, 0.0),
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
        body: SafeArea(
          top: true,
          child: ListView(
            padding: EdgeInsets.zero,
            shrinkWrap: true,
            scrollDirection: Axis.vertical,
            children: [
              Align(
                alignment: const AlignmentDirectional(0.0, 0.0),
                child: GradientText(
                  'Profile',
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
              Align(
                alignment: const AlignmentDirectional(0.0, 0.0),
                child: AuthUserStreamWidget(
                  builder: (context) => FlutterFlowWebView(
                    content:
                        'https://avataaars.io/?avatarStyle=Circle&topType=${valueOrDefault(currentUserDocument?.selectedTop, '')}&accessoriesType=${valueOrDefault(currentUserDocument?.selectedAccessories, '')}&hairColor=${valueOrDefault(currentUserDocument?.selectedHairColors, '')}&facialHairType=${valueOrDefault(currentUserDocument?.selectedFacialHairs, '')}&clotheType=${valueOrDefault(currentUserDocument?.selectedClothes, '')}&eyeType=${valueOrDefault(currentUserDocument?.selectedEyes, '')}&eyebrowType=${valueOrDefault(currentUserDocument?.selectedEyebrows, '')}&mouthType=${valueOrDefault(currentUserDocument?.selectedMouth, '')}&skinColor=${valueOrDefault(currentUserDocument?.selectedSkin, '')}&hatColor=${valueOrDefault(currentUserDocument?.selectedHatColors, '')}&facialHairColor=${valueOrDefault(currentUserDocument?.selectedFacialHairColors, '')}&clotheColor=${valueOrDefault(currentUserDocument?.selectedColorFabric, '')}',
                    bypass: false,
                    width: 237.0,
                    height: 178.0,
                    verticalScroll: true,
                    horizontalScroll: true,
                  ),
                ),
              ),
              Align(
                alignment: const AlignmentDirectional(0.0, 0.0),
                child: AuthUserStreamWidget(
                  builder: (context) => Text(
                    currentUserDisplayName,
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Outfit',
                          fontSize: 20.0,
                          letterSpacing: 0.0,
                        ),
                  ),
                ),
              ),
              Align(
                alignment: const AlignmentDirectional(0.0, 0.0),
                child: AuthUserStreamWidget(
                  builder: (context) => Text(
                    valueOrDefault(currentUserDocument?.selectedGrade, ''),
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Outfit',
                          fontSize: 20.0,
                          letterSpacing: 0.0,
                        ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(50.0, 10.0, 50.0, 10.0),
                child: FlutterFlowIconButton(
                  borderColor: Colors.transparent,
                  borderRadius: 300.0,
                  borderWidth: 1.0,
                  buttonSize: 40.0,
                  fillColor: FlutterFlowTheme.of(context).accent1,
                  icon: Icon(
                    Icons.shopping_cart,
                    color: FlutterFlowTheme.of(context).primaryText,
                    size: 24.0,
                  ),
                  onPressed: () async {
                    logFirebaseEvent('TEST_PROFILE_shopping_cart_ICN_ON_TAP');
                    logFirebaseEvent('IconButton_navigate_to');

                    context.pushNamed('MainShop');
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Flexible(
                      child: Align(
                        alignment: const AlignmentDirectional(0.0, 0.0),
                        child: FFButtonWidget(
                          onPressed: () async {
                            logFirebaseEvent(
                                'TEST_PROFILE_PAGE_TOPS_BTN_ON_TAP');
                            logFirebaseEvent('Button_navigate_to');

                            context.pushNamed('OwnedTops');
                          },
                          text: 'Tops',
                          icon: const FaIcon(
                            FontAwesomeIcons.blackTie,
                            size: 15.0,
                          ),
                          options: FFButtonOptions(
                            width: 300.0,
                            height: 55.0,
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
                    Flexible(
                      child: Align(
                        alignment: const AlignmentDirectional(0.0, 0.0),
                        child: AuthUserStreamWidget(
                          builder: (context) => FFButtonWidget(
                            onPressed: (valueOrDefault(
                                        currentUserDocument?.selectedTop, '') ==
                                    'Eyepatch')
                                ? null
                                : () async {
                                    logFirebaseEvent(
                                        'TEST_PROFILE_PAGE_ACCESSORIES_BTN_ON_TAP');
                                    logFirebaseEvent('Button_navigate_to');

                                    context.pushNamed('OwnedAccesssories');
                                  },
                            text: 'Accessories',
                            icon: const FaIcon(
                              FontAwesomeIcons.glasses,
                              size: 15.0,
                            ),
                            options: FFButtonOptions(
                              width: 300.0,
                              height: 55.0,
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
                              disabledColor: const Color(0xFF706767),
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
                          onPressed: ((valueOrDefault(
                                          currentUserDocument?.selectedTop,
                                          '') ==
                                      'Turban') ||
                                  (valueOrDefault(
                                          currentUserDocument?.selectedTop,
                                          '') ==
                                      'Hijab') ||
                                  (valueOrDefault(
                                          currentUserDocument?.selectedTop,
                                          '') ==
                                      'WinterHat1') ||
                                  (valueOrDefault(
                                          currentUserDocument?.selectedTop,
                                          '') ==
                                      'WinterHat2') ||
                                  (valueOrDefault(
                                          currentUserDocument?.selectedTop,
                                          '') ==
                                      'WinterHat3') ||
                                  (valueOrDefault(
                                          currentUserDocument?.selectedTop,
                                          '') ==
                                      'WinterHat4') ||
                                  (valueOrDefault(
                                          currentUserDocument?.selectedTop,
                                          '') ==
                                      'NoHair') ||
                                  (valueOrDefault(
                                          currentUserDocument?.selectedTop,
                                          '') ==
                                      'Eyepatch') ||
                                  (valueOrDefault(
                                          currentUserDocument?.selectedTop,
                                          '') ==
                                      'Hat'))
                              ? null
                              : () async {
                                  logFirebaseEvent(
                                      'TEST_PROFILE_PAGE_HAIR_COLOR_BTN_ON_TAP');
                                  logFirebaseEvent('Button_navigate_to');

                                  context.pushNamed('OwnedHairColors');
                                },
                          text: 'Hair Color',
                          icon: const Icon(
                            Icons.face,
                            size: 24.0,
                          ),
                          options: FFButtonOptions(
                            width: 300.0,
                            height: 55.0,
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
                            disabledColor: const Color(0xFF706767),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Flexible(
                    child: Align(
                      alignment: const AlignmentDirectional(0.0, 0.0),
                      child: AuthUserStreamWidget(
                        builder: (context) => FFButtonWidget(
                          onPressed: !((valueOrDefault(
                                          currentUserDocument?.selectedTop,
                                          '') ==
                                      'Turban') ||
                                  (valueOrDefault(
                                          currentUserDocument?.selectedTop,
                                          '') ==
                                      'Hijab') ||
                                  (valueOrDefault(
                                          currentUserDocument?.selectedTop,
                                          '') ==
                                      'WinterHat1') ||
                                  (valueOrDefault(
                                          currentUserDocument?.selectedTop,
                                          '') ==
                                      'WinterHat2') ||
                                  (valueOrDefault(
                                          currentUserDocument?.selectedTop,
                                          '') ==
                                      'WinterHat3') ||
                                  (valueOrDefault(
                                          currentUserDocument?.selectedTop,
                                          '') ==
                                      'WinterHat4'))
                              ? null
                              : () async {
                                  logFirebaseEvent(
                                      'TEST_PROFILE_PAGE_HAT_COLOR_BTN_ON_TAP');
                                  logFirebaseEvent('Button_navigate_to');

                                  context.pushNamed('OwnedHatColors');
                                },
                          text: 'Hat Color',
                          icon: const FaIcon(
                            FontAwesomeIcons.hatCowboy,
                            size: 15.0,
                          ),
                          options: FFButtonOptions(
                            width: 300.0,
                            height: 55.0,
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
                            disabledColor: const Color(0xFF706767),
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
                      child: AuthUserStreamWidget(
                        builder: (context) => FFButtonWidget(
                          onPressed: (valueOrDefault(
                                      currentUserDocument?.selectedTop, '') ==
                                  'Hijab')
                              ? null
                              : () async {
                                  logFirebaseEvent(
                                      'TEST_PROFILE_PAGE_FACIAL_HAIR_BTN_ON_TAP');
                                  logFirebaseEvent('Button_navigate_to');

                                  context.pushNamed('OwnedFacialHair');
                                },
                          text: 'Facial Hair',
                          icon: const FaIcon(
                            FontAwesomeIcons.solidHandScissors,
                            size: 15.0,
                          ),
                          options: FFButtonOptions(
                            width: 300.0,
                            height: 55.0,
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
                            disabledColor: const Color(0xFF706767),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Flexible(
                    child: Align(
                      alignment: const AlignmentDirectional(0.0, 0.0),
                      child: AuthUserStreamWidget(
                        builder: (context) => FFButtonWidget(
                          onPressed: ((valueOrDefault(
                                          currentUserDocument
                                              ?.selectedFacialHairs,
                                          '') ==
                                      'Blank') ||
                                  (valueOrDefault(
                                          currentUserDocument?.selectedTop,
                                          '') ==
                                      'Hijab'))
                              ? null
                              : () async {
                                  logFirebaseEvent(
                                      'TEST_PROFILE_FACIAL_HAIR_COLOR_BTN_ON_TA');
                                  logFirebaseEvent('Button_navigate_to');

                                  context.pushNamed('OwnedFacialHairColor');
                                },
                          text: 'Facial Hair Color',
                          icon: const FaIcon(
                            FontAwesomeIcons.eyeDropper,
                            size: 15.0,
                          ),
                          options: FFButtonOptions(
                            width: 300.0,
                            height: 55.0,
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
                            disabledColor: const Color(0xFF706767),
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
                          logFirebaseEvent(
                              'TEST_PROFILE_PAGE_CLOTHES_BTN_ON_TAP');
                          logFirebaseEvent('Button_navigate_to');

                          context.pushNamed('OwnedClothes');
                        },
                        text: 'Clothes',
                        icon: const FaIcon(
                          FontAwesomeIcons.tshirt,
                          size: 15.0,
                        ),
                        options: FFButtonOptions(
                          width: 300.0,
                          height: 55.0,
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
                  Flexible(
                    child: Align(
                      alignment: const AlignmentDirectional(0.0, 0.0),
                      child: AuthUserStreamWidget(
                        builder: (context) => FFButtonWidget(
                          onPressed: ((valueOrDefault(
                                          currentUserDocument?.selectedClothes,
                                          '') ==
                                      'BlazerShirt') ||
                                  (valueOrDefault(
                                          currentUserDocument?.selectedClothes,
                                          '') ==
                                      'BlazerSweater'))
                              ? null
                              : () async {
                                  logFirebaseEvent(
                                      'TEST_PROFILE_CLOTHING_COLOR_BTN_ON_TAP');
                                  logFirebaseEvent('Button_navigate_to');

                                  context.pushNamed('OwnedClothesColor');
                                },
                          text: 'Clothing Color',
                          icon: const FaIcon(
                            FontAwesomeIcons.fillDrip,
                            size: 15.0,
                          ),
                          options: FFButtonOptions(
                            width: 300.0,
                            height: 55.0,
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
                            disabledColor: const Color(0xFF706767),
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
                          logFirebaseEvent('TEST_PROFILE_PAGE_EYES_BTN_ON_TAP');
                          logFirebaseEvent('Button_navigate_to');

                          context.pushNamed('OwnedEyes');
                        },
                        text: 'Eyes',
                        icon: const FaIcon(
                          FontAwesomeIcons.eye,
                          size: 15.0,
                        ),
                        options: FFButtonOptions(
                          width: 300.0,
                          height: 55.0,
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
                  Flexible(
                    child: Align(
                      alignment: const AlignmentDirectional(0.0, 0.0),
                      child: FFButtonWidget(
                        onPressed: () async {
                          logFirebaseEvent(
                              'TEST_PROFILE_PAGE_EYEBROW_BTN_ON_TAP');
                          logFirebaseEvent('Button_navigate_to');

                          context.pushNamed('OwnedEyebrow');
                        },
                        text: 'Eyebrow',
                        icon: const FaIcon(
                          FontAwesomeIcons.paintBrush,
                          size: 15.0,
                        ),
                        options: FFButtonOptions(
                          width: 300.0,
                          height: 55.0,
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
              Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Flexible(
                    child: Align(
                      alignment: const AlignmentDirectional(0.0, 0.0),
                      child: FFButtonWidget(
                        onPressed: () async {
                          logFirebaseEvent(
                              'TEST_PROFILE_PAGE_MOUTH_BTN_ON_TAP');
                          logFirebaseEvent('Button_navigate_to');

                          context.pushNamed('OwnedMouth');
                        },
                        text: 'Mouth',
                        icon: const FaIcon(
                          FontAwesomeIcons.monument,
                          size: 15.0,
                        ),
                        options: FFButtonOptions(
                          width: 300.0,
                          height: 55.0,
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
                  Flexible(
                    child: Align(
                      alignment: const AlignmentDirectional(0.0, 0.0),
                      child: FFButtonWidget(
                        onPressed: () async {
                          logFirebaseEvent('TEST_PROFILE_PAGE_SKIN_BTN_ON_TAP');
                          logFirebaseEvent('Button_navigate_to');

                          context.pushNamed('OwnedSkin');
                        },
                        text: 'Skin',
                        icon: const FaIcon(
                          FontAwesomeIcons.palette,
                          size: 15.0,
                        ),
                        options: FFButtonOptions(
                          width: 300.0,
                          height: 55.0,
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
            ],
          ).animateOnPageLoad(animationsMap['listViewOnPageLoadAnimation']!),
        ),
      ),
    );
  }
}
