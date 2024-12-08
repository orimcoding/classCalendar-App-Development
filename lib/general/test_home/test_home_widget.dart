import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/components/empty_u_i_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_button_tabbar.dart';
import '/flutter_flow/flutter_flow_calendar.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';
import 'test_home_model.dart';
export 'test_home_model.dart';

class TestHomeWidget extends StatefulWidget {
  const TestHomeWidget({super.key});

  @override
  State<TestHomeWidget> createState() => _TestHomeWidgetState();
}

class _TestHomeWidgetState extends State<TestHomeWidget>
    with TickerProviderStateMixin {
  late TestHomeModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = <String, AnimationInfo>{};

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => TestHomeModel());

    logFirebaseEvent('screen_view', parameters: {'screen_name': 'TestHome'});
    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      logFirebaseEvent('TEST_HOME_PAGE_TestHome_ON_INIT_STATE');
      if (dateTimeFormat(
            "Md",
            getCurrentTimestamp,
            locale: FFLocalizations.of(context).languageCode,
          ) !=
          dateTimeFormat(
            "Md",
            currentUserDocument?.lastTaskDate,
            locale: FFLocalizations.of(context).languageCode,
          )) {
        logFirebaseEvent('TestHome_backend_call');

        await currentUserReference!.update(createUsersRecordData(
          dailyTasks: 0,
          dailyAssignments: 0,
          lastTaskDate: getCurrentTimestamp,
          lastAssignmentDate: getCurrentTimestamp,
        ));
      }
      if (currentUserDocument?.lastVisit != null) {
        logFirebaseEvent('TestHome_backend_call');

        await currentUserReference!.update(createUsersRecordData(
          lastvisitsince: functions.daysBetween(
              currentUserDocument!.lastVisit!, getCurrentTimestamp),
        ));
        if (valueOrDefault(currentUserDocument?.lastvisitsince, 0) != 0) {
          logFirebaseEvent('TestHome_navigate_to');

          context.pushNamed(
            'processingVisit',
            extra: <String, dynamic>{
              kTransitionInfoKey: const TransitionInfo(
                hasTransition: true,
                transitionType: PageTransitionType.fade,
                duration: Duration(milliseconds: 0),
              ),
            },
          );
        } else {
          return;
        }
      } else {
        logFirebaseEvent('TestHome_navigate_to');

        context.goNamed(
          'processingVisit',
          extra: <String, dynamic>{
            kTransitionInfoKey: const TransitionInfo(
              hasTransition: true,
              transitionType: PageTransitionType.fade,
              duration: Duration(milliseconds: 0),
            ),
          },
        );
      }

      logFirebaseEvent('TestHome_firestore_query');
      _model.userStreakData = await queryUsersRecordOnce(
        queryBuilder: (usersRecord) => usersRecord.where(
          'uid',
          isEqualTo: currentUserUid,
        ),
        singleRecord: true,
      ).then((s) => s.firstOrNull);
    });

    _model.tabBarController = TabController(
      vsync: this,
      length: 2,
      initialIndex: 0,
    )..addListener(() => safeSetState(() {}));
    animationsMap.addAll({
      'textOnPageLoadAnimation1': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          ShimmerEffect(
            curve: Curves.linear,
            delay: 0.0.ms,
            duration: 600.0.ms,
            color: const Color(0x80FFFFFF),
            angle: 0.524,
          ),
        ],
      ),
      'iconButtonOnPageLoadAnimation': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          ShimmerEffect(
            curve: Curves.linear,
            delay: 0.0.ms,
            duration: 600.0.ms,
            color: const Color(0x80FFFFFF),
            angle: 0.524,
          ),
        ],
      ),
      'textOnPageLoadAnimation2': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          ShimmerEffect(
            curve: Curves.linear,
            delay: 0.0.ms,
            duration: 600.0.ms,
            color: const Color(0x80FFFFFF),
            angle: 0.524,
          ),
        ],
      ),
      'tabOnPageLoadAnimation1': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          TiltEffect(
            curve: Curves.linear,
            delay: 0.0.ms,
            duration: 450.0.ms,
            begin: const Offset(0, 1.047),
            end: const Offset(0, 0),
          ),
        ],
      ),
      'calendarOnPageLoadAnimation1': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          ShimmerEffect(
            curve: Curves.linear,
            delay: 0.0.ms,
            duration: 600.0.ms,
            color: const Color(0x80FFFFFF),
            angle: 0.524,
          ),
        ],
      ),
      'listViewOnPageLoadAnimation1': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          MoveEffect(
            curve: Curves.easeOut,
            delay: 0.0.ms,
            duration: 450.0.ms,
            begin: const Offset(100.0, 0.0),
            end: const Offset(0.0, 0.0),
          ),
        ],
      ),
      'containerOnPageLoadAnimation1': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          ShimmerEffect(
            curve: Curves.linear,
            delay: 450.0.ms,
            duration: 600.0.ms,
            color: const Color(0x80FFFFFF),
            angle: 0.524,
          ),
        ],
      ),
      'tabOnPageLoadAnimation2': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          TiltEffect(
            curve: Curves.linear,
            delay: 0.0.ms,
            duration: 450.0.ms,
            begin: const Offset(0, 1.047),
            end: const Offset(0, 0),
          ),
        ],
      ),
      'calendarOnPageLoadAnimation2': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          ShimmerEffect(
            curve: Curves.linear,
            delay: 0.0.ms,
            duration: 600.0.ms,
            color: const Color(0x80FFFFFF),
            angle: 0.524,
          ),
        ],
      ),
      'listViewOnPageLoadAnimation2': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          MoveEffect(
            curve: Curves.easeOut,
            delay: 0.0.ms,
            duration: 450.0.ms,
            begin: const Offset(100.0, 0.0),
            end: const Offset(0.0, 0.0),
          ),
        ],
      ),
      'containerOnPageLoadAnimation2': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          ShimmerEffect(
            curve: Curves.linear,
            delay: 450.0.ms,
            duration: 600.0.ms,
            color: const Color(0x80FFFFFF),
            angle: 0.524,
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

    return StreamBuilder<List<TasksRecord>>(
      stream: queryTasksRecord(),
      builder: (context, snapshot) {
        // Customize what your widget looks like when it's loading.
        if (!snapshot.hasData) {
          return Scaffold(
            backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
            body: Center(
              child: SizedBox(
                width: 50.0,
                height: 50.0,
                child: SpinKitDoubleBounce(
                  color: FlutterFlowTheme.of(context).primary,
                  size: 50.0,
                ),
              ),
            ),
          );
        }
        List<TasksRecord> testHomeTasksRecordList = snapshot.data!;

        return GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Scaffold(
            key: scaffoldKey,
            backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
            appBar: AppBar(
              backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
              automaticallyImplyLeading: false,
              title: Align(
                alignment: const AlignmentDirectional(-1.0, 0.0),
                child: GradientText(
                  'classCalendar',
                  style: FlutterFlowTheme.of(context).headlineMedium.override(
                        fontFamily: 'Raleway',
                        letterSpacing: 0.0,
                        fontWeight: FontWeight.w500,
                      ),
                  colors: [
                    FlutterFlowTheme.of(context).primary,
                    FlutterFlowTheme.of(context).secondary
                  ],
                  gradientDirection: GradientDirection.ltr,
                  gradientType: GradientType.linear,
                ).animateOnPageLoad(animationsMap['textOnPageLoadAnimation1']!),
              ),
              actions: [
                Align(
                  alignment: const AlignmentDirectional(-1.0, 0.0),
                  child: Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 2.0, 3.0),
                    child: FlutterFlowIconButton(
                      borderRadius: 8.0,
                      buttonSize: 40.0,
                      icon: const FaIcon(
                        FontAwesomeIcons.fireAlt,
                        color: Color(0xFFE15A2E),
                        size: 24.0,
                      ),
                      onPressed: () {
                        print('IconButton pressed ...');
                      },
                    ).animateOnPageLoad(
                        animationsMap['iconButtonOnPageLoadAnimation']!),
                  ),
                ),
                Align(
                  alignment: const AlignmentDirectional(0.0, 0.0),
                  child: Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 20.0, 3.0),
                    child: AuthUserStreamWidget(
                      builder: (context) => GradientText(
                        valueOrDefault(currentUserDocument?.streak, 0)
                            .toString(),
                        textAlign: TextAlign.center,
                        style: FlutterFlowTheme.of(context)
                            .headlineMedium
                            .override(
                              fontFamily: 'Raleway',
                              color: const Color(0xFFDD751C),
                              fontSize: 35.0,
                              letterSpacing: 0.0,
                              fontWeight: FontWeight.w600,
                              decoration: TextDecoration.underline,
                            ),
                        colors: const [Color(0xFFAD1804), Color(0xFFE77E1A)],
                        gradientDirection: GradientDirection.ltr,
                        gradientType: GradientType.linear,
                      ).animateOnPageLoad(
                          animationsMap['textOnPageLoadAnimation2']!),
                    ),
                  ),
                ),
              ],
              centerTitle: false,
              elevation: 5.0,
            ),
            body: SafeArea(
              top: true,
              child: Stack(
                children: [
                  Stack(
                    children: [
                      Column(
                        children: [
                          Align(
                            alignment: const Alignment(0.0, 0),
                            child: FlutterFlowButtonTabBar(
                              useToggleButtonStyle: true,
                              isScrollable: true,
                              labelStyle: FlutterFlowTheme.of(context)
                                  .titleMedium
                                  .override(
                                    fontFamily: 'Montserrat',
                                    letterSpacing: 0.0,
                                  ),
                              unselectedLabelStyle: const TextStyle(),
                              labelColor:
                                  FlutterFlowTheme.of(context).primaryText,
                              unselectedLabelColor:
                                  FlutterFlowTheme.of(context).secondaryText,
                              backgroundColor: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              unselectedBackgroundColor:
                                  FlutterFlowTheme.of(context).alternate,
                              borderColor:
                                  FlutterFlowTheme.of(context).alternate,
                              borderWidth: 2.0,
                              borderRadius: 12.0,
                              elevation: 0.0,
                              labelPadding: const EdgeInsetsDirectional.fromSTEB(
                                  20.0, 0.0, 20.0, 0.0),
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  0.0, 12.0, 0.0, 12.0),
                              tabs: [
                                const Tab(
                                  text: 'Month',
                                ).animateOnPageLoad(
                                    animationsMap['tabOnPageLoadAnimation1']!),
                                const Tab(
                                  text: 'Week',
                                ).animateOnPageLoad(
                                    animationsMap['tabOnPageLoadAnimation2']!),
                              ],
                              controller: _model.tabBarController,
                              onTap: (i) async {
                                [() async {}, () async {}][i]();
                              },
                            ),
                          ),
                          Expanded(
                            child: TabBarView(
                              controller: _model.tabBarController,
                              children: [
                                Container(
                                  width: 100.0,
                                  height: 100.0,
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context)
                                        .primaryBackground,
                                  ),
                                  child: SingleChildScrollView(
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          width: double.infinity,
                                          decoration: BoxDecoration(
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryBackground,
                                            boxShadow: const [
                                              BoxShadow(
                                                blurRadius: 3.0,
                                                color: Color(0x33000000),
                                                offset: Offset(
                                                  0.0,
                                                  1.0,
                                                ),
                                              )
                                            ],
                                          ),
                                          child: FlutterFlowCalendar(
                                            color: FlutterFlowTheme.of(context)
                                                .primary,
                                            iconColor:
                                                FlutterFlowTheme.of(context)
                                                    .secondaryText,
                                            weekFormat: false,
                                            weekStartsMonday: true,
                                            initialDate: getCurrentTimestamp,
                                            onChange: (DateTimeRange?
                                                newSelectedDate) {
                                              safeSetState(() =>
                                                  _model.calendarSelectedDay1 =
                                                      newSelectedDate);
                                            },
                                            titleStyle:
                                                FlutterFlowTheme.of(context)
                                                    .titleLarge
                                                    .override(
                                                      fontFamily: 'Roboto',
                                                      letterSpacing: 0.0,
                                                    ),
                                            dayOfWeekStyle:
                                                FlutterFlowTheme.of(context)
                                                    .labelMedium
                                                    .override(
                                                      fontFamily: 'Raleway',
                                                      letterSpacing: 0.0,
                                                    ),
                                            dateStyle:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMedium
                                                    .override(
                                                      fontFamily: 'Inter Tight',
                                                      letterSpacing: 0.0,
                                                    ),
                                            selectedDateStyle:
                                                FlutterFlowTheme.of(context)
                                                    .titleSmall
                                                    .override(
                                                      fontFamily: 'Open Sans',
                                                      letterSpacing: 0.0,
                                                    ),
                                            inactiveDateStyle:
                                                FlutterFlowTheme.of(context)
                                                    .labelMedium
                                                    .override(
                                                      fontFamily: 'Raleway',
                                                      letterSpacing: 0.0,
                                                    ),
                                            locale: FFLocalizations.of(context)
                                                .languageCode,
                                          ).animateOnPageLoad(animationsMap[
                                              'calendarOnPageLoadAnimation1']!),
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 0.0, 0.0, 250.0),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Padding(
                                                padding: const EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        16.0, 12.0, 0.0, 0.0),
                                                child: Text(
                                                  'Coming Up',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .labelMedium
                                                      .override(
                                                        fontFamily: 'Raleway',
                                                        letterSpacing: 0.0,
                                                      ),
                                                ),
                                              ),
                                              SizedBox(
                                                height: 525.0,
                                                child: Stack(
                                                  children: [
                                                    Padding(
                                                      padding:
                                                          const EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  20.0,
                                                                  0.0,
                                                                  20.0,
                                                                  0.0),
                                                      child: StreamBuilder<
                                                          List<TasksRecord>>(
                                                        stream:
                                                            queryTasksRecord(
                                                          queryBuilder:
                                                              (tasksRecord) =>
                                                                  tasksRecord
                                                                      .where(
                                                                        'completed',
                                                                        isEqualTo:
                                                                            false,
                                                                      )
                                                                      .where(
                                                                        'ownerId',
                                                                        isEqualTo:
                                                                            currentUserUid,
                                                                      )
                                                                      .where(
                                                                        'start',
                                                                        isLessThanOrEqualTo: _model
                                                                            .calendarSelectedDay1
                                                                            ?.end,
                                                                      )
                                                                      .where(
                                                                        'start',
                                                                        isGreaterThanOrEqualTo: _model
                                                                            .calendarSelectedDay1
                                                                            ?.start,
                                                                      )
                                                                      .orderBy(
                                                                          'start'),
                                                        ),
                                                        builder: (context,
                                                            snapshot) {
                                                          // Customize what your widget looks like when it's loading.
                                                          if (!snapshot
                                                              .hasData) {
                                                            return Center(
                                                              child: SizedBox(
                                                                width: 50.0,
                                                                height: 50.0,
                                                                child:
                                                                    SpinKitDoubleBounce(
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .primary,
                                                                  size: 50.0,
                                                                ),
                                                              ),
                                                            );
                                                          }
                                                          List<TasksRecord>
                                                              listViewTasksRecordList =
                                                              snapshot.data!;
                                                          if (listViewTasksRecordList
                                                              .isEmpty) {
                                                            return const Center(
                                                              child:
                                                                  EmptyUIWidget(),
                                                            );
                                                          }

                                                          return ListView
                                                              .builder(
                                                            padding:
                                                                EdgeInsets.zero,
                                                            primary: false,
                                                            shrinkWrap: true,
                                                            scrollDirection:
                                                                Axis.vertical,
                                                            itemCount:
                                                                listViewTasksRecordList
                                                                    .length,
                                                            itemBuilder: (context,
                                                                listViewIndex) {
                                                              final listViewTasksRecord =
                                                                  listViewTasksRecordList[
                                                                      listViewIndex];
                                                              return Padding(
                                                                padding:
                                                                    const EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            20.0,
                                                                            0.0,
                                                                            0.0),
                                                                child: InkWell(
                                                                  splashColor:
                                                                      Colors
                                                                          .transparent,
                                                                  focusColor: Colors
                                                                      .transparent,
                                                                  hoverColor: Colors
                                                                      .transparent,
                                                                  highlightColor:
                                                                      Colors
                                                                          .transparent,
                                                                  onTap:
                                                                      () async {
                                                                    logFirebaseEvent(
                                                                        'TEST_HOME_PAGE_Container_e9g23kya_ON_TAP');
                                                                    logFirebaseEvent(
                                                                        'Container_navigate_to');

                                                                    context
                                                                        .pushNamed(
                                                                      'TaskDescript',
                                                                      queryParameters:
                                                                          {
                                                                        'data':
                                                                            serializeParam(
                                                                          listViewTasksRecord
                                                                              .reference,
                                                                          ParamType
                                                                              .DocumentReference,
                                                                        ),
                                                                      }.withoutNulls,
                                                                    );
                                                                  },
                                                                  child:
                                                                      Material(
                                                                    color: Colors
                                                                        .transparent,
                                                                    elevation:
                                                                        5.0,
                                                                    shape:
                                                                        RoundedRectangleBorder(
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              24.0),
                                                                    ),
                                                                    child:
                                                                        AnimatedContainer(
                                                                      duration: const Duration(
                                                                          milliseconds:
                                                                              830),
                                                                      curve: Curves
                                                                          .bounceOut,
                                                                      width:
                                                                          350.0,
                                                                      height:
                                                                          100.0,
                                                                      decoration:
                                                                          BoxDecoration(
                                                                        boxShadow: const [
                                                                          BoxShadow(
                                                                            blurRadius:
                                                                                4.0,
                                                                            color:
                                                                                Color(0x33000000),
                                                                            offset:
                                                                                Offset(
                                                                              0.0,
                                                                              2.0,
                                                                            ),
                                                                            spreadRadius:
                                                                                5.0,
                                                                          )
                                                                        ],
                                                                        gradient:
                                                                            LinearGradient(
                                                                          colors: [
                                                                            FlutterFlowTheme.of(context).primary,
                                                                            FlutterFlowTheme.of(context).secondary
                                                                          ],
                                                                          stops: const [
                                                                            0.0,
                                                                            1.0
                                                                          ],
                                                                          begin: const AlignmentDirectional(
                                                                              0.0,
                                                                              -1.0),
                                                                          end: const AlignmentDirectional(
                                                                              0,
                                                                              1.0),
                                                                        ),
                                                                        borderRadius:
                                                                            BorderRadius.circular(24.0),
                                                                        shape: BoxShape
                                                                            .rectangle,
                                                                      ),
                                                                      child:
                                                                          Stack(
                                                                        children: [
                                                                          Stack(
                                                                            children: [
                                                                              Align(
                                                                                alignment: const AlignmentDirectional(-1.0, -1.0),
                                                                                child: Padding(
                                                                                  padding: const EdgeInsetsDirectional.fromSTEB(20.0, 15.0, 0.0, 0.0),
                                                                                  child: Text(
                                                                                    listViewTasksRecord.name.maybeHandleOverflow(
                                                                                      maxChars: 10,
                                                                                      replacement: '…',
                                                                                    ),
                                                                                    textAlign: TextAlign.start,
                                                                                    style: FlutterFlowTheme.of(context).headlineLarge.override(
                                                                                          fontFamily: 'Outfit',
                                                                                          color: Colors.white,
                                                                                          letterSpacing: 0.0,
                                                                                        ),
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                              Align(
                                                                                alignment: const AlignmentDirectional(0.91, -0.01),
                                                                                child: Padding(
                                                                                  padding: const EdgeInsetsDirectional.fromSTEB(200.0, 0.0, 0.0, 0.0),
                                                                                  child: Icon(
                                                                                    Icons.arrow_right,
                                                                                    color: FlutterFlowTheme.of(context).primaryBackground,
                                                                                    size: 50.0,
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                              if (listViewTasksRecord.taskType == 'task' ? true : false)
                                                                                Align(
                                                                                  alignment: const AlignmentDirectional(0.76, 0.51),
                                                                                  child: Padding(
                                                                                    padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 20.0, 23.0),
                                                                                    child: FaIcon(
                                                                                      FontAwesomeIcons.tasks,
                                                                                      color: FlutterFlowTheme.of(context).primaryBackground,
                                                                                      size: 26.0,
                                                                                    ),
                                                                                  ),
                                                                                ),
                                                                              if (listViewTasksRecord.taskType == 'assignment' ? true : false)
                                                                                Align(
                                                                                  alignment: const AlignmentDirectional(0.68, -0.09),
                                                                                  child: Padding(
                                                                                    padding: const EdgeInsetsDirectional.fromSTEB(7.0, 5.0, 5.0, 0.0),
                                                                                    child: Icon(
                                                                                      Icons.school_sharp,
                                                                                      color: FlutterFlowTheme.of(context).primaryBackground,
                                                                                      size: 34.0,
                                                                                    ),
                                                                                  ),
                                                                                ),
                                                                              Align(
                                                                                alignment: const AlignmentDirectional(0.34, -0.8),
                                                                                child: Padding(
                                                                                  padding: const EdgeInsetsDirectional.fromSTEB(0.0, 23.0, 0.0, 0.0),
                                                                                  child: Text(
                                                                                    valueOrDefault<String>(
                                                                                      listViewTasksRecord.emojiRepresentation,
                                                                                      '😊',
                                                                                    ),
                                                                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                          fontFamily: 'Inter Tight',
                                                                                          fontSize: 32.0,
                                                                                          letterSpacing: 0.0,
                                                                                        ),
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                              Align(
                                                                                alignment: const AlignmentDirectional(0.0, 0.72),
                                                                                child: Padding(
                                                                                  padding: const EdgeInsetsDirectional.fromSTEB(15.0, 4.0, 0.0, 0.0),
                                                                                  child: Row(
                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                    children: [
                                                                                      Card(
                                                                                        clipBehavior: Clip.antiAliasWithSaveLayer,
                                                                                        color: const Color(0x9BFFFFFF),
                                                                                        elevation: 0.0,
                                                                                        shape: RoundedRectangleBorder(
                                                                                          borderRadius: BorderRadius.circular(8.0),
                                                                                        ),
                                                                                        child: Padding(
                                                                                          padding: const EdgeInsetsDirectional.fromSTEB(6.0, 4.0, 8.0, 4.0),
                                                                                          child: Text(
                                                                                            valueOrDefault<String>(
                                                                                              dateTimeFormat(
                                                                                                "M/d h:mm a",
                                                                                                listViewTasksRecord.start,
                                                                                                locale: FFLocalizations.of(context).languageCode,
                                                                                              ),
                                                                                              'm',
                                                                                            ),
                                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                  fontFamily: 'Inter Tight',
                                                                                                  color: FlutterFlowTheme.of(context).tertiary,
                                                                                                  letterSpacing: 0.0,
                                                                                                ),
                                                                                          ),
                                                                                        ),
                                                                                      ),
                                                                                    ],
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                            ],
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ).animateOnPageLoad(
                                                                    animationsMap[
                                                                        'containerOnPageLoadAnimation1']!),
                                                              );
                                                            },
                                                          ).animateOnPageLoad(
                                                              animationsMap[
                                                                  'listViewOnPageLoadAnimation1']!);
                                                        },
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Container(
                                  width: 100.0,
                                  height: 100.0,
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context)
                                        .primaryBackground,
                                  ),
                                  child: SingleChildScrollView(
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          width: double.infinity,
                                          decoration: BoxDecoration(
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryBackground,
                                            boxShadow: const [
                                              BoxShadow(
                                                blurRadius: 3.0,
                                                color: Color(0x33000000),
                                                offset: Offset(
                                                  0.0,
                                                  1.0,
                                                ),
                                              )
                                            ],
                                          ),
                                          child: FlutterFlowCalendar(
                                            color: FlutterFlowTheme.of(context)
                                                .primary,
                                            iconColor:
                                                FlutterFlowTheme.of(context)
                                                    .secondaryText,
                                            weekFormat: true,
                                            weekStartsMonday: true,
                                            initialDate: FFAppState()
                                                .calendarSelectedDay,
                                            onChange: (DateTimeRange?
                                                newSelectedDate) {
                                              safeSetState(() =>
                                                  _model.calendarSelectedDay2 =
                                                      newSelectedDate);
                                            },
                                            titleStyle:
                                                FlutterFlowTheme.of(context)
                                                    .titleLarge
                                                    .override(
                                                      fontFamily: 'Roboto',
                                                      letterSpacing: 0.0,
                                                    ),
                                            dayOfWeekStyle:
                                                FlutterFlowTheme.of(context)
                                                    .labelMedium
                                                    .override(
                                                      fontFamily: 'Raleway',
                                                      letterSpacing: 0.0,
                                                    ),
                                            dateStyle:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMedium
                                                    .override(
                                                      fontFamily: 'Inter Tight',
                                                      letterSpacing: 0.0,
                                                    ),
                                            selectedDateStyle:
                                                FlutterFlowTheme.of(context)
                                                    .titleSmall
                                                    .override(
                                                      fontFamily: 'Open Sans',
                                                      letterSpacing: 0.0,
                                                    ),
                                            inactiveDateStyle:
                                                FlutterFlowTheme.of(context)
                                                    .labelMedium
                                                    .override(
                                                      fontFamily: 'Raleway',
                                                      letterSpacing: 0.0,
                                                    ),
                                            locale: FFLocalizations.of(context)
                                                .languageCode,
                                          ).animateOnPageLoad(animationsMap[
                                              'calendarOnPageLoadAnimation2']!),
                                        ),
                                        Column(
                                          mainAxisSize: MainAxisSize.max,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Padding(
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      16.0, 12.0, 0.0, 0.0),
                                              child: Text(
                                                'Coming Up',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .labelMedium
                                                        .override(
                                                          fontFamily: 'Raleway',
                                                          letterSpacing: 0.0,
                                                        ),
                                              ),
                                            ),
                                          ],
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 0.0, 0.0, 250.0),
                                          child: SizedBox(
                                            height: 525.0,
                                            child: Stack(
                                              children: [
                                                Padding(
                                                  padding: const EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          20.0, 0.0, 20.0, 0.0),
                                                  child: StreamBuilder<
                                                      List<TasksRecord>>(
                                                    stream: queryTasksRecord(
                                                      queryBuilder:
                                                          (tasksRecord) =>
                                                              tasksRecord
                                                                  .where(
                                                                    'completed',
                                                                    isEqualTo:
                                                                        false,
                                                                  )
                                                                  .where(
                                                                    'ownerId',
                                                                    isEqualTo:
                                                                        currentUserUid,
                                                                  )
                                                                  .where(
                                                                    'start',
                                                                    isLessThanOrEqualTo:
                                                                        _model
                                                                            .calendarSelectedDay1
                                                                            ?.end,
                                                                  )
                                                                  .where(
                                                                    'start',
                                                                    isGreaterThanOrEqualTo: _model
                                                                        .calendarSelectedDay1
                                                                        ?.start,
                                                                  )
                                                                  .orderBy(
                                                                      'start'),
                                                    ),
                                                    builder:
                                                        (context, snapshot) {
                                                      // Customize what your widget looks like when it's loading.
                                                      if (!snapshot.hasData) {
                                                        return Center(
                                                          child: SizedBox(
                                                            width: 50.0,
                                                            height: 50.0,
                                                            child:
                                                                SpinKitDoubleBounce(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .primary,
                                                              size: 50.0,
                                                            ),
                                                          ),
                                                        );
                                                      }
                                                      List<TasksRecord>
                                                          listViewTasksRecordList =
                                                          snapshot.data!;
                                                      if (listViewTasksRecordList
                                                          .isEmpty) {
                                                        return const Center(
                                                          child:
                                                              EmptyUIWidget(),
                                                        );
                                                      }

                                                      return ListView.builder(
                                                        padding:
                                                            EdgeInsets.zero,
                                                        primary: false,
                                                        shrinkWrap: true,
                                                        scrollDirection:
                                                            Axis.vertical,
                                                        itemCount:
                                                            listViewTasksRecordList
                                                                .length,
                                                        itemBuilder: (context,
                                                            listViewIndex) {
                                                          final listViewTasksRecord =
                                                              listViewTasksRecordList[
                                                                  listViewIndex];
                                                          return Padding(
                                                            padding:
                                                                const EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0.0,
                                                                        20.0,
                                                                        0.0,
                                                                        0.0),
                                                            child: InkWell(
                                                              splashColor: Colors
                                                                  .transparent,
                                                              focusColor: Colors
                                                                  .transparent,
                                                              hoverColor: Colors
                                                                  .transparent,
                                                              highlightColor:
                                                                  Colors
                                                                      .transparent,
                                                              onTap: () async {
                                                                logFirebaseEvent(
                                                                    'TEST_HOME_PAGE_Container_7357ptn7_ON_TAP');
                                                                logFirebaseEvent(
                                                                    'Container_navigate_to');

                                                                context
                                                                    .pushNamed(
                                                                  'TaskDescript',
                                                                  queryParameters:
                                                                      {
                                                                    'data':
                                                                        serializeParam(
                                                                      listViewTasksRecord
                                                                          .reference,
                                                                      ParamType
                                                                          .DocumentReference,
                                                                    ),
                                                                  }.withoutNulls,
                                                                );
                                                              },
                                                              child: Material(
                                                                color: Colors
                                                                    .transparent,
                                                                elevation: 5.0,
                                                                shape:
                                                                    RoundedRectangleBorder(
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              24.0),
                                                                ),
                                                                child:
                                                                    AnimatedContainer(
                                                                  duration: const Duration(
                                                                      milliseconds:
                                                                          830),
                                                                  curve: Curves
                                                                      .bounceOut,
                                                                  width: 350.0,
                                                                  height: 100.0,
                                                                  decoration:
                                                                      BoxDecoration(
                                                                    boxShadow: const [
                                                                      BoxShadow(
                                                                        blurRadius:
                                                                            4.0,
                                                                        color: Color(
                                                                            0x33000000),
                                                                        offset:
                                                                            Offset(
                                                                          0.0,
                                                                          2.0,
                                                                        ),
                                                                        spreadRadius:
                                                                            5.0,
                                                                      )
                                                                    ],
                                                                    gradient:
                                                                        LinearGradient(
                                                                      colors: [
                                                                        FlutterFlowTheme.of(context)
                                                                            .primary,
                                                                        FlutterFlowTheme.of(context)
                                                                            .secondary
                                                                      ],
                                                                      stops: const [
                                                                        0.0,
                                                                        1.0
                                                                      ],
                                                                      begin: const AlignmentDirectional(
                                                                          0.0,
                                                                          -1.0),
                                                                      end: const AlignmentDirectional(
                                                                          0,
                                                                          1.0),
                                                                    ),
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            24.0),
                                                                    shape: BoxShape
                                                                        .rectangle,
                                                                  ),
                                                                  child: Stack(
                                                                    children: [
                                                                      Stack(
                                                                        children: [
                                                                          Align(
                                                                            alignment:
                                                                                const AlignmentDirectional(-1.0, -1.0),
                                                                            child:
                                                                                Padding(
                                                                              padding: const EdgeInsetsDirectional.fromSTEB(20.0, 15.0, 0.0, 0.0),
                                                                              child: Text(
                                                                                listViewTasksRecord.name.maybeHandleOverflow(
                                                                                  maxChars: 10,
                                                                                  replacement: '…',
                                                                                ),
                                                                                textAlign: TextAlign.start,
                                                                                style: FlutterFlowTheme.of(context).headlineLarge.override(
                                                                                      fontFamily: 'Outfit',
                                                                                      color: Colors.white,
                                                                                      letterSpacing: 0.0,
                                                                                    ),
                                                                              ),
                                                                            ),
                                                                          ),
                                                                          Align(
                                                                            alignment:
                                                                                const AlignmentDirectional(0.91, -0.01),
                                                                            child:
                                                                                Padding(
                                                                              padding: const EdgeInsetsDirectional.fromSTEB(200.0, 0.0, 0.0, 0.0),
                                                                              child: Icon(
                                                                                Icons.arrow_right,
                                                                                color: FlutterFlowTheme.of(context).primaryBackground,
                                                                                size: 50.0,
                                                                              ),
                                                                            ),
                                                                          ),
                                                                          if (listViewTasksRecord.taskType == 'task'
                                                                              ? true
                                                                              : false)
                                                                            Align(
                                                                              alignment: const AlignmentDirectional(0.76, 0.51),
                                                                              child: Padding(
                                                                                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 20.0, 23.0),
                                                                                child: FaIcon(
                                                                                  FontAwesomeIcons.tasks,
                                                                                  color: FlutterFlowTheme.of(context).primaryBackground,
                                                                                  size: 26.0,
                                                                                ),
                                                                              ),
                                                                            ),
                                                                          if (listViewTasksRecord.taskType == 'assignment'
                                                                              ? true
                                                                              : false)
                                                                            Align(
                                                                              alignment: const AlignmentDirectional(0.68, -0.09),
                                                                              child: Padding(
                                                                                padding: const EdgeInsetsDirectional.fromSTEB(7.0, 5.0, 5.0, 0.0),
                                                                                child: Icon(
                                                                                  Icons.school_sharp,
                                                                                  color: FlutterFlowTheme.of(context).primaryBackground,
                                                                                  size: 34.0,
                                                                                ),
                                                                              ),
                                                                            ),
                                                                          Align(
                                                                            alignment:
                                                                                const AlignmentDirectional(0.34, -0.8),
                                                                            child:
                                                                                Padding(
                                                                              padding: const EdgeInsetsDirectional.fromSTEB(0.0, 23.0, 0.0, 0.0),
                                                                              child: Text(
                                                                                valueOrDefault<String>(
                                                                                  listViewTasksRecord.emojiRepresentation,
                                                                                  '😊',
                                                                                ),
                                                                                style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                      fontFamily: 'Inter Tight',
                                                                                      fontSize: 32.0,
                                                                                      letterSpacing: 0.0,
                                                                                    ),
                                                                              ),
                                                                            ),
                                                                          ),
                                                                          Align(
                                                                            alignment:
                                                                                const AlignmentDirectional(0.0, 0.72),
                                                                            child:
                                                                                Padding(
                                                                              padding: const EdgeInsetsDirectional.fromSTEB(15.0, 4.0, 0.0, 0.0),
                                                                              child: Row(
                                                                                mainAxisSize: MainAxisSize.max,
                                                                                children: [
                                                                                  Card(
                                                                                    clipBehavior: Clip.antiAliasWithSaveLayer,
                                                                                    color: const Color(0x9BFFFFFF),
                                                                                    elevation: 0.0,
                                                                                    shape: RoundedRectangleBorder(
                                                                                      borderRadius: BorderRadius.circular(8.0),
                                                                                    ),
                                                                                    child: Padding(
                                                                                      padding: const EdgeInsetsDirectional.fromSTEB(6.0, 4.0, 8.0, 4.0),
                                                                                      child: Text(
                                                                                        valueOrDefault<String>(
                                                                                          dateTimeFormat(
                                                                                            "M/d h:mm a",
                                                                                            listViewTasksRecord.start,
                                                                                            locale: FFLocalizations.of(context).languageCode,
                                                                                          ),
                                                                                          'm',
                                                                                        ),
                                                                                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                              fontFamily: 'Inter Tight',
                                                                                              color: FlutterFlowTheme.of(context).tertiary,
                                                                                              letterSpacing: 0.0,
                                                                                            ),
                                                                                      ),
                                                                                    ),
                                                                                  ),
                                                                                ],
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ),
                                                              ),
                                                            ).animateOnPageLoad(
                                                                animationsMap[
                                                                    'containerOnPageLoadAnimation2']!),
                                                          );
                                                        },
                                                      ).animateOnPageLoad(
                                                          animationsMap[
                                                              'listViewOnPageLoadAnimation2']!);
                                                    },
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ],
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
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
