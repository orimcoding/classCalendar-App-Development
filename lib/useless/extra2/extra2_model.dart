import '/flutter_flow/flutter_flow_util.dart';
import 'extra2_widget.dart' show Extra2Widget;
import 'package:flutter/material.dart';

class Extra2Model extends FlutterFlowModel<Extra2Widget> {
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
