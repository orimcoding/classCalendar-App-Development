import '/flutter_flow/flutter_flow_util.dart';
import 'extra8_widget.dart' show Extra8Widget;
import 'package:flutter/material.dart';

class Extra8Model extends FlutterFlowModel<Extra8Widget> {
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
