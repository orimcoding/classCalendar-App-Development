import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_ad_banner.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'ad_banner_model.dart';
export 'ad_banner_model.dart';

class AdBannerWidget extends StatefulWidget {
  const AdBannerWidget({super.key});

  @override
  State<AdBannerWidget> createState() => _AdBannerWidgetState();
}

class _AdBannerWidgetState extends State<AdBannerWidget> {
  late AdBannerModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AdBannerModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      await currentUserReference!.update({
        ...mapToFirestore(
          {
            'dailyAds': FieldValue.increment(1),
          },
        ),
      });
      if (valueOrDefault(currentUserDocument?.dailyAds, 0) <= 3) {
        await currentUserReference!.update({
          ...mapToFirestore(
            {
              'coins': FieldValue.increment(1),
            },
          ),
        });
      }
    });

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
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
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              FlutterFlowAdBanner(
                width: MediaQuery.sizeOf(context).width * 1.025,
                height: 348.0,
                showsTestAd: true,
                iOSAdUnitID: 'ca-app-pub-2834455066230351/3340247385',
                androidAdUnitID: 'ca-app-pub-2834455066230351/8971848015',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
