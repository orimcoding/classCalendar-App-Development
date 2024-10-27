import '/flutter_flow/flutter_flow_util.dart';
import 'create_class_widget.dart' show CreateClassWidget;
import 'package:flutter/material.dart';

class CreateClassModel extends FlutterFlowModel<CreateClassWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for username_create widget.
  FocusNode? usernameCreateFocusNode;
  TextEditingController? usernameCreateTextController;
  String? Function(BuildContext, String?)?
      usernameCreateTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    usernameCreateFocusNode?.dispose();
    usernameCreateTextController?.dispose();
  }
}
