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
import 'process_e_model.dart';
export 'process_e_model.dart';

class ProcessEWidget extends StatefulWidget {
  const ProcessEWidget({super.key});

  static String routeName = 'processE';
  static String routePath = '/processE';

  @override
  State<ProcessEWidget> createState() => _ProcessEWidgetState();
}

class _ProcessEWidgetState extends State<ProcessEWidget> {
  late ProcessEModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ProcessEModel());

    logFirebaseEvent('screen_view', parameters: {'screen_name': 'processE'});
    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      logFirebaseEvent('PROCESS_E_PAGE_processE_ON_INIT_STATE');
      if (valueOrDefault(currentUserDocument?.lastexsince, 0) == 1) {
        logFirebaseEvent('processE_backend_call');

        await currentUserReference!.update(createUsersRecordData(
          streakb: true,
        ));
      } else {
        logFirebaseEvent('processE_backend_call');

        await currentUserReference!.update(createUsersRecordData(
          streakb: false,
        ));
      }
          logFirebaseEvent('processE_wait__delay');
      await Future.delayed(const Duration(milliseconds: 10));
      logFirebaseEvent('processE_timer');
      _model.timerController.onStartTimer();
      logFirebaseEvent('processE_navigate_to');

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
                    logFirebaseEvent('PROCESS_E_Timer_zlq9brxi_ON_TIMER_END');
                    if (valueOrDefault<bool>(
                            currentUserDocument?.streakb, false) ==
                        true) {
                      logFirebaseEvent('Timer_backend_call');

                      await currentUserReference!.update({
                        ...createUsersRecordData(
                          lastex: getCurrentTimestamp,
                        ),
                        ...mapToFirestore(
                          {
                            'streak': FieldValue.increment(1),
                            'coins': FieldValue.increment(1),
                          },
                        ),
                      });
                      logFirebaseEvent('Timer_show_snack_bar');
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text(
                            'Got a Coin From YourStreak!',
                            style: TextStyle(
                              color: FlutterFlowTheme.of(context).primaryText,
                            ),
                          ),
                          duration: Duration(milliseconds: 4000),
                          backgroundColor:
                              FlutterFlowTheme.of(context).secondary,
                        ),
                      );
                    } else {
                      logFirebaseEvent('Timer_backend_call');

                      await currentUserReference!.update(createUsersRecordData(
                        lastexsince: functions.daysBetween(
                            currentUserDocument!.lastex!, getCurrentTimestamp),
                      ));
                    }

                    logFirebaseEvent('Timer_navigate_to');

                    context.pushNamed(ProcessGWidget.routeName);
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
