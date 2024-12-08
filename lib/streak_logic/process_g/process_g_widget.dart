import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_timer.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:stop_watch_timer/stop_watch_timer.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'process_g_model.dart';
export 'process_g_model.dart';

class ProcessGWidget extends StatefulWidget {
  const ProcessGWidget({super.key});

  @override
  State<ProcessGWidget> createState() => _ProcessGWidgetState();
}

class _ProcessGWidgetState extends State<ProcessGWidget> {
  late ProcessGModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ProcessGModel());

    logFirebaseEvent('screen_view', parameters: {'screen_name': 'processG'});
    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      logFirebaseEvent('PROCESS_G_PAGE_processG_ON_INIT_STATE');
      logFirebaseEvent('processG_wait__delay');
      await Future.delayed(const Duration(milliseconds: 10));
      logFirebaseEvent('processG_timer');
      _model.timerController.onStartTimer();
      logFirebaseEvent('processG_navigate_to');

      context.pushNamed('TestHome');
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
                  updateStateInterval: const Duration(milliseconds: 1000),
                  onChanged: (value, displayTime, shouldUpdate) {
                    _model.timerMilliseconds = value;
                    _model.timerValue = displayTime;
                    if (shouldUpdate) safeSetState(() {});
                  },
                  onEnded: () async {
                    logFirebaseEvent('PROCESS_G_Timer_9fw9ln63_ON_TIMER_END');
                    if (currentUserDocument?.lastex != null) {
                      logFirebaseEvent('Timer_backend_call');

                      await currentUserReference!.update(createUsersRecordData(
                        lastexsince: functions.daysBetween(
                            currentUserDocument!.lastex!, getCurrentTimestamp),
                        lastvisitsince: functions.daysBetween(
                            currentUserDocument!.lastVisit!,
                            getCurrentTimestamp),
                      ));
                    } else {
                      logFirebaseEvent('Timer_backend_call');

                      await currentUserReference!.update(createUsersRecordData(
                        lastvisitsince: functions.daysBetween(
                            currentUserDocument!.lastVisit!,
                            getCurrentTimestamp),
                      ));
                    }

                    if (valueOrDefault(currentUserDocument?.lastexsince, 0) ==
                        1) {
                      logFirebaseEvent('Timer_backend_call');

                      await currentUserReference!.update(createUsersRecordData(
                        streakb: true,
                      ));
                    } else {
                      logFirebaseEvent('Timer_backend_call');

                      await currentUserReference!.update(createUsersRecordData(
                        streakb: false,
                      ));
                    }

                    logFirebaseEvent('Timer_navigate_to');

                    context.pushNamed('TestHome');
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
