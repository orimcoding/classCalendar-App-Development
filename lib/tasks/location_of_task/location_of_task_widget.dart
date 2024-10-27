import '/flutter_flow/flutter_flow_google_map.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'location_of_task_model.dart';
export 'location_of_task_model.dart';

class LocationOfTaskWidget extends StatefulWidget {
  const LocationOfTaskWidget({
    super.key,
    required this.location,
  });

  final LatLng? location;

  @override
  State<LocationOfTaskWidget> createState() => _LocationOfTaskWidgetState();
}

class _LocationOfTaskWidgetState extends State<LocationOfTaskWidget> {
  late LocationOfTaskModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => LocationOfTaskModel());

    logFirebaseEvent('screen_view',
        parameters: {'screen_name': 'LocationOfTask'});
    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        resizeToAvoidBottomInset: false,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        appBar: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).alternate,
          automaticallyImplyLeading: false,
          leading: InkWell(
            splashColor: Colors.transparent,
            focusColor: Colors.transparent,
            hoverColor: Colors.transparent,
            highlightColor: Colors.transparent,
            onTap: () async {
              logFirebaseEvent('LOCATION_OF_TASK_Icon_8k8zvf6l_ON_TAP');
              logFirebaseEvent('Icon_navigate_back');
              context.safePop();
            },
            child: Icon(
              Icons.chevron_left_sharp,
              color: FlutterFlowTheme.of(context).secondaryText,
              size: 24.0,
            ),
          ),
          title: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Align(
                alignment: const AlignmentDirectional(-1.0, 0.0),
                child: Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 5.0),
                  child: Text(
                    'Task Location',
                    style: FlutterFlowTheme.of(context).headlineMedium.override(
                          fontFamily: 'Outfit',
                          color: const Color(0xFF15161E),
                          fontSize: 24.0,
                          letterSpacing: 0.0,
                          fontWeight: FontWeight.w500,
                        ),
                  ),
                ),
              ),
              Align(
                alignment: const AlignmentDirectional(-1.0, 0.0),
                child: Text(
                  'Below is your chosen location for this task.',
                  style: FlutterFlowTheme.of(context).labelMedium.override(
                        fontFamily: 'Outfit',
                        color: const Color(0xFF606A85),
                        fontSize: 14.0,
                        letterSpacing: 0.0,
                        fontWeight: FontWeight.w500,
                      ),
                ),
              ),
            ],
          ),
          actions: const [],
          centerTitle: true,
          elevation: 0.0,
        ),
        body: Stack(
          children: [
            Stack(
              children: [
                Stack(
                  children: [
                    Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Expanded(
                          child: FlutterFlowGoogleMap(
                            controller: _model.googleMapsController,
                            onCameraIdle: (latLng) => safeSetState(
                                () => _model.googleMapsCenter = latLng),
                            initialLocation: _model.googleMapsCenter ??=
                                widget.location!,
                            markerColor: GoogleMarkerColor.violet,
                            mapType: MapType.normal,
                            style: GoogleMapStyle.standard,
                            initialZoom: 14.0,
                            allowInteraction: true,
                            allowZoom: true,
                            showZoomControls: true,
                            showLocation: false,
                            showCompass: true,
                            showMapToolbar: true,
                            showTraffic: true,
                            centerMapOnMarkerTap: true,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
