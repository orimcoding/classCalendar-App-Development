import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'topw_model.dart';
export 'topw_model.dart';

class TopwWidget extends StatefulWidget {
  const TopwWidget({
    super.key,
    this.parameter1,
  });

  final String? parameter1;

  @override
  State<TopwWidget> createState() => _TopwWidgetState();
}

class _TopwWidgetState extends State<TopwWidget> {
  late TopwModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => TopwModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Text(
      valueOrDefault<String>(
        () {
          if ((widget.parameter1 == 'Eyepatch') ||
              (widget.parameter1 == 'WinterHat2') ||
              (widget.parameter1 == 'WinterHat3') ||
              (widget.parameter1 == 'WinterHat4')) {
            return 10;
          } else if ((widget.parameter1 == 'LongHairDreads') ||
              (widget.parameter1 == 'LongHairFrida') ||
              (widget.parameter1 == 'LongHairFro') ||
              (widget.parameter1 == 'LongHairFroBand') ||
              (widget.parameter1 == 'LongHairNotTooLong') ||
              (widget.parameter1 == 'LongHairShavedSides') ||
              (widget.parameter1 == 'LongHairMiaWallace') ||
              (widget.parameter1 == 'LongHairStraight') ||
              (widget.parameter1 == 'LongHairStraight2') ||
              (widget.parameter1 == 'LongHairStraightStrand')) {
            return 10;
          } else if ((widget.parameter1 == 'ShortHairShaggyMullet') ||
              (widget.parameter1 == 'ShortHairShortCurly') ||
              (widget.parameter1 == 'ShortHairShortFlat') ||
              (widget.parameter1 == 'ShortHairShortRound') ||
              (widget.parameter1 == 'ShortHairShortWaved') ||
              (widget.parameter1 == 'ShortHairSides') ||
              (widget.parameter1 == 'ShortHairTheCaesar') ||
              (widget.parameter1 == 'ShortHairTheCaesarSidePart')) {
            return 10;
          } else {
            return 0;
          }
        }()
            .toString(),
        '1111',
      ),
      style: FlutterFlowTheme.of(context).bodyMedium.override(
            fontFamily: 'Inter Tight',
            fontSize: 50.0,
            letterSpacing: 0.0,
          ),
    );
  }
}
