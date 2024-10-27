import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';

Future vals(BuildContext context) async {
  logFirebaseEvent('vals_show_snack_bar');
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: Text(
        'Location selected!',
        style: FlutterFlowTheme.of(context).titleMedium.override(
              fontFamily: 'Montserrat',
              letterSpacing: 0.0,
            ),
      ),
      duration: const Duration(milliseconds: 4000),
      backgroundColor: FlutterFlowTheme.of(context).secondary,
    ),
  );
}
