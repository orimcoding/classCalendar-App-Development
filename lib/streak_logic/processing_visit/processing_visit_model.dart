import '/flutter_flow/flutter_flow_timer.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'package:stop_watch_timer/stop_watch_timer.dart';
import 'processing_visit_widget.dart' show ProcessingVisitWidget;
import 'package:flutter/material.dart';

class ProcessingVisitModel extends FlutterFlowModel<ProcessingVisitWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for Timer widget.
  final timerInitialTimeMs = 10;
  int timerMilliseconds = 10;
  String timerValue = StopWatchTimer.getDisplayTime(
    10,
    hours: false,
    milliSecond: false,
  );
  FlutterFlowTimerController timerController =
      FlutterFlowTimerController(StopWatchTimer(mode: StopWatchMode.countDown));

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    timerController.dispose();
  }
}
