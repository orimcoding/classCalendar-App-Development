import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_timer.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:stop_watch_timer/stop_watch_timer.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'processing_visit_model.dart';
export 'processing_visit_model.dart';

class ProcessingVisitWidget extends StatefulWidget {
  const ProcessingVisitWidget({super.key});

  @override
  State<ProcessingVisitWidget> createState() => _ProcessingVisitWidgetState();
}

class _ProcessingVisitWidgetState extends State<ProcessingVisitWidget> {
  late ProcessingVisitModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ProcessingVisitModel());

    logFirebaseEvent('screen_view',
        parameters: {'screen_name': 'processingVisit'});
    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      logFirebaseEvent('PROCESSING_VISIT_processingVisit_ON_INIT');
      if (currentUserDocument?.lastex != null) {
        logFirebaseEvent('processingVisit_backend_call');

        await currentUserReference!.update(createUsersRecordData(
          lastexsince: functions.daysBetween(
              currentUserDocument!.lastex!, getCurrentTimestamp),
        ));
      }
      logFirebaseEvent('processingVisit_wait__delay');
      await Future.delayed(const Duration(milliseconds: 10));
      logFirebaseEvent('processingVisit_timer');
      _model.timerController.onStartTimer();
      logFirebaseEvent('processingVisit_navigate_to');

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
                    logFirebaseEvent(
                        'PROCESSING_VISIT_Timer_tbwll4s4_ON_TIMER');
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
                      'processingGeneral',
                      extra: <String, dynamic>{
                        kTransitionInfoKey: const TransitionInfo(
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
