import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'all_assg_widget.dart' show AllAssgWidget;
import 'package:flutter/material.dart';

class AllAssgModel extends FlutterFlowModel<AllAssgWidget> {
  ///  Local state fields for this page.

  bool showFullList = true;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  List<AssignmentsRecord> simpleSearchResults = [];

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
