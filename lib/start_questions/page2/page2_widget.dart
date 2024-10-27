import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';
import 'page2_model.dart';
export 'page2_model.dart';

class Page2Widget extends StatefulWidget {
  const Page2Widget({super.key});

  @override
  State<Page2Widget> createState() => _Page2WidgetState();
}

class _Page2WidgetState extends State<Page2Widget>
    with TickerProviderStateMixin {
  late Page2Model _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = <String, AnimationInfo>{};

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => Page2Model());

    logFirebaseEvent('screen_view', parameters: {'screen_name': 'Page2'});
    _model.usernameCreateTextController ??= TextEditingController();
    _model.usernameCreateFocusNode ??= FocusNode();

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
      'textOnPageLoadAnimation1': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
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
            ),
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
                            'Question 2/3',
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
                          percent: 0.66,
                          width: MediaQuery.sizeOf(context).width * 0.96,
                          lineHeight: 12.0,
                          animation: true,
                          animateFromLastPercent: true,
                          progressColor: const Color(0xFF827AE1),
                          backgroundColor: const Color(0xFFE0E3E7),
                          barRadius: const Radius.circular(24.0),
                          padding: EdgeInsets.zero,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(
                            16.0, 100.0, 0.0, 0.0),
                        child: Text(
                          'Type in a username.',
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
                        child: Text(
                          'Please be appropriate.',
                          style:
                              FlutterFlowTheme.of(context).labelLarge.override(
                                    fontFamily: 'Plus Jakarta Sans',
                                    color: const Color(0xFF57636C),
                                    fontSize: 16.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w500,
                                  ),
                        ).animateOnPageLoad(
                            animationsMap['textOnPageLoadAnimation2']!),
                      ),
                      Wrap(
                        spacing: 0.0,
                        runSpacing: 0.0,
                        alignment: WrapAlignment.start,
                        crossAxisAlignment: WrapCrossAlignment.start,
                        direction: Axis.horizontal,
                        runAlignment: WrapAlignment.center,
                        verticalDirection: VerticalDirection.down,
                        clipBehavior: Clip.none,
                        children: [
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                16.0, 12.0, 16.0, 0.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Expanded(
                                  child: Opacity(
                                    opacity: 0.9999,
                                    child: Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          0.0, 0.0, 0.0, 16.0),
                                      child: SizedBox(
                                        width: double.infinity,
                                        child: TextFormField(
                                          controller: _model
                                              .usernameCreateTextController,
                                          focusNode:
                                              _model.usernameCreateFocusNode,
                                          onFieldSubmitted: (_) async {
                                            logFirebaseEvent(
                                                'PAGE2_username_create_ON_TEXTFIELD_SUBMI');
                                            logFirebaseEvent(
                                                'username_create_update_app_state');
                                            FFAppState().userName = _model
                                                .usernameCreateTextController
                                                .text;
                                            safeSetState(() {});
                                          },
                                          autofocus: true,
                                          autofillHints: const [AutofillHints.email],
                                          obscureText: false,
                                          decoration: InputDecoration(
                                            labelText: 'Username',
                                            labelStyle:
                                                FlutterFlowTheme.of(context)
                                                    .labelLarge
                                                    .override(
                                                      fontFamily: 'Raleway',
                                                      letterSpacing: 0.0,
                                                    ),
                                            enabledBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .alternate,
                                                width: 2.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(40.0),
                                            ),
                                            focusedBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primary,
                                                width: 2.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(40.0),
                                            ),
                                            errorBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .error,
                                                width: 2.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(40.0),
                                            ),
                                            focusedErrorBorder:
                                                OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .error,
                                                width: 2.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(40.0),
                                            ),
                                            filled: true,
                                            fillColor:
                                                FlutterFlowTheme.of(context)
                                                    .secondaryBackground,
                                            contentPadding:
                                                const EdgeInsets.all(24.0),
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .bodyLarge
                                              .override(
                                                fontFamily: 'Inter Tight',
                                                letterSpacing: 0.0,
                                              ),
                                          keyboardType:
                                              TextInputType.emailAddress,
                                          validator: _model
                                              .usernameCreateTextControllerValidator
                                              .asValidator(context),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
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
                        const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 32.0),
                    child: FFButtonWidget(
                      onPressed: () async {
                        logFirebaseEvent('PAGE2_PAGE_NEXT_QUESTION_BTN_ON_TAP');
                        logFirebaseEvent('Button_update_app_state');
                        FFAppState().userName =
                            _model.usernameCreateTextController.text;
                        FFAppState().update(() {});
                        logFirebaseEvent('Button_navigate_to');

                        context.pushNamed('Page3');

                        logFirebaseEvent('Button_backend_call');

                        await currentUserReference!
                            .update(createUsersRecordData(
                          displayName: _model.usernameCreateTextController.text,
                        ));
                      },
                      text: 'Next Question',
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
                    ),
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
