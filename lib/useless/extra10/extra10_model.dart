import '/flutter_flow/flutter_flow_util.dart';
import 'extra10_widget.dart' show Extra10Widget;
import 'package:flutter/material.dart';

class Extra10Model extends FlutterFlowModel<Extra10Widget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
