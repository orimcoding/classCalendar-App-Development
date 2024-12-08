import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_radio_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/flutter_flow/permissions_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:provider/provider.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';
import 'page4_model.dart';
export 'page4_model.dart';

class Page4Widget extends StatefulWidget {
  const Page4Widget({super.key});

  @override
  State<Page4Widget> createState() => _Page4WidgetState();
}

class _Page4WidgetState extends State<Page4Widget>
    with TickerProviderStateMixin {
  late Page4Model _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = <String, AnimationInfo>{};

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => Page4Model());

    logFirebaseEvent('screen_view', parameters: {'screen_name': 'Page4'});
    animationsMap.addAll({
      'columnOnPageLoadAnimation': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          VisibilityEffect(duration: 1.ms),
          FadeEffect(
            curve: Curves.linear,
            delay: 0.0.ms,
            duration: 1200.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
      'progressBarOnPageLoadAnimation': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          VisibilityEffect(duration: 300.ms),
          ShimmerEffect(
            curve: Curves.easeInOut,
            delay: 300.0.ms,
            duration: 1200.0.ms,
            color: const Color(0x80FFFFFF),
            angle: 0.524,
          ),
        ],
      ),
      'textOnPageLoadAnimation1': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          VisibilityEffect(duration: 1.ms),
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: const Offset(0.0, 50.0),
            end: const Offset(0.0, 0.0),
          ),
        ],
      ),
      'textOnPageLoadAnimation2': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          VisibilityEffect(duration: 1.ms),
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: const Offset(0.0, 70.0),
            end: const Offset(0.0, 0.0),
          ),
        ],
      ),
      'buttonOnPageLoadAnimation': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.linear,
            delay: 0.0.ms,
            duration: 1200.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
      'textOnPageLoadAnimation3': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.linear,
            delay: 0.0.ms,
            duration: 1200.0.ms,
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
        appBar: AppBar(
          backgroundColor: const Color(0xFFF1F5F8),
          automaticallyImplyLeading: false,
          title: Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
            child: GradientText(
              'Profile Customizing',
              style: FlutterFlowTheme.of(context).displaySmall.override(
                    fontFamily: 'Outfit',
                    color: const Color(0xFF0F1113),
                    fontSize: 32.0,
                    letterSpacing: 0.0,
                    fontWeight: FontWeight.w500,
                  ),
              colors: [
                FlutterFlowTheme.of(context).primary,
                FlutterFlowTheme.of(context).secondary,
                FlutterFlowTheme.of(context).tertiary
              ],
              gradientDirection: GradientDirection.ltr,
              gradientType: GradientType.linear,
            ).animateOnPageLoad(animationsMap['textOnPageLoadAnimation3']!),
          ),
          actions: const [],
          centerTitle: false,
          elevation: 0.0,
        ),
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Align(
                        alignment: const AlignmentDirectional(-1.0, 0.0),
                        child: Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              16.0, 12.0, 0.0, 0.0),
                          child: Text(
                            'Question 4/4',
                            style: FlutterFlowTheme.of(context)
                                .labelMedium
                                .override(
                                  fontFamily: 'Plus Jakarta Sans',
                                  color: const Color(0xFF57636C),
                                  fontSize: 14.0,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.w500,
                                ),
                          ),
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(8.0, 12.0, 8.0, 0.0),
                        child: LinearPercentIndicator(
                          percent: 1.0,
                          width: MediaQuery.sizeOf(context).width * 0.96,
                          lineHeight: 12.0,
                          animation: true,
                          animateFromLastPercent: true,
                          progressColor: const Color(0xFF827AE1),
                          backgroundColor: const Color(0xFFE0E3E7),
                          barRadius: const Radius.circular(24.0),
                          padding: EdgeInsets.zero,
                        ).animateOnPageLoad(
                            animationsMap['progressBarOnPageLoadAnimation']!),
                      ),
                      Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(
                            16.0, 100.0, 0.0, 0.0),
                        child: Text(
                          'Do you accept the necessary permissions requested? ',
                          style: FlutterFlowTheme.of(context)
                              .displaySmall
                              .override(
                                fontFamily: 'Outfit',
                                color: const Color(0xFF0F1113),
                                fontSize: 32.0,
                                letterSpacing: 0.0,
                                fontWeight: FontWeight.w500,
                              ),
                        ).animateOnPageLoad(
                            animationsMap['textOnPageLoadAnimation1']!),
                      ),
                      Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(16.0, 8.0, 0.0, 0.0),
                        child: InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () async {
                            logFirebaseEvent('PAGE4_PAGE_Text_nyg05jbt_ON_TAP');
                            logFirebaseEvent('Text_launch_u_r_l');
                            await launchURL(
                                'https://classcalendarapp.com/how-to-use');
                          },
                          child: Text(
                            'Click here for more information.\n',
                            style: FlutterFlowTheme.of(context)
                                .labelLarge
                                .override(
                                  fontFamily: 'Plus Jakarta Sans',
                                  color: FlutterFlowTheme.of(context).tertiary,
                                  fontSize: 16.0,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.w500,
                                ),
                          ),
                        ).animateOnPageLoad(
                            animationsMap['textOnPageLoadAnimation2']!),
                      ),
                      Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 0.0, 0.0),
                        child: FlutterFlowRadioButton(
                          options: ['Yes', 'No'].toList(),
                          onChanged: (val) => safeSetState(() {}),
                          controller: _model.radioButtonValueController ??=
                              FormFieldController<String>(null),
                          optionHeight: 50.0,
                          textStyle:
                              FlutterFlowTheme.of(context).labelLarge.override(
                                    fontFamily: 'Raleway',
                                    fontSize: 25.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w500,
                                  ),
                          buttonPosition: RadioButtonPosition.left,
                          direction: Axis.vertical,
                          radioButtonColor:
                              FlutterFlowTheme.of(context).primary,
                          inactiveRadioButtonColor:
                              FlutterFlowTheme.of(context).secondaryText,
                          toggleable: false,
                          horizontalAlignment: WrapAlignment.start,
                          verticalAlignment: WrapCrossAlignment.start,
                        ),
                      ),
                      Container(
                        height: 200.0,
                        decoration: const BoxDecoration(),
                      ),
                    ],
                  ),
                ),
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(0.0, 32.0, 0.0, 32.0),
                    child: FFButtonWidget(
                      onPressed: () async {
                        logFirebaseEvent('PAGE4_PAGE_FINISH_BTN_ON_TAP');
                        if (_model.radioButtonValue == 'No') {
                          logFirebaseEvent('Button_show_snack_bar');
                          ScaffoldMessenger.of(context).clearSnackBars();
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content: Text(
                                'You must agree to use our app',
                                style: GoogleFonts.getFont(
                                  'Open Sans',
                                  color:
                                      FlutterFlowTheme.of(context).primaryText,
                                ),
                              ),
                              duration: const Duration(milliseconds: 4000),
                              backgroundColor:
                                  FlutterFlowTheme.of(context).secondary,
                            ),
                          );
                        } else {
                          logFirebaseEvent('Button_backend_call');

                          await currentUserReference!.update({
                            ...createUsersRecordData(
                              dailyTasks: 0,
                              dailyAssignments: 0,
                              streak: 0,
                              selectedTop: 'NoHair',
                              selectedEyes: 'Default',
                              selectedSkin: 'Tanned',
                              selectedMouth: 'Default',
                              selectedClothes: 'BlazerShirt',
                              selectedEyebrows: 'Default',
                              selectedHatColors: 'Black',
                              selectedAccessories: 'Blank',
                              selectedHairColors: 'Black',
                              selectedFacialHairs: 'Blank',
                              selectedColorFabric: 'ffffff',
                              selectedFacialHairColors: 'Black',
                              lastTaskDate: getCurrentTimestamp,
                              lastAssignmentDate: getCurrentTimestamp,
                              streakCount: 0,
                              lastLoginDate: null,
                              coins: 20,
                            ),
                            ...mapToFirestore(
                              {
                                'ownedColorFabric':
                                    FFAppState().ownedClothingColor,
                                'shopColorFabric': FFAppState().ClothingColor,
                                'ownedEyes': FFAppState().ownedEyes,
                                'shopEyes': FFAppState().eyes,
                                'shopAccessories': FFAppState().accessories,
                                'ownedAccessories':
                                    FFAppState().ownedAccessories,
                                'shopEyebrows': FFAppState().eyebrow,
                                'ownedEyebrows': FFAppState().ownedEyebrow,
                                'shopFacialHairColors':
                                    FFAppState().facialHairColor,
                                'ownedFacialHairColors':
                                    FFAppState().ownedFacialHairColor,
                                'ownedFacialHair': FFAppState().ownedFacialHair,
                                'shopFacialHairs': FFAppState().facialHair,
                                'shopHairColors': FFAppState().hairColor,
                                'ownedHairColors': FFAppState().ownedHairColor,
                                'shopHatColors': FFAppState().hatColor,
                                'ownedHatColors': FFAppState().ownedHatColor,
                                'shopTops': FFAppState().top,
                                'ownedTops': FFAppState().ownedTop,
                                'shopClothes': FFAppState().clothes,
                                'ownedClothes': FFAppState().ownedClothes,
                                'shopMouth': FFAppState().mouth,
                                'ownedMouth': FFAppState().ownedMouth,
                                'skins': FFAppState().allSkins,
                              },
                            ),
                          });
                          logFirebaseEvent('Button_request_permissions');
                          await requestPermission(notificationsPermission);
                          logFirebaseEvent('Button_request_permissions');
                          await requestPermission(locationPermission);
                          logFirebaseEvent('Button_request_permissions');
                          await requestPermission(photoLibraryPermission);
                          logFirebaseEvent('Button_navigate_to');

                          context.pushNamed('Success03');
                        }
                      },
                      text: 'Finish',
                      options: FFButtonOptions(
                        width: 300.0,
                        height: 50.0,
                        padding: const EdgeInsetsDirectional.fromSTEB(
                            24.0, 0.0, 24.0, 0.0),
                        iconPadding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                        color: FlutterFlowTheme.of(context).secondary,
                        textStyle:
                            FlutterFlowTheme.of(context).titleSmall.override(
                                  fontFamily: 'Outfit',
                                  color: Colors.white,
                                  fontSize: 16.0,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.normal,
                                ),
                        elevation: 10.0,
                        borderSide: const BorderSide(
                          color: Colors.transparent,
                          width: 1.0,
                        ),
                        borderRadius: BorderRadius.circular(17.0),
                      ),
                    ).animateOnPageLoad(
                        animationsMap['buttonOnPageLoadAnimation']!),
                  ),
                ],
              ),
            ],
          ).animateOnPageLoad(animationsMap['columnOnPageLoadAnimation']!),
        ),
      ),
    );
  }
}
