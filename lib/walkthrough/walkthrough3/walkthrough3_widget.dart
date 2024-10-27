import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';
import 'walkthrough3_model.dart';
export 'walkthrough3_model.dart';

class Walkthrough3Widget extends StatefulWidget {
  const Walkthrough3Widget({
    super.key,
    this.parameter1,
  });

  final String? parameter1;

  @override
  State<Walkthrough3Widget> createState() => _Walkthrough3WidgetState();
}

class _Walkthrough3WidgetState extends State<Walkthrough3Widget> {
  late Walkthrough3Model _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => Walkthrough3Model());

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
      'Here\'s Your Avatar, Customize it to Show Off Your Creativity!',
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
