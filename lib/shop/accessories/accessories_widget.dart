import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_web_view.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';
import 'accessories_model.dart';
export 'accessories_model.dart';

class AccessoriesWidget extends StatefulWidget {
  const AccessoriesWidget({super.key});

  @override
  State<AccessoriesWidget> createState() => _AccessoriesWidgetState();
}

class _AccessoriesWidgetState extends State<AccessoriesWidget>
    with TickerProviderStateMixin {
  late AccessoriesModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = <String, AnimationInfo>{};

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AccessoriesModel());

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
      'buttonOnPageLoadAnimation': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          ShimmerEffect(
            curve: Curves.easeInOut,
            delay: 300.0.ms,
            duration: 1300.0.ms,
            color: const Color(0x80FFFFFF),
            angle: 0.524,
          ),
        ],
      ),
    });

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
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
        body: Stack(
          children: [
            Align(
              alignment: const AlignmentDirectional(0.0, 0.0),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
                    child: GradientText(
                      'classCalendar Storefront',
                      textAlign: TextAlign.center,
                      style: FlutterFlowTheme.of(context).titleLarge.override(
                            fontFamily: 'Outfit',
                            fontSize: 40.0,
                            letterSpacing: 0.0,
                          ),
                      colors: [
                        FlutterFlowTheme.of(context).primary,
                        FlutterFlowTheme.of(context).secondary,
                        const Color(0xFF673AB7)
                      ],
                      gradientDirection: GradientDirection.ltr,
                      gradientType: GradientType.linear,
                    ),
                  ),
                  Align(
                    alignment: const AlignmentDirectional(0.0, 0.0),
                    child: Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 50.0, 0.0, 25.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                6.0, 0.0, 6.0, 0.0),
                            child: FlutterFlowIconButton(
                              borderColor: const Color(0xB0A51822),
                              borderRadius: 5.0,
                              borderWidth: 1.0,
                              buttonSize: 60.0,
                              fillColor: FlutterFlowTheme.of(context).alternate,
                              icon: const FaIcon(
                                FontAwesomeIcons.hatCowboy,
                                color: Color(0xB0A51822),
                                size: 30.0,
                              ),
                              onPressed: () async {
                                context.pushNamed('top');
                              },
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                6.0, 0.0, 6.0, 0.0),
                            child: FlutterFlowIconButton(
                              borderColor: const Color(0xB0A51822),
                              borderRadius: 5.0,
                              borderWidth: 1.0,
                              buttonSize: 60.0,
                              fillColor: FlutterFlowTheme.of(context).alternate,
                              icon: const Icon(
                                FFIcons.kbeard1,
                                color: Color(0xB0A51822),
                                size: 30.0,
                              ),
                              onPressed: () async {
                                context.pushNamed('facialhair');
                              },
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                6.0, 0.0, 6.0, 0.0),
                            child: FlutterFlowIconButton(
                              borderColor: const Color(0xB0A51822),
                              borderRadius: 5.0,
                              borderWidth: 1.0,
                              buttonSize: 60.0,
                              fillColor: FlutterFlowTheme.of(context).alternate,
                              icon: const Icon(
                                FFIcons.kclothes,
                                color: Color(0xB0A51822),
                                size: 30.0,
                              ),
                              onPressed: () async {
                                context.pushNamed('clothes');
                              },
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                6.0, 0.0, 6.0, 0.0),
                            child: FlutterFlowIconButton(
                              borderColor: const Color(0xB0A51822),
                              borderRadius: 5.0,
                              borderWidth: 1.0,
                              buttonSize: 60.0,
                              fillColor: FlutterFlowTheme.of(context).alternate,
                              icon: const Icon(
                                Icons.remove_red_eye_outlined,
                                color: Color(0xB0A51822),
                                size: 30.0,
                              ),
                              onPressed: () async {
                                context.pushNamed('eyes');
                              },
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                6.0, 0.0, 6.0, 0.0),
                            child: FlutterFlowIconButton(
                              borderColor: const Color(0xB0A51822),
                              borderRadius: 5.0,
                              borderWidth: 1.0,
                              buttonSize: 60.0,
                              fillColor: FlutterFlowTheme.of(context).alternate,
                              icon: const Icon(
                                Icons.tag_faces,
                                color: Color(0xB0A51822),
                                size: 30.0,
                              ),
                              onPressed: () async {
                                context.pushNamed('mouth');
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 15.0, 0.0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(8.0),
                          child: Image.asset(
                            'assets/images/Designer-removebg-preview.png',
                            width: 85.0,
                            height: 85.0,
                            fit: BoxFit.contain,
                          ),
                        ),
                      ),
                      Text(
                        valueOrDefault<String>(
                          () {
                            if (_model.dropDownValue == 'Kurt') {
                              return '5';
                            } else if ((_model.dropDownValue ==
                                    'Prescription01') ||
                                (_model.dropDownValue == 'Prescription02')) {
                              return '10';
                            } else if (_model.dropDownValue == 'Sunglasses') {
                              return '15';
                            } else if (_model.dropDownValue == 'Wayfarers') {
                              return '25';
                            } else {
                              return '0';
                            }
                          }(),
                          '11',
                        ),
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Inter Tight',
                              color: const Color(0xB0A51822),
                              fontSize: 50.0,
                              letterSpacing: 0.0,
                            ),
                      ),
                    ],
                  ),
                  Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(0.0, 25.0, 0.0, 0.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Align(
                          alignment: const AlignmentDirectional(0.0, -1.0),
                          child: AuthUserStreamWidget(
                            builder: (context) => FlutterFlowDropDown<String>(
                              controller: _model.dropDownValueController ??=
                                  FormFieldController<String>(null),
                              options: (currentUserDocument?.shopAccessories
                                      .toList() ??
                                  []),
                              onChanged: (val) async {
                                setState(() => _model.dropDownValue = val);
                                FFAppState().selectedAccessory =
                                    _model.dropDownValue!;
                                setState(() {});
                              },
                              width: 149.0,
                              height: 56.0,
                              textStyle: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Outfit',
                                    color: const Color(0xB0A51822),
                                    letterSpacing: 0.0,
                                  ),
                              hintText: 'Accessories',
                              icon: Icon(
                                Icons.keyboard_arrow_down_rounded,
                                color:
                                    FlutterFlowTheme.of(context).secondaryText,
                                size: 24.0,
                              ),
                              fillColor: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              elevation: 2.0,
                              borderColor:
                                  FlutterFlowTheme.of(context).alternate,
                              borderWidth: 2.0,
                              borderRadius: 8.0,
                              margin: const EdgeInsetsDirectional.fromSTEB(
                                  16.0, 4.0, 16.0, 4.0),
                              hidesUnderline: true,
                              isOverButton: true,
                              isSearchable: false,
                              isMultiSelect: false,
                            ),
                          ),
                        ),
                        Align(
                          alignment: const AlignmentDirectional(0.0, 1.0),
                          child: FlutterFlowWebView(
                            content:
                                'https://avataaars.io/?avatarStyle=Circle&topType=NoHair&accessoriesType=${_model.dropDownValue}&facialHairType=Blank&clotheType=Blank&eyeType=Default&eyebrowType=Default&mouthType=Default&skinColor=Blank',
                            width: 200.0,
                            height: 200.0,
                            verticalScroll: false,
                            horizontalScroll: false,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(0.0, 32.0, 0.0, 32.0),
                    child: FFButtonWidget(
                      onPressed: () async {
                        if (_model.dropDownValue == null ||
                            _model.dropDownValue == '') {
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content: Text(
                                'Please Choose Item',
                                style: TextStyle(
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
                          if (valueOrDefault(currentUserDocument?.coins, 0) >=
                              valueOrDefault<int>(
                                () {
                                  if (_model.dropDownValue == 'Kurt') {
                                    return 5;
                                  } else if ((_model.dropDownValue ==
                                          'Prescription01') ||
                                      (_model.dropDownValue ==
                                          'Prescription02')) {
                                    return 10;
                                  } else if (_model.dropDownValue ==
                                      'Sunglasses') {
                                    return 15;
                                  } else if (_model.dropDownValue ==
                                      'Wayfarers') {
                                    return 25;
                                  } else {
                                    return 0;
                                  }
                                }(),
                                11,
                              )) {
                            await currentUserReference!.update({
                              ...mapToFirestore(
                                {
                                  'coins': FieldValue.increment(
                                      -(valueOrDefault<int>(
                                    () {
                                      if (_model.dropDownValue == 'Kurt') {
                                        return 5;
                                      } else if ((_model.dropDownValue ==
                                              'Prescription01') ||
                                          (_model.dropDownValue ==
                                              'Prescription02')) {
                                        return 10;
                                      } else if (_model.dropDownValue ==
                                          'Sunglasses') {
                                        return 15;
                                      } else if (_model.dropDownValue ==
                                          'Wayfarers') {
                                        return 25;
                                      } else {
                                        return 0;
                                      }
                                    }(),
                                    11,
                                  ))),
                                },
                              ),
                            });

                            context.pushNamed('HomePage');

                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                content: Text(
                                  'Thank You For Your Purchase',
                                  style: TextStyle(
                                    color: FlutterFlowTheme.of(context)
                                        .primaryText,
                                  ),
                                ),
                                duration: const Duration(milliseconds: 4000),
                                backgroundColor:
                                    FlutterFlowTheme.of(context).secondary,
                              ),
                            );

                            await currentUserReference!.update({
                              ...mapToFirestore(
                                {
                                  'shopAccessories': FieldValue.arrayRemove(
                                      [_model.dropDownValue]),
                                  'ownedAccessories': FieldValue.arrayUnion(
                                      [_model.dropDownValue]),
                                },
                              ),
                            });
                          } else {
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                content: Text(
                                  'You Need More Coins',
                                  style: TextStyle(
                                    color: FlutterFlowTheme.of(context)
                                        .primaryText,
                                  ),
                                ),
                                duration: const Duration(milliseconds: 4000),
                                backgroundColor:
                                    FlutterFlowTheme.of(context).secondary,
                              ),
                            );
                          }
                        }
                      },
                      text: 'Buy Now',
                      options: FFButtonOptions(
                        width: 350.0,
                        height: 150.0,
                        padding: const EdgeInsetsDirectional.fromSTEB(
                            24.0, 0.0, 24.0, 0.0),
                        iconPadding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                        color: const Color(0xB0A51822),
                        textStyle:
                            FlutterFlowTheme.of(context).titleSmall.override(
                                  fontFamily: 'Outfit',
                                  fontSize: 24.0,
                                  letterSpacing: 0.0,
                                ),
                        elevation: 10.0,
                        borderSide: const BorderSide(
                          color: Colors.transparent,
                          width: 1.0,
                        ),
                        borderRadius: BorderRadius.circular(17.0),
                        hoverColor: FlutterFlowTheme.of(context).secondary,
                      ),
                      showLoadingIndicator: false,
                    ).animateOnPageLoad(
                        animationsMap['buttonOnPageLoadAnimation']!),
                  ),
                ],
              ).animateOnPageLoad(animationsMap['columnOnPageLoadAnimation']!),
            ),
            InkWell(
              splashColor: Colors.transparent,
              focusColor: Colors.transparent,
              hoverColor: Colors.transparent,
              highlightColor: Colors.transparent,
              onTap: () async {
                context.pushNamed('profile');
              },
              child: const Icon(
                Icons.close,
                color: Colors.black,
                size: 40.0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
