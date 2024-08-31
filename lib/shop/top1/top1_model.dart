import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/useless/topw/topw_widget.dart';
import 'top1_widget.dart' show Top1Widget;
import 'package:flutter/material.dart';

class Top1Model extends FlutterFlowModel<Top1Widget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for topw component.
  late TopwModel topwModel;
  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;

  @override
  void initState(BuildContext context) {
    topwModel = createModel(context, () => TopwModel());
  }

  @override
  void dispose() {
    topwModel.dispose();
  }
}
