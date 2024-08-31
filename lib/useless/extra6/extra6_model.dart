import '/flutter_flow/flutter_flow_util.dart';
import 'extra6_widget.dart' show Extra6Widget;
import 'package:flutter/material.dart';

class Extra6Model extends FlutterFlowModel<Extra6Widget> {
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
