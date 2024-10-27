import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'current_classes_model.dart';
export 'current_classes_model.dart';

class CurrentClassesWidget extends StatefulWidget {
  const CurrentClassesWidget({super.key});

  @override
  State<CurrentClassesWidget> createState() => _CurrentClassesWidgetState();
}

class _CurrentClassesWidgetState extends State<CurrentClassesWidget> {
  late CurrentClassesModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CurrentClassesModel());

    logFirebaseEvent('screen_view',
        parameters: {'screen_name': 'CurrentClasses'});
    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<int>(
      future: queryClassesRecordCount(),
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
        int currentClassesCount = snapshot.data!;

        return GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Scaffold(
            key: scaffoldKey,
            backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
            floatingActionButton: Align(
              alignment: const AlignmentDirectional(1.0, 1.0),
              child: Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 30.0),
                child: FloatingActionButton(
                  onPressed: () async {
                    logFirebaseEvent(
                        'CURRENT_CLASSES_FloatingActionButton_3pz');
                    if (currentClassesCount == 0) {
                      logFirebaseEvent('FloatingActionButton_show_snack_bar');
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
                      logFirebaseEvent('FloatingActionButton_navigate_to');

                      context.pushNamed(
                        'EditClasses',
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
                  backgroundColor: FlutterFlowTheme.of(context).secondary,
                  elevation: 8.0,
                  child: Icon(
                    Icons.edit,
                    color: FlutterFlowTheme.of(context).info,
                    size: 24.0,
                  ),
                ),
              ),
            ),
            appBar: AppBar(
              backgroundColor: FlutterFlowTheme.of(context).secondary,
              automaticallyImplyLeading: false,
              title: Align(
                alignment: const AlignmentDirectional(0.0, 0.0),
                child: Text(
                  'Current Classes',
                  style: FlutterFlowTheme.of(context).headlineMedium.override(
                        fontFamily: 'Outfit',
                        color: Colors.white,
                        fontSize: 35.0,
                        letterSpacing: 0.0,
                      ),
                ),
              ),
              actions: const [],
              centerTitle: false,
              elevation: 2.0,
            ),
            body: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 20.0, 0.0),
                    child: StreamBuilder<List<ClassesRecord>>(
                      stream: queryClassesRecord(
                        queryBuilder: (classesRecord) => classesRecord
                            .where(
                              'ownerId',
                              isEqualTo: currentUserUid,
                            )
                            .where(
                              'deleted',
                              isEqualTo: false,
                            ),
                      ),
                      builder: (context, snapshot) {
                        // Customize what your widget looks like when it's loading.
                        if (!snapshot.hasData) {
                          return Center(
                            child: SizedBox(
                              width: 50.0,
                              height: 50.0,
                              child: SpinKitFoldingCube(
                                color: FlutterFlowTheme.of(context).primary,
                                size: 50.0,
                              ),
                            ),
                          );
                        }
                        List<ClassesRecord> listViewClassesRecordList =
                            snapshot.data!;

                        return ListView.builder(
                          padding: EdgeInsets.zero,
                          primary: false,
                          shrinkWrap: true,
                          scrollDirection: Axis.vertical,
                          itemCount: listViewClassesRecordList.length,
                          itemBuilder: (context, listViewIndex) {
                            final listViewClassesRecord =
                                listViewClassesRecordList[listViewIndex];
                            return Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  0.0, 20.0, 0.0, 0.0),
                              child: InkWell(
                                splashColor: Colors.transparent,
                                focusColor: Colors.transparent,
                                hoverColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                onTap: () async {
                                  logFirebaseEvent(
                                      'CURRENT_CLASSES_Container_uljzhr6m_ON_TA');
                                  logFirebaseEvent('Container_navigate_to');

                                  context.pushNamed(
                                    'Classestasks',
                                    queryParameters: {
                                      'className': serializeParam(
                                        listViewClassesRecord,
                                        ParamType.Document,
                                      ),
                                    }.withoutNulls,
                                    extra: <String, dynamic>{
                                      'className': listViewClassesRecord,
                                    },
                                  );
                                },
                                child: AnimatedContainer(
                                  duration: const Duration(milliseconds: 830),
                                  curve: Curves.bounceOut,
                                  width: 350.0,
                                  height: 100.0,
                                  decoration: BoxDecoration(
                                    color:
                                        FlutterFlowTheme.of(context).secondary,
                                    boxShadow: const [
                                      BoxShadow(
                                        color: Color(0x33000000),
                                        offset: Offset(
                                          0.0,
                                          2.0,
                                        ),
                                      )
                                    ],
                                    borderRadius: BorderRadius.circular(30.0),
                                  ),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Align(
                                            alignment: const AlignmentDirectional(
                                                -1.0, -1.0),
                                            child: Padding(
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      20.0, 20.0, 0.0, 0.0),
                                              child: Text(
                                                listViewClassesRecord.className
                                                    .maybeHandleOverflow(
                                                  maxChars: 20,
                                                  replacement: '…',
                                                ),
                                                textAlign: TextAlign.justify,
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .headlineLarge
                                                        .override(
                                                          fontFamily: 'Outfit',
                                                          color: Colors.white,
                                                          letterSpacing: 0.0,
                                                        ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            );
                          },
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
