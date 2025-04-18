import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/index.dart';
import 'page3_widget.dart' show Page3Widget;
import 'package:flutter/material.dart';

class Page3Model extends FlutterFlowModel<Page3Widget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for RadioButton widget.
  FormFieldController<String>? radioButtonValueController;
  // Stores action output result for [Custom Action - getFirebaseIdToken] action in Button widget.
  String? tempTok;
  // Stores action output result for [Backend Call - API (Get Access Token)] action in Button widget.
  ApiCallResponse? accApi;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}

  /// Additional helper methods.
  String? get radioButtonValue => radioButtonValueController?.value;
}
