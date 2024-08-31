import '/flutter_flow/flutter_flow_util.dart';
import 'extra4_widget.dart' show Extra4Widget;
import 'package:flutter/material.dart';

class Extra4Model extends FlutterFlowModel<Extra4Widget> {
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
