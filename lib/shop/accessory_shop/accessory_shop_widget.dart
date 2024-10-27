import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_web_view.dart';
import 'package:flutter/material.dart';
import 'accessory_shop_model.dart';
export 'accessory_shop_model.dart';

class AccessoryShopWidget extends StatefulWidget {
  const AccessoryShopWidget({super.key});

  @override
  State<AccessoryShopWidget> createState() => _AccessoryShopWidgetState();
}

class _AccessoryShopWidgetState extends State<AccessoryShopWidget> {
  late AccessoryShopModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AccessoryShopModel());

    logFirebaseEvent('screen_view',
        parameters: {'screen_name': 'AccessoryShop'});
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
        appBar: AppBar(
          backgroundColor: const Color(0xFFF1F5F8),
          automaticallyImplyLeading: false,
          leading: InkWell(
            splashColor: Colors.transparent,
            focusColor: Colors.transparent,
            hoverColor: Colors.transparent,
            highlightColor: Colors.transparent,
            onTap: () async {
              logFirebaseEvent('ACCESSORY_SHOP_PAGE_Icon_485nnwlz_ON_TAP');
              logFirebaseEvent('Icon_navigate_back');
              context.safePop();
            },
            child: Icon(
              Icons.chevron_left_sharp,
              color: FlutterFlowTheme.of(context).secondaryText,
              size: 24.0,
            ),
          ),
          title: Text(
            'Accessories',
            style: FlutterFlowTheme.of(context).displaySmall.override(
                  fontFamily: 'Outfit',
                  color: const Color(0xFF0F1113),
                  fontSize: 30.0,
                  letterSpacing: 0.0,
                  fontWeight: FontWeight.w500,
                ),
          ),
          actions: [
            Hero(
              tag: 'd',
              transitionOnUserGestures: true,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(24.0),
                child: Image.asset(
                  'assets/images/Untitled_design_(7)-Photoroom.png',
                  width: 60.0,
                  height: 30.0,
                  fit: BoxFit.contain,
                  cacheWidth: 60,
                  cacheHeight: 60,
                ),
              ),
            ),
            Align(
              alignment: const AlignmentDirectional(0.0, 0.0),
              child: Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(5.0, 0.0, 20.0, 0.0),
                child: AuthUserStreamWidget(
                  builder: (context) => Text(
                    valueOrDefault(currentUserDocument?.coins, 0).toString(),
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Outfit',
                          color: const Color(0xFF060606),
                          fontSize: 25.0,
                          letterSpacing: 0.0,
                        ),
                  ),
                ),
              ),
            ),
          ],
          centerTitle: false,
          elevation: 0.0,
        ),
        body: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 25.0),
                      child: Text(
                        'Choose a accessories below',
                        style:
                            FlutterFlowTheme.of(context).labelMedium.override(
                                  fontFamily: 'Plus Jakarta Sans',
                                  color: const Color(0xFF57636C),
                                  fontSize: 14.0,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.w500,
                                ),
                      ),
                    ),
                  ],
                ),
              ),
              Flexible(
                child: Align(
                  alignment: const AlignmentDirectional(0.0, 0.0),
                  child: AuthUserStreamWidget(
                    builder: (context) => Builder(
                      builder: (context) {
                        final accessoriesShop =
                            (currentUserDocument?.shopAccessories.toList() ??
                                    [])
                                .toList();

                        return ListView.builder(
                          padding: EdgeInsets.zero,
                          primary: false,
                          shrinkWrap: true,
                          scrollDirection: Axis.vertical,
                          itemCount: accessoriesShop.length,
                          itemBuilder: (context, accessoriesShopIndex) {
                            final accessoriesShopItem =
                                accessoriesShop[accessoriesShopIndex];
                            return Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  16.0, 0.0, 16.0, 8.0),
                              child: InkWell(
                                splashColor: Colors.transparent,
                                focusColor: Colors.transparent,
                                hoverColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                onTap: () async {
                                  logFirebaseEvent(
                                      'ACCESSORY_SHOP_PAGE_menuItem_ON_TAP');
                                  if (valueOrDefault(
                                          currentUserDocument?.coins, 0) >=
                                      valueOrDefault<int>(
                                        () {
                                          if (accessoriesShopItem == 'Kurt') {
                                            return 5;
                                          } else if ((accessoriesShopItem ==
                                                  'Prescription01') ||
                                              (accessoriesShopItem ==
                                                  'Prescription02')) {
                                            return 10;
                                          } else if (accessoriesShopItem ==
                                              'Sunglasses') {
                                            return 15;
                                          } else if (accessoriesShopItem ==
                                              'Wayfarers') {
                                            return 25;
                                          } else {
                                            return 0;
                                          }
                                        }(),
                                        11,
                                      )) {
                                    logFirebaseEvent('menuItem_backend_call');

                                    await currentUserReference!.update({
                                      ...mapToFirestore(
                                        {
                                          'coins': FieldValue.increment(
                                              -(valueOrDefault<int>(
                                            () {
                                              if (accessoriesShopItem ==
                                                  'Kurt') {
                                                return 5;
                                              } else if ((accessoriesShopItem ==
                                                      'Prescription01') ||
                                                  (accessoriesShopItem ==
                                                      'Prescription02')) {
                                                return 10;
                                              } else if (accessoriesShopItem ==
                                                  'Sunglasses') {
                                                return 15;
                                              } else if (accessoriesShopItem ==
                                                  'Wayfarers') {
                                                return 25;
                                              } else {
                                                return 0;
                                              }
                                            }(),
                                            11,
                                          ))),
                                        },
                                      ),
                                    });
                                    logFirebaseEvent('menuItem_backend_call');

                                    await currentUserReference!.update({
                                      ...mapToFirestore(
                                        {
                                          'ownedAccessories':
                                              FieldValue.arrayUnion(
                                                  [accessoriesShopItem]),
                                          'shopAccessories':
                                              FieldValue.arrayRemove(
                                                  [accessoriesShopItem]),
                                        },
                                      ),
                                    });
                                    logFirebaseEvent('menuItem_show_snack_bar');
                                    ScaffoldMessenger.of(context).showSnackBar(
                                      SnackBar(
                                        content: Text(
                                          'You successfully purchased this item!',
                                          style: TextStyle(
                                            color: FlutterFlowTheme.of(context)
                                                .primaryText,
                                          ),
                                        ),
                                        duration: const Duration(milliseconds: 4000),
                                        backgroundColor:
                                            FlutterFlowTheme.of(context)
                                                .secondary,
                                      ),
                                    );
                                  } else {
                                    logFirebaseEvent('menuItem_show_snack_bar');
                                    ScaffoldMessenger.of(context).showSnackBar(
                                      SnackBar(
                                        content: Text(
                                          'Earn more coins for this!',
                                          style: TextStyle(
                                            color: FlutterFlowTheme.of(context)
                                                .primaryText,
                                          ),
                                        ),
                                        duration: const Duration(milliseconds: 4000),
                                        backgroundColor:
                                            FlutterFlowTheme.of(context)
                                                .secondary,
                                      ),
                                    );
                                  }

                                  logFirebaseEvent('menuItem_navigate_to');

                                  context.pushNamed('TestProfile');
                                },
                                child: Container(
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    boxShadow: const [
                                      BoxShadow(
                                        blurRadius: 3.0,
                                        color: Color(0x411D2429),
                                        offset: Offset(
                                          0.0,
                                          1.0,
                                        ),
                                      )
                                    ],
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        FlutterFlowWebView(
                                          content: valueOrDefault<String>(
                                            'https://avataaars.io/?avatarStyle=Circle&accessoriesType=$accessoriesShopItem',
                                            'https://avataaars.io/?avatarStyle=Circle&topType=LongHairFro&accessoriesType=Wayfarers&hairColor=Brown&facialHairType=Blank&clotheType=BlazerSweater&eyeType=EyeRoll&eyebrowType=RaisedExcited&mouthType=Tongue&skinColor=Yellow',
                                          ),
                                          bypass: false,
                                          width: 70.0,
                                          height: 70.0,
                                          verticalScroll: false,
                                          horizontalScroll: false,
                                        ),
                                        Expanded(
                                          child: Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    8.0, 8.0, 4.0, 0.0),
                                            child: Column(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  accessoriesShopItem,
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .headlineSmall
                                                      .override(
                                                        fontFamily: 'Outfit',
                                                        color:
                                                            const Color(0xFF0F1113),
                                                        fontSize: 20.0,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.normal,
                                                      ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        Column(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.end,
                                          children: [
                                            Text(
                                              valueOrDefault<String>(
                                                () {
                                                  if (accessoriesShopItem ==
                                                      'Kurt') {
                                                    return 5;
                                                  } else if ((accessoriesShopItem ==
                                                          'Prescription01') ||
                                                      (accessoriesShopItem ==
                                                          'Prescription02')) {
                                                    return 10;
                                                  } else if (accessoriesShopItem ==
                                                      'Sunglasses') {
                                                    return 15;
                                                  } else if (accessoriesShopItem ==
                                                      'Wayfarers') {
                                                    return 25;
                                                  } else {
                                                    return 0;
                                                  }
                                                }()
                                                    .toString(),
                                                '11',
                                              ),
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Outfit',
                                                        letterSpacing: 0.0,
                                                      ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            );
                          },
                        );
                      },
                    ),
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
