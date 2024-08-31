import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';
import 'shop1_model.dart';
export 'shop1_model.dart';

class Shop1Widget extends StatefulWidget {
  const Shop1Widget({super.key});

  @override
  State<Shop1Widget> createState() => _Shop1WidgetState();
}

class _Shop1WidgetState extends State<Shop1Widget>
    with TickerProviderStateMixin {
  late Shop1Model _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = <String, AnimationInfo>{};

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => Shop1Model());

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
                  Align(
                    alignment: const AlignmentDirectional(0.0, 0.0),
                    child: Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 100.0, 0.0, 0.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    6.0, 0.0, 6.0, 25.0),
                                child: FlutterFlowIconButton(
                                  borderColor: const Color(0xB0A51822),
                                  borderRadius: 5.0,
                                  borderWidth: 1.0,
                                  buttonSize: 100.0,
                                  fillColor:
                                      FlutterFlowTheme.of(context).alternate,
                                  icon: const FaIcon(
                                    FontAwesomeIcons.hatCowboy,
                                    color: Color(0xB0A51822),
                                    size: 50.0,
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
                                  buttonSize: 100.0,
                                  fillColor:
                                      FlutterFlowTheme.of(context).alternate,
                                  icon: const Icon(
                                    FFIcons.kbeard1,
                                    color: Color(0xB0A51822),
                                    size: 50.0,
                                  ),
                                  onPressed: () async {
                                    context.pushNamed('facialhair');
                                  },
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    6.0, 25.0, 6.0, 25.0),
                                child: FlutterFlowIconButton(
                                  borderColor: const Color(0xB0A51822),
                                  borderRadius: 5.0,
                                  borderWidth: 1.0,
                                  buttonSize: 100.0,
                                  fillColor:
                                      FlutterFlowTheme.of(context).alternate,
                                  icon: const Icon(
                                    FFIcons.kclothes,
                                    color: Color(0xB0A51822),
                                    size: 50.0,
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
                                  buttonSize: 100.0,
                                  fillColor:
                                      FlutterFlowTheme.of(context).alternate,
                                  icon: const Icon(
                                    Icons.remove_red_eye_outlined,
                                    color: Color(0xB0A51822),
                                    size: 50.0,
                                  ),
                                  onPressed: () async {
                                    context.pushNamed('eyes');
                                  },
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    6.0, 25.0, 6.0, 0.0),
                                child: FlutterFlowIconButton(
                                  borderColor: const Color(0xB0A51822),
                                  borderRadius: 5.0,
                                  borderWidth: 1.0,
                                  buttonSize: 100.0,
                                  fillColor:
                                      FlutterFlowTheme.of(context).alternate,
                                  icon: const Icon(
                                    Icons.tag_faces,
                                    color: Color(0xB0A51822),
                                    size: 50.0,
                                  ),
                                  onPressed: () async {
                                    context.pushNamed('mouth');
                                  },
                                ),
                              ),
                            ].divide(const SizedBox(height: 20.0)),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ).animateOnPageLoad(animationsMap['columnOnPageLoadAnimation']!),
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 30.0),
                  child: InkWell(
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
                ),
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(20.0, 20.0, 0.0, 0.0),
                  child: GradientText(
                    'Pick a category',
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
              ],
            ),
          ],
        ),
      ),
    );
  }
}
