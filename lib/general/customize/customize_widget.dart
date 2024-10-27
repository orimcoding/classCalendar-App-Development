import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_web_view.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';
import 'customize_model.dart';
export 'customize_model.dart';

class CustomizeWidget extends StatefulWidget {
  const CustomizeWidget({super.key});

  @override
  State<CustomizeWidget> createState() => _CustomizeWidgetState();
}

class _CustomizeWidgetState extends State<CustomizeWidget> {
  late CustomizeModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CustomizeModel());

    logFirebaseEvent('screen_view', parameters: {'screen_name': 'customize'});
    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: Align(
          alignment: const AlignmentDirectional(0.0, 0.0),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 40.0, 0.0, 0.0),
                child: GradientText(
                  'Customize',
                  style: FlutterFlowTheme.of(context).titleLarge.override(
                        fontFamily: 'Outfit',
                        fontSize: 50.0,
                        letterSpacing: 0.0,
                      ),
                  colors: [
                    FlutterFlowTheme.of(context).primary,
                    FlutterFlowTheme.of(context).secondary
                  ],
                  gradientDirection: GradientDirection.ltr,
                  gradientType: GradientType.linear,
                ),
              ),
              FlutterFlowWebView(
                content: valueOrDefault<String>(
                  'https://avataaars.io/?avatarStyle=Circle&topType=${_model.dropDownValue2}&accessoriesType=${_model.dropDownValue1}&hairColor=${_model.dropDownValue3}&facialHairType=${_model.dropDownValue5}&clotheType=${_model.dropDownValue7}&eyeType=${_model.dropDownValue4}&eyebrowType=${_model.dropDownValue9}&mouthType=${_model.dropDownValue11}&skinColor=${_model.dropDownValue10}&hatColor=${FFAppState().selectedHatColor}&facialHairColor=${_model.dropDownValue6}&clotheColor=${_model.dropDownValue8}&graphicType=${FFAppState().selectedGraphic}',
                  'https://avataaars.io/?avatarStyle=Circle&topType=LongHairFro&accessoriesType=Wayfarers&hairColor=Brown&facialHairType=Blank&clotheType=BlazerSweater&eyeType=EyeRoll&eyebrowType=RaisedExcited&mouthType=Tongue&skinColor=Yellow',
                ),
                bypass: false,
                height: 200.0,
                verticalScroll: false,
                horizontalScroll: false,
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Flexible(
                      child: Align(
                        alignment: const AlignmentDirectional(0.0, 0.0),
                        child: FlutterFlowDropDown<String>(
                          controller: _model.dropDownValueController1 ??=
                              FormFieldController<String>(
                            _model.dropDownValue1 ??= 'Blank',
                          ),
                          options: FFAppState().ownedAccessories,
                          onChanged: (val) async {
                            safeSetState(() => _model.dropDownValue1 = val);
                            logFirebaseEvent(
                                'CUSTOMIZE_DropDown_4ic11x50_ON_FORM_WIDG');
                            logFirebaseEvent('DropDown_update_app_state');
                            FFAppState().selectedAccessory =
                                _model.dropDownValue1!;
                            safeSetState(() {});
                          },
                          width: 149.0,
                          height: 56.0,
                          textStyle:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Outfit',
                                    letterSpacing: 0.0,
                                  ),
                          hintText: 'Accessories',
                          icon: Icon(
                            Icons.keyboard_arrow_down_rounded,
                            color: FlutterFlowTheme.of(context).secondaryText,
                            size: 24.0,
                          ),
                          fillColor:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          elevation: 2.0,
                          borderColor: FlutterFlowTheme.of(context).alternate,
                          borderWidth: 2.0,
                          borderRadius: 8.0,
                          margin: const EdgeInsetsDirectional.fromSTEB(
                              16.0, 4.0, 16.0, 4.0),
                          hidesUnderline: true,
                          disabled: _model.dropDownValue2 == 'Eyepatch',
                          isOverButton: true,
                          isSearchable: false,
                          isMultiSelect: false,
                        ),
                      ),
                    ),
                    Flexible(
                      child: Align(
                        alignment: const AlignmentDirectional(0.0, 0.0),
                        child: FlutterFlowDropDown<String>(
                          controller: _model.dropDownValueController2 ??=
                              FormFieldController<String>(
                            _model.dropDownValue2 ??= 'NoHair',
                          ),
                          options: FFAppState().ownedTop,
                          onChanged: (val) async {
                            safeSetState(() => _model.dropDownValue2 = val);
                            logFirebaseEvent(
                                'CUSTOMIZE_DropDown_zjth7lae_ON_FORM_WIDG');
                            logFirebaseEvent('DropDown_update_app_state');
                            FFAppState().selectedTop = _model.dropDownValue2!;
                            safeSetState(() {});
                          },
                          width: 142.0,
                          height: 56.0,
                          searchHintTextStyle:
                              FlutterFlowTheme.of(context).labelMedium.override(
                                    fontFamily: 'Outfit',
                                    letterSpacing: 0.0,
                                  ),
                          searchTextStyle:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Inter Tight',
                                    letterSpacing: 0.0,
                                  ),
                          textStyle:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Inter Tight',
                                    letterSpacing: 0.0,
                                  ),
                          hintText: 'Top',
                          searchHintText: 'Search for an item...',
                          icon: Icon(
                            Icons.keyboard_arrow_down_rounded,
                            color: FlutterFlowTheme.of(context).secondaryText,
                            size: 24.0,
                          ),
                          fillColor:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          elevation: 2.0,
                          borderColor: FlutterFlowTheme.of(context).alternate,
                          borderWidth: 2.0,
                          borderRadius: 8.0,
                          margin: const EdgeInsetsDirectional.fromSTEB(
                              16.0, 4.0, 16.0, 4.0),
                          hidesUnderline: true,
                          isOverButton: true,
                          isSearchable: true,
                          isMultiSelect: false,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Flexible(
                      child: Align(
                        alignment: const AlignmentDirectional(0.0, 0.0),
                        child: FlutterFlowDropDown<String>(
                          controller: _model.dropDownValueController3 ??=
                              FormFieldController<String>(
                            _model.dropDownValue3 ??= 'Black',
                          ),
                          options: FFAppState().ownedHairColor,
                          onChanged: (val) async {
                            safeSetState(() => _model.dropDownValue3 = val);
                            logFirebaseEvent(
                                'CUSTOMIZE_DropDown_hzhsj5xy_ON_FORM_WIDG');
                            logFirebaseEvent('DropDown_update_app_state');
                            FFAppState().selectedHairColor =
                                _model.dropDownValue3!;
                            FFAppState().selectedHatColor =
                                _model.dropDownValue3!;
                            safeSetState(() {});
                          },
                          width: 131.0,
                          height: 56.0,
                          searchHintTextStyle:
                              FlutterFlowTheme.of(context).labelMedium.override(
                                    fontFamily: 'Outfit',
                                    letterSpacing: 0.0,
                                  ),
                          searchTextStyle:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Inter Tight',
                                    letterSpacing: 0.0,
                                  ),
                          textStyle:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Inter Tight',
                                    letterSpacing: 0.0,
                                  ),
                          hintText: 'Hair Color',
                          searchHintText: 'Search for an item...',
                          icon: Icon(
                            Icons.keyboard_arrow_down_rounded,
                            color: FlutterFlowTheme.of(context).secondaryText,
                            size: 24.0,
                          ),
                          fillColor:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          elevation: 2.0,
                          borderColor: FlutterFlowTheme.of(context).alternate,
                          borderWidth: 2.0,
                          borderRadius: 8.0,
                          margin: const EdgeInsetsDirectional.fromSTEB(
                              16.0, 4.0, 16.0, 4.0),
                          hidesUnderline: true,
                          disabled: (_model.dropDownValue2 == 'NoHair') ||
                              (_model.dropDownValue2 == 'Eyepatch') ||
                              (_model.dropDownValue2 == 'Hat') ||
                              (_model.dropDownValue2 == 'Hijab') ||
                              (_model.dropDownValue2 == 'Turban') ||
                              (_model.dropDownValue2 == 'WinterHat1') ||
                              (_model.dropDownValue2 == 'WinterHat2') ||
                              (_model.dropDownValue2 == 'WinterHat3') ||
                              (_model.dropDownValue2 == 'WinterHat4'),
                          isOverButton: true,
                          isSearchable: true,
                          isMultiSelect: false,
                        ),
                      ),
                    ),
                    Flexible(
                      child: Align(
                        alignment: const AlignmentDirectional(0.0, 0.0),
                        child: FlutterFlowDropDown<String>(
                          controller: _model.dropDownValueController4 ??=
                              FormFieldController<String>(
                            _model.dropDownValue4 ??= 'Default',
                          ),
                          options: FFAppState().ownedEyes,
                          onChanged: (val) async {
                            safeSetState(() => _model.dropDownValue4 = val);
                            logFirebaseEvent(
                                'CUSTOMIZE_DropDown_9oeaz21o_ON_FORM_WIDG');
                            logFirebaseEvent('DropDown_update_app_state');
                            FFAppState().selectedEyes = _model.dropDownValue4!;
                            safeSetState(() {});
                          },
                          width: 103.0,
                          height: 56.0,
                          textStyle:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Outfit',
                                    letterSpacing: 0.0,
                                  ),
                          hintText: 'Eyes',
                          icon: Icon(
                            Icons.keyboard_arrow_down_rounded,
                            color: FlutterFlowTheme.of(context).secondaryText,
                            size: 24.0,
                          ),
                          fillColor:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          elevation: 2.0,
                          borderColor: FlutterFlowTheme.of(context).alternate,
                          borderWidth: 2.0,
                          borderRadius: 8.0,
                          margin: const EdgeInsetsDirectional.fromSTEB(
                              16.0, 4.0, 16.0, 4.0),
                          hidesUnderline: true,
                          isOverButton: true,
                          isSearchable: false,
                          isMultiSelect: false,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Flexible(
                      child: Align(
                        alignment: const AlignmentDirectional(0.0, 0.0),
                        child: FlutterFlowDropDown<String>(
                          controller: _model.dropDownValueController5 ??=
                              FormFieldController<String>(
                            _model.dropDownValue5 ??= 'Blank',
                          ),
                          options: FFAppState().ownedFacialHair,
                          onChanged: (val) async {
                            safeSetState(() => _model.dropDownValue5 = val);
                            logFirebaseEvent(
                                'CUSTOMIZE_DropDown_ijs5qzyd_ON_FORM_WIDG');
                            logFirebaseEvent('DropDown_update_app_state');
                            FFAppState().selectedFacialHair =
                                _model.dropDownValue5!;
                            safeSetState(() {});
                          },
                          width: 130.0,
                          height: 56.0,
                          textStyle:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Outfit',
                                    letterSpacing: 0.0,
                                  ),
                          hintText: 'Facial Hair',
                          icon: Icon(
                            Icons.keyboard_arrow_down_rounded,
                            color: FlutterFlowTheme.of(context).secondaryText,
                            size: 24.0,
                          ),
                          fillColor:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          elevation: 2.0,
                          borderColor: FlutterFlowTheme.of(context).alternate,
                          borderWidth: 2.0,
                          borderRadius: 8.0,
                          margin: const EdgeInsetsDirectional.fromSTEB(
                              16.0, 4.0, 16.0, 4.0),
                          hidesUnderline: true,
                          disabled: _model.dropDownValue2 == 'Hijab',
                          isOverButton: true,
                          isSearchable: false,
                          isMultiSelect: false,
                        ),
                      ),
                    ),
                    Flexible(
                      child: Align(
                        alignment: const AlignmentDirectional(0.0, 0.0),
                        child: FlutterFlowDropDown<String>(
                          controller: _model.dropDownValueController6 ??=
                              FormFieldController<String>(
                            _model.dropDownValue6 ??= 'Black',
                          ),
                          options: FFAppState().ownedFacialHairColor,
                          onChanged: (val) async {
                            safeSetState(() => _model.dropDownValue6 = val);
                            logFirebaseEvent(
                                'CUSTOMIZE_DropDown_qizdce2f_ON_FORM_WIDG');
                            logFirebaseEvent('DropDown_update_app_state');
                            FFAppState().selectedFacialHairColor =
                                _model.dropDownValue6!;
                            safeSetState(() {});
                          },
                          width: 169.0,
                          height: 56.0,
                          textStyle:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Outfit',
                                    letterSpacing: 0.0,
                                  ),
                          hintText: 'Facial Hair Color',
                          icon: Icon(
                            Icons.keyboard_arrow_down_rounded,
                            color: FlutterFlowTheme.of(context).secondaryText,
                            size: 24.0,
                          ),
                          fillColor:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          elevation: 2.0,
                          borderColor: FlutterFlowTheme.of(context).alternate,
                          borderWidth: 2.0,
                          borderRadius: 8.0,
                          margin: const EdgeInsetsDirectional.fromSTEB(
                              16.0, 4.0, 16.0, 4.0),
                          hidesUnderline: true,
                          disabled: (_model.dropDownValue2 == 'Hijab') ||
                              (_model.dropDownValue5 == 'Blank'),
                          isOverButton: true,
                          isSearchable: false,
                          isMultiSelect: false,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Flexible(
                      child: Align(
                        alignment: const AlignmentDirectional(0.0, 0.0),
                        child: FlutterFlowDropDown<String>(
                          controller: _model.dropDownValueController7 ??=
                              FormFieldController<String>(
                            _model.dropDownValue7 ??= 'BlazerShirt',
                          ),
                          options: FFAppState().ownedClothes,
                          onChanged: (val) async {
                            safeSetState(() => _model.dropDownValue7 = val);
                            logFirebaseEvent(
                                'CUSTOMIZE_DropDown_uq4kllvp_ON_FORM_WIDG');
                            logFirebaseEvent('DropDown_update_app_state');
                            FFAppState().selectedClothing =
                                _model.dropDownValue7!;
                            safeSetState(() {});
                          },
                          width: 110.0,
                          height: 56.0,
                          textStyle:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Outfit',
                                    letterSpacing: 0.0,
                                  ),
                          hintText: 'Clothes',
                          icon: Icon(
                            Icons.keyboard_arrow_down_rounded,
                            color: FlutterFlowTheme.of(context).secondaryText,
                            size: 24.0,
                          ),
                          fillColor:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          elevation: 2.0,
                          borderColor: FlutterFlowTheme.of(context).alternate,
                          borderWidth: 2.0,
                          borderRadius: 8.0,
                          margin: const EdgeInsetsDirectional.fromSTEB(
                              16.0, 4.0, 16.0, 4.0),
                          hidesUnderline: true,
                          isOverButton: true,
                          isSearchable: false,
                          isMultiSelect: false,
                        ),
                      ),
                    ),
                    Flexible(
                      child: Align(
                        alignment: const AlignmentDirectional(0.0, 0.0),
                        child: FlutterFlowDropDown<String>(
                          controller: _model.dropDownValueController8 ??=
                              FormFieldController<String>(
                            _model.dropDownValue8 ??= 'Black',
                          ),
                          options: FFAppState().ownedClothingColor,
                          onChanged: (val) async {
                            safeSetState(() => _model.dropDownValue8 = val);
                            logFirebaseEvent(
                                'CUSTOMIZE_DropDown_d50ipura_ON_FORM_WIDG');
                            logFirebaseEvent('DropDown_update_app_state');
                            FFAppState().selectedClothingColor =
                                _model.dropDownValue8!;
                            safeSetState(() {});
                          },
                          width: 157.0,
                          height: 56.0,
                          textStyle:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Outfit',
                                    letterSpacing: 0.0,
                                  ),
                          hintText: 'Clothing Color',
                          icon: Icon(
                            Icons.keyboard_arrow_down_rounded,
                            color: FlutterFlowTheme.of(context).secondaryText,
                            size: 24.0,
                          ),
                          fillColor:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          elevation: 2.0,
                          borderColor: FlutterFlowTheme.of(context).alternate,
                          borderWidth: 2.0,
                          borderRadius: 8.0,
                          margin: const EdgeInsetsDirectional.fromSTEB(
                              16.0, 4.0, 16.0, 4.0),
                          hidesUnderline: true,
                          disabled:
                              (_model.dropDownValue7 == 'BlazerSweater') ||
                                  (_model.dropDownValue7 == 'BlazerShirt'),
                          isOverButton: true,
                          isSearchable: false,
                          isMultiSelect: false,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Flexible(
                      child: Align(
                        alignment: const AlignmentDirectional(0.0, 0.0),
                        child: FlutterFlowDropDown<String>(
                          controller: _model.dropDownValueController9 ??=
                              FormFieldController<String>(
                            _model.dropDownValue9 ??= 'Default',
                          ),
                          options: FFAppState().ownedEyebrow,
                          onChanged: (val) async {
                            safeSetState(() => _model.dropDownValue9 = val);
                            logFirebaseEvent(
                                'CUSTOMIZE_DropDown_xnrfxlg5_ON_FORM_WIDG');
                            logFirebaseEvent('DropDown_update_app_state');
                            FFAppState().selectedEyebrow =
                                _model.dropDownValue9!;
                            safeSetState(() {});
                          },
                          width: 130.0,
                          height: 56.0,
                          textStyle:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Outfit',
                                    letterSpacing: 0.0,
                                  ),
                          hintText: 'Eyebrows',
                          icon: Icon(
                            Icons.keyboard_arrow_down_rounded,
                            color: FlutterFlowTheme.of(context).secondaryText,
                            size: 24.0,
                          ),
                          fillColor:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          elevation: 2.0,
                          borderColor: FlutterFlowTheme.of(context).alternate,
                          borderWidth: 2.0,
                          borderRadius: 8.0,
                          margin: const EdgeInsetsDirectional.fromSTEB(
                              16.0, 4.0, 16.0, 4.0),
                          hidesUnderline: true,
                          isOverButton: true,
                          isSearchable: false,
                          isMultiSelect: false,
                        ),
                      ),
                    ),
                    Flexible(
                      child: Align(
                        alignment: const AlignmentDirectional(0.0, 0.0),
                        child: FlutterFlowDropDown<String>(
                          controller: _model.dropDownValueController10 ??=
                              FormFieldController<String>(
                            _model.dropDownValue10 ??= 'Black',
                          ),
                          options: const [
                            'Tanned',
                            'Yellow',
                            'Pale',
                            'Light',
                            'Brown',
                            'DarkBrown',
                            'Black'
                          ],
                          onChanged: (val) async {
                            safeSetState(() => _model.dropDownValue10 = val);
                            logFirebaseEvent(
                                'CUSTOMIZE_DropDown_3hbdghet_ON_FORM_WIDG');
                            logFirebaseEvent('DropDown_update_app_state');
                            FFAppState().selectedSkin = _model.dropDownValue10!;
                            safeSetState(() {});
                          },
                          width: 90.0,
                          height: 56.0,
                          textStyle:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Outfit',
                                    letterSpacing: 0.0,
                                  ),
                          hintText: 'Skin',
                          icon: Icon(
                            Icons.keyboard_arrow_down_rounded,
                            color: FlutterFlowTheme.of(context).secondaryText,
                            size: 24.0,
                          ),
                          fillColor:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          elevation: 2.0,
                          borderColor: FlutterFlowTheme.of(context).alternate,
                          borderWidth: 2.0,
                          borderRadius: 8.0,
                          margin: const EdgeInsetsDirectional.fromSTEB(
                              16.0, 4.0, 16.0, 4.0),
                          hidesUnderline: true,
                          isOverButton: true,
                          isSearchable: false,
                          isMultiSelect: false,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Flexible(
                      child: Align(
                        alignment: const AlignmentDirectional(0.0, 0.0),
                        child: FlutterFlowDropDown<String>(
                          controller: _model.dropDownValueController11 ??=
                              FormFieldController<String>(
                            _model.dropDownValue11 ??= 'Sad',
                          ),
                          options: FFAppState().ownedMouth,
                          onChanged: (val) async {
                            safeSetState(() => _model.dropDownValue11 = val);
                            logFirebaseEvent(
                                'CUSTOMIZE_DropDown_kzqmee5m_ON_FORM_WIDG');
                            logFirebaseEvent('DropDown_update_app_state');
                            FFAppState().selectedMouth =
                                _model.dropDownValue11!;
                            safeSetState(() {});
                          },
                          width: 106.0,
                          height: 56.0,
                          textStyle:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Outfit',
                                    letterSpacing: 0.0,
                                  ),
                          hintText: 'Mouth',
                          icon: Icon(
                            Icons.keyboard_arrow_down_rounded,
                            color: FlutterFlowTheme.of(context).secondaryText,
                            size: 24.0,
                          ),
                          fillColor:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          elevation: 2.0,
                          borderColor: FlutterFlowTheme.of(context).alternate,
                          borderWidth: 2.0,
                          borderRadius: 8.0,
                          margin: const EdgeInsetsDirectional.fromSTEB(
                              16.0, 4.0, 16.0, 4.0),
                          hidesUnderline: true,
                          isOverButton: true,
                          isSearchable: false,
                          isMultiSelect: false,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 30.0, 0.0, 0.0),
                child: FFButtonWidget(
                  onPressed: () {
                    print('Button pressed ...');
                  },
                  text: 'Done?',
                  options: FFButtonOptions(
                    width: 200.0,
                    height: 55.0,
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                    iconPadding:
                        const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                    color: const Color(0xFF6F66D9),
                    textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                          fontFamily: 'Open Sans',
                          color: Colors.white,
                          letterSpacing: 0.0,
                        ),
                    elevation: 3.0,
                    borderSide: const BorderSide(
                      color: Colors.transparent,
                      width: 1.0,
                    ),
                    borderRadius: BorderRadius.circular(24.0),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
