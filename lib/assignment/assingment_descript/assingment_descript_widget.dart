import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'assingment_descript_model.dart';
export 'assingment_descript_model.dart';

class AssingmentDescriptWidget extends StatefulWidget {
  const AssingmentDescriptWidget({
    super.key,
    required this.data,
  });

  final DocumentReference? data;

  @override
  State<AssingmentDescriptWidget> createState() =>
      _AssingmentDescriptWidgetState();
}

class _AssingmentDescriptWidgetState extends State<AssingmentDescriptWidget> {
  late AssingmentDescriptModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AssingmentDescriptModel());

    logFirebaseEvent('screen_view',
        parameters: {'screen_name': 'AssingmentDescript'});
    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<AssignmentsRecord>(
      stream: AssignmentsRecord.getDocument(widget.data!),
      builder: (context, snapshot) {
        // Customize what your widget looks like when it's loading.
        if (!snapshot.hasData) {
          return Scaffold(
            backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
            body: Center(
              child: SizedBox(
                width: 50.0,
                height: 50.0,
                child: SpinKitFoldingCube(
                  color: FlutterFlowTheme.of(context).primary,
                  size: 50.0,
                ),
              ),
            ),
          );
        }

        final assingmentDescriptAssignmentsRecord = snapshot.data!;

        return GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Scaffold(
            key: scaffoldKey,
            backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
            appBar: AppBar(
              backgroundColor: FlutterFlowTheme.of(context).tertiary,
              automaticallyImplyLeading: false,
              leading: FlutterFlowIconButton(
                borderColor: Colors.transparent,
                borderRadius: 30.0,
                borderWidth: 1.0,
                buttonSize: 60.0,
                icon: const Icon(
                  Icons.arrow_back_rounded,
                  color: Colors.white,
                  size: 30.0,
                ),
                onPressed: () async {
                  logFirebaseEvent('ASSINGMENT_DESCRIPT_arrow_back_rounded_I');
                  logFirebaseEvent('IconButton_navigate_back');
                  context.pop();
                },
              ),
              title: Text(
                assingmentDescriptAssignmentsRecord.name,
                style: FlutterFlowTheme.of(context).headlineMedium.override(
                      fontFamily: 'Outfit',
                      color: Colors.white,
                      fontSize: 28.0,
                      letterSpacing: 0.0,
                    ),
              ),
              actions: const [],
              centerTitle: true,
              elevation: 2.0,
            ),
            body: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Align(
                  alignment: const AlignmentDirectional(-1.0, 0.0),
                  child: Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(20.0, 20.0, 0.0, 5.0),
                    child: Text(
                      'Description:',
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Outfit',
                            color: Colors.black,
                            fontSize: 22.0,
                            letterSpacing: 0.0,
                          ),
                    ),
                  ),
                ),
                Container(
                  width: 350.0,
                  height: 300.0,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).tertiary,
                    boxShadow: const [
                      BoxShadow(
                        blurRadius: 2.0,
                        color: Color(0x33000000),
                        offset: Offset(
                          0.0,
                          2.0,
                        ),
                        spreadRadius: 0.0,
                      )
                    ],
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Align(
                          alignment: const AlignmentDirectional(-1.0, -1.0),
                          child: Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                10.0, 10.0, 0.0, 0.0),
                            child: Text(
                              assingmentDescriptAssignmentsRecord.description,
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Outfit',
                                    color: Colors.white,
                                    fontSize: 12.0,
                                    letterSpacing: 0.0,
                                  ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Align(
                  alignment: const AlignmentDirectional(-1.0, 0.0),
                  child: Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(20.0, 20.0, 0.0, 5.0),
                    child: Text(
                      'Due Date:',
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Outfit',
                            color: Colors.black,
                            fontSize: 22.0,
                            letterSpacing: 0.0,
                          ),
                    ),
                  ),
                ),
                Container(
                  width: 350.0,
                  height: 38.0,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).tertiary,
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  child: Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(10.0, 10.0, 0.0, 0.0),
                    child: Text(
                      dateTimeFormat(
                        "M/d h:mm a",
                        assingmentDescriptAssignmentsRecord.date!,
                        locale: FFLocalizations.of(context).languageCode,
                      ),
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Outfit',
                            color: Colors.white,
                            letterSpacing: 0.0,
                          ),
                    ),
                  ),
                ),
                Align(
                  alignment: const AlignmentDirectional(-1.0, 0.0),
                  child: Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(20.0, 20.0, 0.0, 5.0),
                    child: Text(
                      'Subject:',
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Outfit',
                            color: Colors.black,
                            fontSize: 22.0,
                            letterSpacing: 0.0,
                          ),
                    ),
                  ),
                ),
                Container(
                  width: 350.0,
                  height: 38.0,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).tertiary,
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  child: Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(10.0, 10.0, 0.0, 0.0),
                    child: Text(
                      assingmentDescriptAssignmentsRecord.subject,
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Outfit',
                            color: Colors.white,
                            letterSpacing: 0.0,
                          ),
                    ),
                  ),
                ),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Opacity(
                      opacity: 0.0,
                      child: VerticalDivider(
                        width: 75.0,
                        thickness: 1.0,
                        color: FlutterFlowTheme.of(context).accent4,
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0.0, 50.0, 0.0, 0.0),
                  child: FFButtonWidget(
                    onPressed: () async {
                      logFirebaseEvent(
                          'ASSINGMENT_DESCRIPT_PAGE_DONE_BTN_ON_TAP');
                      logFirebaseEvent('Button_backend_call');
                      await widget.data!.delete();
                      if (valueOrDefault(
                              currentUserDocument?.dailyAssignments, 0) <
                          2) {
                        logFirebaseEvent('Button_backend_call');

                        await currentUserReference!.update({
                          ...mapToFirestore(
                            {
                              'coins': FieldValue.increment(1),
                            },
                          ),
                        });
                        logFirebaseEvent('Button_show_snack_bar');
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text(
                              'You got a coin for this!',
                              style: TextStyle(
                                color: FlutterFlowTheme.of(context).primaryText,
                              ),
                            ),
                            duration: const Duration(milliseconds: 4000),
                            backgroundColor:
                                FlutterFlowTheme.of(context).secondary,
                          ),
                        );
                      }
                      logFirebaseEvent('Button_backend_call');

                      await currentUserReference!.update({
                        ...mapToFirestore(
                          {
                            'dailyAssignments': FieldValue.increment(1),
                          },
                        ),
                      });
                      if (valueOrDefault(
                              currentUserDocument?.dailyAssignments, 0) ==
                          2) {
                        logFirebaseEvent('Button_show_snack_bar');
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text(
                              'You have reached your limit on coins from assignments today!',
                              style: TextStyle(
                                color: FlutterFlowTheme.of(context).primaryText,
                              ),
                            ),
                            duration: const Duration(milliseconds: 4000),
                            backgroundColor:
                                FlutterFlowTheme.of(context).secondary,
                          ),
                        );
                      }
                      logFirebaseEvent('Button_navigate_to');

                      context.pushNamed(
                        'TestHome',
                        extra: <String, dynamic>{
                          kTransitionInfoKey: const TransitionInfo(
                            hasTransition: true,
                            transitionType: PageTransitionType.leftToRight,
                          ),
                        },
                      );

                      logFirebaseEvent('Button_show_snack_bar');
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text(
                            'Assignment Completed!',
                            style: TextStyle(
                              color: FlutterFlowTheme.of(context).primaryText,
                            ),
                          ),
                          duration: const Duration(milliseconds: 3300),
                          backgroundColor:
                              FlutterFlowTheme.of(context).secondary,
                        ),
                      );
                    },
                    text: 'Done?',
                    options: FFButtonOptions(
                      width: 350.0,
                      height: 120.0,
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                      iconPadding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                      color: FlutterFlowTheme.of(context).tertiary,
                      textStyle:
                          FlutterFlowTheme.of(context).titleSmall.override(
                                fontFamily: 'Outfit',
                                color: Colors.white,
                                letterSpacing: 0.0,
                              ),
                      elevation: 3.0,
                      borderSide: const BorderSide(
                        color: Colors.transparent,
                        width: 1.0,
                      ),
                      borderRadius: BorderRadius.circular(24.0),
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
