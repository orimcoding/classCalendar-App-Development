import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/random_data_util.dart' as random_data;
import 'package:flutter/material.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';
import 'create_class_model.dart';
export 'create_class_model.dart';

class CreateClassWidget extends StatefulWidget {
  const CreateClassWidget({super.key});

  @override
  State<CreateClassWidget> createState() => _CreateClassWidgetState();
}

class _CreateClassWidgetState extends State<CreateClassWidget> {
  late CreateClassModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CreateClassModel());

    logFirebaseEvent('screen_view', parameters: {'screen_name': 'CreateClass'});
    _model.usernameCreateTextController ??= TextEditingController();
    _model.usernameCreateFocusNode ??= FocusNode();

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
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(10.0, 40.0, 350.0, 0.0),
              child: InkWell(
                splashColor: Colors.transparent,
                focusColor: Colors.transparent,
                hoverColor: Colors.transparent,
                highlightColor: Colors.transparent,
                onTap: () async {
                  logFirebaseEvent('CREATE_CLASS_PAGE_Icon_jdtdms8v_ON_TAP');
                  logFirebaseEvent('Icon_navigate_back');
                  context.safePop();
                },
                child: Icon(
                  Icons.close_sharp,
                  color: FlutterFlowTheme.of(context).secondaryText,
                  size: 30.0,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(0.0, 30.0, 0.0, 10.0),
              child: GradientText(
                'Enter the class name',
                textAlign: TextAlign.center,
                style: FlutterFlowTheme.of(context).displaySmall.override(
                      fontFamily: 'Outfit',
                      color: const Color(0xFF0F1113),
                      fontSize: 32.0,
                      letterSpacing: 0.0,
                      fontWeight: FontWeight.w500,
                    ),
                colors: [
                  FlutterFlowTheme.of(context).primary,
                  FlutterFlowTheme.of(context).secondary
                ],
                gradientDirection: GradientDirection.ltr,
                gradientType: GradientType.linear,
              ),
            ),
            Text(
              'Make sure to include the full name of the class',
              style: FlutterFlowTheme.of(context).bodyMedium.override(
                    fontFamily: 'Outfit',
                    color: FlutterFlowTheme.of(context).primary,
                    fontSize: 16.0,
                    letterSpacing: 0.0,
                    fontWeight: FontWeight.w500,
                  ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 150.0, 0.0, 0.0),
                child: SizedBox(
                  width: double.infinity,
                  child: TextFormField(
                    controller: _model.usernameCreateTextController,
                    focusNode: _model.usernameCreateFocusNode,
                    onFieldSubmitted: (_) async {
                      logFirebaseEvent(
                          'CREATE_CLASS_username_create_ON_TEXTFIEL');
                      logFirebaseEvent('username_create_update_app_state');
                      FFAppState().userName =
                          _model.usernameCreateTextController.text;
                      safeSetState(() {});
                    },
                    autofocus: false,
                    obscureText: false,
                    decoration: InputDecoration(
                      labelText: 'Enter Class Name Here',
                      labelStyle:
                          FlutterFlowTheme.of(context).labelLarge.override(
                                fontFamily: 'Raleway',
                                letterSpacing: 0.0,
                              ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: FlutterFlowTheme.of(context).alternate,
                          width: 2.0,
                        ),
                        borderRadius: BorderRadius.circular(40.0),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: FlutterFlowTheme.of(context).primary,
                          width: 2.0,
                        ),
                        borderRadius: BorderRadius.circular(40.0),
                      ),
                      errorBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: FlutterFlowTheme.of(context).error,
                          width: 2.0,
                        ),
                        borderRadius: BorderRadius.circular(40.0),
                      ),
                      focusedErrorBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: FlutterFlowTheme.of(context).error,
                          width: 2.0,
                        ),
                        borderRadius: BorderRadius.circular(40.0),
                      ),
                      filled: true,
                      fillColor:
                          FlutterFlowTheme.of(context).secondaryBackground,
                      contentPadding: const EdgeInsets.all(24.0),
                    ),
                    style: FlutterFlowTheme.of(context).bodyLarge.override(
                          fontFamily: 'Inter Tight',
                          letterSpacing: 0.0,
                        ),
                    keyboardType: TextInputType.emailAddress,
                    validator: _model.usernameCreateTextControllerValidator
                        .asValidator(context),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 8.0, 10.0),
              child: FFButtonWidget(
                onPressed: () async {
                  logFirebaseEvent('CREATE_CLASS_CREATE_CLASS_BTN_ON_TAP');
                  logFirebaseEvent('Button_backend_call');

                  await ClassesRecord.collection
                      .doc(random_data.randomString(
                        9,
                        900,
                        true,
                        true,
                        true,
                      ))
                      .set(createClassesRecordData(
                        className: _model.usernameCreateTextController.text,
                        ownerId: currentUserUid,
                        deleted: false,
                      ));
                  logFirebaseEvent('Button_navigate_to');

                  context.pushNamed('AssignmentNotebook');

                  logFirebaseEvent('Button_show_snack_bar');
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text(
                        'Class added!',
                        style: FlutterFlowTheme.of(context)
                            .titleMedium
                            .override(
                              fontFamily: 'Montserrat',
                              color: FlutterFlowTheme.of(context).primaryText,
                              letterSpacing: 0.0,
                            ),
                      ),
                      duration: const Duration(milliseconds: 4000),
                      backgroundColor: FlutterFlowTheme.of(context).secondary,
                    ),
                  );
                },
                text: 'Create class!',
                options: FFButtonOptions(
                  width: double.infinity,
                  height: 100.0,
                  padding: const EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                  iconPadding:
                      const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                  color: const Color(0xFF854BD2),
                  textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                        fontFamily: 'Outfit',
                        letterSpacing: 0.0,
                      ),
                  elevation: 10.0,
                  borderSide: const BorderSide(
                    color: Colors.transparent,
                    width: 1.0,
                  ),
                  borderRadius: BorderRadius.circular(17.0),
                  hoverColor: FlutterFlowTheme.of(context).secondary,
                ),
                showLoadingIndicator: false,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
