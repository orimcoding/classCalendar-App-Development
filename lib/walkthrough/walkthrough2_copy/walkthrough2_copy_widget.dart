import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';
import 'walkthrough2_copy_model.dart';
export 'walkthrough2_copy_model.dart';

class Walkthrough2CopyWidget extends StatefulWidget {
  const Walkthrough2CopyWidget({
    super.key,
    this.parameter1,
  });

  final String? parameter1;

  @override
  State<Walkthrough2CopyWidget> createState() => _Walkthrough2CopyWidgetState();
}

class _Walkthrough2CopyWidgetState extends State<Walkthrough2CopyWidget> {
  late Walkthrough2CopyModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => Walkthrough2CopyModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GradientText(
      'All of Your Tasks In One Place!',
      textAlign: TextAlign.center,
      style: FlutterFlowTheme.of(context).displaySmall.override(
        fontFamily: 'Exo 2',
        color: const Color(0xFF812CB7),
        letterSpacing: 0.0,
        fontWeight: FontWeight.w800,
        shadows: [
          const Shadow(
            color: Color(0xFF401B71),
            offset: Offset(2.0, 2.0),
            blurRadius: 2.0,
          )
        ],
      ),
      colors: [
        FlutterFlowTheme.of(context).secondary,
        FlutterFlowTheme.of(context).primary
      ],
      gradientDirection: GradientDirection.ltr,
      gradientType: GradientType.linear,
    );
  }
}
