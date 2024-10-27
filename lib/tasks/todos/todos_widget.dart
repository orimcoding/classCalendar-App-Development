import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'todos_model.dart';
export 'todos_model.dart';

class TodosWidget extends StatefulWidget {
  const TodosWidget({super.key});

  @override
  State<TodosWidget> createState() => _TodosWidgetState();
}

class _TodosWidgetState extends State<TodosWidget> {
  late TodosModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => TodosModel());

    logFirebaseEvent('screen_view', parameters: {'screen_name': 'Todos'});
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
        floatingActionButton: Align(
          alignment: const AlignmentDirectional(1.0, 1.0),
          child: Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 40.0),
            child: FloatingActionButton(
              onPressed: () async {
                logFirebaseEvent('TODOS_FloatingActionButton_65fr90ea_ON_T');
                logFirebaseEvent('FloatingActionButton_navigate_to');

                context.pushNamed('Create04Task');
              },
              backgroundColor: FlutterFlowTheme.of(context).primary,
              elevation: 8.0,
              child: Icon(
                Icons.add,
                color: FlutterFlowTheme.of(context).info,
                size: 24.0,
              ),
            ),
          ),
        ),
        appBar: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).alternate,
          automaticallyImplyLeading: false,
          title: Align(
            alignment: const AlignmentDirectional(0.0, 0.0),
            child: Text(
              'Current Events',
              style: FlutterFlowTheme.of(context).headlineLarge.override(
                    fontFamily: 'Outfit',
                    color: FlutterFlowTheme.of(context).primaryText,
                    letterSpacing: 0.0,
                  ),
            ),
          ),
          actions: const [],
          centerTitle: false,
          elevation: 5.0,
        ),
        body: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 20.0, 0.0),
                child: StreamBuilder<List<TasksRecord>>(
                  stream: queryTasksRecord(
                    queryBuilder: (tasksRecord) => tasksRecord
                        .where(
                          'completed',
                          isEqualTo: false,
                        )
                        .where(
                          'ownerId',
                          isEqualTo: currentUserUid,
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
                    List<TasksRecord> listViewTasksRecordList = snapshot.data!;

                    return ListView.builder(
                      padding: EdgeInsets.zero,
                      primary: false,
                      shrinkWrap: true,
                      scrollDirection: Axis.vertical,
                      itemCount: listViewTasksRecordList.length,
                      itemBuilder: (context, listViewIndex) {
                        final listViewTasksRecord =
                            listViewTasksRecordList[listViewIndex];
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
                                  'TODOS_PAGE_Container_uo2m1a73_ON_TAP');
                              logFirebaseEvent('Container_navigate_to');

                              context.pushNamed(
                                'TaskDescript',
                                queryParameters: {
                                  'data': serializeParam(
                                    listViewTasksRecord.reference,
                                    ParamType.DocumentReference,
                                  ),
                                }.withoutNulls,
                              );
                            },
                            child: AnimatedContainer(
                              duration: const Duration(milliseconds: 830),
                              curve: Curves.bounceOut,
                              width: 350.0,
                              height: 100.0,
                              decoration: BoxDecoration(
                                boxShadow: const [
                                  BoxShadow(
                                    color: Color(0x33000000),
                                    offset: Offset(
                                      0.0,
                                      2.0,
                                    ),
                                  )
                                ],
                                gradient: LinearGradient(
                                  colors: [
                                    FlutterFlowTheme.of(context).primary,
                                    FlutterFlowTheme.of(context).secondary
                                  ],
                                  stops: const [0.0, 1.0],
                                  begin: const AlignmentDirectional(0.0, -1.0),
                                  end: const AlignmentDirectional(0, 1.0),
                                ),
                                borderRadius: BorderRadius.circular(30.0),
                              ),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Align(
                                        alignment:
                                            const AlignmentDirectional(-1.0, -1.0),
                                        child: Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  15.0, 20.0, 0.0, 0.0),
                                          child: Text(
                                            listViewTasksRecord.name
                                                .maybeHandleOverflow(
                                              maxChars: 15,
                                            ),
                                            textAlign: TextAlign.justify,
                                            style: FlutterFlowTheme.of(context)
                                                .headlineLarge
                                                .override(
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
                                          Column(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Align(
                                                alignment: const AlignmentDirectional(
                                                    -1.0, 0.0),
                                                child: Padding(
                                                  padding: const EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          2.0, 5.0, 0.0, 0.0),
                                                  child: Text(
                                                    valueOrDefault<String>(
                                                      listViewTasksRecord
                                                          .description,
                                                      'description',
                                                    ),
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Lexend',
                                                          color: Colors.white,
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.normal,
                                                        ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
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
  }
}
