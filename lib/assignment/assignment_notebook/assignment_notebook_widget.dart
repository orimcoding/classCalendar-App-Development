import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'assignment_notebook_model.dart';
export 'assignment_notebook_model.dart';

class AssignmentNotebookWidget extends StatefulWidget {
  const AssignmentNotebookWidget({super.key});

  @override
  State<AssignmentNotebookWidget> createState() =>
      _AssignmentNotebookWidgetState();
}

class _AssignmentNotebookWidgetState extends State<AssignmentNotebookWidget> {
  late AssignmentNotebookModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AssignmentNotebookModel());

    logFirebaseEvent('screen_view',
        parameters: {'screen_name': 'AssignmentNotebook'});
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
          backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
          automaticallyImplyLeading: false,
          title: Text(
            'Assignment Notebook',
            style: FlutterFlowTheme.of(context).headlineMedium.override(
                  fontFamily: 'Outfit',
                  color: FlutterFlowTheme.of(context).primaryText,
                  fontSize: 29.0,
                  letterSpacing: 0.0,
                  fontWeight: FontWeight.bold,
                ),
          ),
          actions: [
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 20.0, 10.0),
              child: StreamBuilder<List<ClassesRecord>>(
                stream: queryClassesRecord(),
                builder: (context, snapshot) {
                  // Customize what your widget looks like when it's loading.
                  if (!snapshot.hasData) {
                    return Center(
                      child: SizedBox(
                        width: 50.0,
                        height: 50.0,
                        child: SpinKitDoubleBounce(
                          color: FlutterFlowTheme.of(context).primary,
                          size: 50.0,
                        ),
                      ),
                    );
                  }
                  List<ClassesRecord> iconButtonClassesRecordList =
                      snapshot.data!;

                  return FlutterFlowIconButton(
                    borderRadius: 10.0,
                    borderWidth: 2.0,
                    buttonSize: 43.0,
                    fillColor: FlutterFlowTheme.of(context).tertiary,
                    icon: const Icon(
                      Icons.add,
                      color: Colors.white,
                      size: 27.0,
                    ),
                    onPressed: () async {
                      logFirebaseEvent(
                          'ASSIGNMENT_NOTEBOOK_PAGE_add_ICN_ON_TAP');
                      if (iconButtonClassesRecordList.isEmpty) {
                        logFirebaseEvent('IconButton_show_snack_bar');
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text(
                              'Add classes before adding assignments!',
                              style: TextStyle(
                                color: FlutterFlowTheme.of(context).primaryText,
                              ),
                            ),
                            duration: const Duration(milliseconds: 4000),
                            backgroundColor:
                                FlutterFlowTheme.of(context).secondary,
                          ),
                        );
                      } else {
                        logFirebaseEvent('IconButton_navigate_to');

                        context.pushNamed('CreateNewAssignment');
                      }
                    },
                  );
                },
              ),
            ),
          ],
          centerTitle: false,
          elevation: 0.0,
        ),
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              FFButtonWidget(
                onPressed: () async {
                  logFirebaseEvent('ASSIGNMENT_NOTEBOOK_ADD_CLASS_BTN_ON_TAP');
                  logFirebaseEvent('Button_navigate_to');

                  context.pushNamed('CreateClass');
                },
                text: 'Add Class',
                icon: Icon(
                  Icons.add_card,
                  color: FlutterFlowTheme.of(context).primaryBackground,
                  size: 100.0,
                ),
                options: FFButtonOptions(
                  width: double.infinity,
                  height: 140.0,
                  padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 24.0, 0.0),
                  iconPadding:
                      const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 50.0, 0.0),
                  color: FlutterFlowTheme.of(context).tertiary,
                  textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                        fontFamily: 'Outfit',
                        color: Colors.white,
                        fontSize: 30.0,
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
              FFButtonWidget(
                onPressed: () async {
                  logFirebaseEvent('ASSIGNMENT_NOTEBOOK_ALL_ASSIGNMENTS_BTN_');
                  logFirebaseEvent('Button_navigate_to');

                  context.pushNamed(
                    'allAssg',
                    extra: <String, dynamic>{
                      kTransitionInfoKey: const TransitionInfo(
                        hasTransition: true,
                        transitionType: PageTransitionType.scale,
                        alignment: Alignment.bottomCenter,
                      ),
                    },
                  );
                },
                text: 'All Assignments',
                icon: const Icon(
                  Icons.edit_outlined,
                  size: 125.0,
                ),
                options: FFButtonOptions(
                  width: double.infinity,
                  height: 140.0,
                  padding: const EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                  iconPadding:
                      const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                  color: FlutterFlowTheme.of(context).tertiary,
                  textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                        fontFamily: 'Outfit',
                        color: Colors.white,
                        fontSize: 50.0,
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
              FutureBuilder<int>(
                future: queryClassesRecordCount(),
                builder: (context, snapshot) {
                  // Customize what your widget looks like when it's loading.
                  if (!snapshot.hasData) {
                    return Center(
                      child: SizedBox(
                        width: 50.0,
                        height: 50.0,
                        child: SpinKitDoubleBounce(
                          color: FlutterFlowTheme.of(context).primary,
                          size: 50.0,
                        ),
                      ),
                    );
                  }
                  int buttonCount = snapshot.data!;

                  return FFButtonWidget(
                    onPressed: () async {
                      logFirebaseEvent(
                          'ASSIGNMENT_NOTEBOOK_ADD_ASSIGNMENTS_BTN_');
                      if (buttonCount == 0) {
                        logFirebaseEvent('Button_show_snack_bar');
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text(
                              'Please add classes first!',
                              style: GoogleFonts.getFont(
                                'Outfit',
                                color: FlutterFlowTheme.of(context).primaryText,
                              ),
                            ),
                            duration: const Duration(milliseconds: 4000),
                            backgroundColor:
                                FlutterFlowTheme.of(context).secondary,
                          ),
                        );
                      } else {
                        logFirebaseEvent('Button_navigate_to');

                        context.pushNamed(
                          'CreateNewAssignment',
                          extra: <String, dynamic>{
                            kTransitionInfoKey: const TransitionInfo(
                              hasTransition: true,
                              transitionType: PageTransitionType.scale,
                              alignment: Alignment.bottomCenter,
                            ),
                          },
                        );
                      }
                    },
                    text: 'Add assignments',
                    icon: const Icon(
                      Icons.note_add,
                      size: 125.0,
                    ),
                    options: FFButtonOptions(
                      width: double.infinity,
                      height: 140.0,
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                      iconPadding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                      color: FlutterFlowTheme.of(context).tertiary,
                      textStyle:
                          FlutterFlowTheme.of(context).titleSmall.override(
                                fontFamily: 'Outfit',
                                color: Colors.white,
                                fontSize: 50.0,
                                letterSpacing: 0.0,
                              ),
                      elevation: 3.0,
                      borderSide: const BorderSide(
                        color: Colors.transparent,
                        width: 1.0,
                      ),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                  );
                },
              ),
              FFButtonWidget(
                onPressed: () async {
                  logFirebaseEvent('ASSIGNMENT_NOTEBOOK_CURRENT_CLASSES_BTN_');
                  logFirebaseEvent('Button_navigate_to');

                  context.pushNamed('CurrentClasses');
                },
                text: 'Current Classes',
                icon: const Icon(
                  Icons.school_rounded,
                  size: 100.0,
                ),
                options: FFButtonOptions(
                  width: double.infinity,
                  height: 140.0,
                  padding: const EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                  iconPadding:
                      const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                  color: FlutterFlowTheme.of(context).tertiary,
                  textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                        fontFamily: 'Outfit',
                        color: Colors.white,
                        fontSize: 50.0,
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
            ].divide(const SizedBox(height: 15.0)),
          ),
        ),
      ),
    );
  }
}
