import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_timer.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import '/index.dart';
import 'package:stop_watch_timer/stop_watch_timer.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'process_v_model.dart';
export 'process_v_model.dart';

class ProcessVWidget extends StatefulWidget {
  const ProcessVWidget({super.key});

  static String routeName = 'processV';
  static String routePath = '/processV';

  @override
  State<ProcessVWidget> createState() => _ProcessVWidgetState();
}

class _ProcessVWidgetState extends State<ProcessVWidget> {
  late ProcessVModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ProcessVModel());

    logFirebaseEvent('screen_view', parameters: {'screen_name': 'processV'});
    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      logFirebaseEvent('PROCESS_V_PAGE_processV_ON_INIT_STATE');
      if (currentUserDocument?.lastex != null) {
        logFirebaseEvent('processV_backend_call');

        await currentUserReference!.update(createUsersRecordData(
          lastexsince: functions.daysBetween(
              currentUserDocument!.lastex!, getCurrentTimestamp),
        ));
      }
      logFirebaseEvent('processV_wait__delay');
      await Future.delayed(const Duration(milliseconds: 10));
      logFirebaseEvent('processV_timer');
      _model.timerController.onStartTimer();
      logFirebaseEvent('processV_navigate_to');

      context.pushNamed(TestHomeWidget.routeName);
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
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Opacity(
                opacity: 0.0,
                child: FlutterFlowTimer(
                  initialTime: _model.timerInitialTimeMs,
                  getDisplayTime: (value) => StopWatchTimer.getDisplayTime(
                    value,
                    hours: false,
                    milliSecond: false,
                  ),
                  controller: _model.timerController,
                  updateStateInterval: Duration(milliseconds: 1000),
                  onChanged: (value, displayTime, shouldUpdate) {
                    _model.timerMilliseconds = value;
                    _model.timerValue = displayTime;
                    if (shouldUpdate) safeSetState(() {});
                  },
                  onEnded: () async {
                    logFirebaseEvent('PROCESS_V_Timer_nf5aok4m_ON_TIMER_END');
                    if (valueOrDefault(currentUserDocument?.lastexsince, 0) ==
                        1) {
                      logFirebaseEvent('Timer_backend_call');

                      await currentUserReference!
                          .update(createUsersRecordData(
                        streakb: true,
                        lastVisit: getCurrentTimestamp,
                      ));
                    } else {
                      logFirebaseEvent('Timer_backend_call');

                      await currentUserReference!
                          .update(createUsersRecordData(
                        streakb: false,
                        lastVisit: getCurrentTimestamp,
                        streak: 0,
                      ));
                    }
                  
                    logFirebaseEvent('Timer_navigate_to');

                    context.pushNamed(
                      ProcessGWidget.routeName,
                      extra: <String, dynamic>{
                        kTransitionInfoKey: TransitionInfo(
                          hasTransition: true,
                          transitionType: PageTransitionType.fade,
                          duration: Duration(milliseconds: 0),
                        ),
                      },
                    );
                  },
                  textAlign: TextAlign.start,
                  style: FlutterFlowTheme.of(context).headlineSmall.override(
                        fontFamily: 'Raleway',
                        letterSpacing: 0.0,
                      ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
