import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'page2_widget.dart' show Page2Widget;
import 'package:flutter/material.dart';

class Page2Model extends FlutterFlowModel<Page2Widget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for username_create widget.
  FocusNode? usernameCreateFocusNode;
  TextEditingController? usernameCreateTextController;
  String? Function(BuildContext, String?)?
      usernameCreateTextControllerValidator;
  // Stores action output result for [Firestore Query - Query a collection] action in username_create widget.
  UsersRecord? usernameQueryResult;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    usernameCreateFocusNode?.dispose();
    usernameCreateTextController?.dispose();
  }
}
