import '/flutter_flow/flutter_flow_google_map.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'location_of_task_widget.dart' show LocationOfTaskWidget;
import 'package:flutter/material.dart';

class LocationOfTaskModel extends FlutterFlowModel<LocationOfTaskWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for GoogleMap widget.
  LatLng? googleMapsCenter;
  final googleMapsController = Completer<GoogleMapController>();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
