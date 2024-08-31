import '/flutter_flow/flutter_flow_radio_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'package:flutter/material.dart';
import 'athlete_model.dart';
export 'athlete_model.dart';

class AthleteWidget extends StatefulWidget {
  const AthleteWidget({super.key});

  @override
  State<AthleteWidget> createState() => _AthleteWidgetState();
}

class _AthleteWidgetState extends State<AthleteWidget> {
  late AthleteModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AthleteModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FlutterFlowRadioButton(
      options: ['Yes!', 'No!'].toList(),
      onChanged: (val) => setState(() {}),
      controller: _model.radioButtonValueController ??=
          FormFieldController<String>(null),
      optionHeight: 50.0,
      textStyle: FlutterFlowTheme.of(context).labelMedium.override(
            fontFamily: 'Raleway',
            fontSize: 25.0,
            letterSpacing: 0.0,
            fontWeight: FontWeight.w600,
          ),
      buttonPosition: RadioButtonPosition.left,
      direction: Axis.vertical,
      radioButtonColor: FlutterFlowTheme.of(context).primary,
      inactiveRadioButtonColor: FlutterFlowTheme.of(context).secondaryText,
      toggleable: false,
      horizontalAlignment: WrapAlignment.start,
      verticalAlignment: WrapCrossAlignment.start,
    );
  }
}
