import '/backend/custom_cloud_functions/custom_cloud_function_response_manager.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'page3_widget.dart' show Page3Widget;
import 'package:flutter/material.dart';

class Page3Model extends FlutterFlowModel<Page3Widget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for RadioButton widget.
  FormFieldController<String>? radioButtonValueController;
  // Stores action output result for [Cloud Function - retrieveGoogleAccessToken] action in Button widget.
  RetrieveGoogleAccessTokenCloudFunctionCallResponse? userAccessToken;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}

  /// Additional helper methods.
  String? get radioButtonValue => radioButtonValueController?.value;
}
