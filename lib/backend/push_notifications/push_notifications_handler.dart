import 'dart:async';

import 'serialization_util.dart';
import '../backend.dart';
import '../../flutter_flow/flutter_flow_util.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';


final _handledMessageIds = <String?>{};

class PushNotificationsHandler extends StatefulWidget {
  const PushNotificationsHandler({super.key, required this.child});

  final Widget child;

  @override
  _PushNotificationsHandlerState createState() =>
      _PushNotificationsHandlerState();
}

class _PushNotificationsHandlerState extends State<PushNotificationsHandler> {
  bool _loading = false;

  Future handleOpenedPushNotification() async {
    if (isWeb) {
      return;
    }

    final notification = await FirebaseMessaging.instance.getInitialMessage();
    if (notification != null) {
      await _handlePushNotification(notification);
    }
    FirebaseMessaging.onMessageOpenedApp.listen(_handlePushNotification);
  }

  Future _handlePushNotification(RemoteMessage message) async {
    if (_handledMessageIds.contains(message.messageId)) {
      return;
    }
    _handledMessageIds.add(message.messageId);

    safeSetState(() => _loading = true);
    try {
      final initialPageName = message.data['initialPageName'] as String;
      final initialParameterData = getInitialParameterData(message.data);
      final parametersBuilder = parametersBuilderMap[initialPageName];
      if (parametersBuilder != null) {
        final parameterData = await parametersBuilder(initialParameterData);
        context.pushNamed(
          initialPageName,
          pathParameters: parameterData.pathParameters,
          extra: parameterData.extra,
        );
      }
    } catch (e) {
      print('Error: $e');
    } finally {
      safeSetState(() => _loading = false);
    }
  }

  @override
  void initState() {
    super.initState();
    SchedulerBinding.instance.addPostFrameCallback((_) {
      handleOpenedPushNotification();
    });
  }

  @override
  Widget build(BuildContext context) => _loading
      ? Container(
          color: Colors.transparent,
          child: Image.asset(
            'assets/images/Untitled_design_(8).png',
            fit: BoxFit.cover,
          ),
        )
      : widget.child;
}

class ParameterData {
  const ParameterData(
      {this.requiredParams = const {}, this.allParams = const {}});
  final Map<String, String?> requiredParams;
  final Map<String, dynamic> allParams;

  Map<String, String> get pathParameters => Map.fromEntries(
        requiredParams.entries
            .where((e) => e.value != null)
            .map((e) => MapEntry(e.key, e.value!)),
      );
  Map<String, dynamic> get extra => Map.fromEntries(
        allParams.entries.where((e) => e.value != null),
      );

  static Future<ParameterData> Function(Map<String, dynamic>) none() =>
      (data) async => const ParameterData();
}

final parametersBuilderMap =
    <String, Future<ParameterData> Function(Map<String, dynamic>)>{
  'Page2': ParameterData.none(),
  'Page1': ParameterData.none(),
  'Create04Task': ParameterData.none(),
  'Page4': ParameterData.none(),
  'Todos': ParameterData.none(),
  'AssignmentNotebook': ParameterData.none(),
  'Login': ParameterData.none(),
  'CreateNewAssignment': ParameterData.none(),
  'AssingmentDescript': (data) async => ParameterData(
        allParams: {
          'data': getParameter<DocumentReference>(data, 'data'),
        },
      ),
  'allAssg': ParameterData.none(),
  'CreateClass': ParameterData.none(),
  'CurrentClasses': ParameterData.none(),
  'Classestasks': (data) async => ParameterData(
        allParams: {
          'className': await getDocumentParameter<ClassesRecord>(
              data, 'className', ClassesRecord.fromSnapshot),
        },
      ),
  'EditClasses': ParameterData.none(),
  'forgotPassword': ParameterData.none(),
  'ChangeGrade': ParameterData.none(),
  'OwnedTops': ParameterData.none(),
  'OwnedAccesssories': ParameterData.none(),
  'OwnedHairColors': ParameterData.none(),
  'OwnedHatColors': ParameterData.none(),
  'OwnedFacialHair': ParameterData.none(),
  'OwnedFacialHairColor': ParameterData.none(),
  'OwnedClothes': ParameterData.none(),
  'OwnedClothesColor': ParameterData.none(),
  'OwnedEyes': ParameterData.none(),
  'OwnedEyebrow': ParameterData.none(),
  'OwnedMouth': ParameterData.none(),
  'OwnedSkin': ParameterData.none(),
  'TaskDescript': (data) async => ParameterData(
        allParams: {
          'data': getParameter<DocumentReference>(data, 'data'),
        },
      ),
  'ClothesColorShop': ParameterData.none(),
  'ClothesShop': ParameterData.none(),
  'MouthShop': ParameterData.none(),
  'FacialHairShop': ParameterData.none(),
  'HatColorsShop': ParameterData.none(),
  'EyeShop': ParameterData.none(),
  'HairColorsShop': ParameterData.none(),
  'EyebrowShop': ParameterData.none(),
  'AccessoryShop': ParameterData.none(),
  'TopsShop': ParameterData.none(),
  'FacialHairColorShop': ParameterData.none(),
  'MainShop': ParameterData.none(),
  'TestHome': ParameterData.none(),
  'TestProfile': ParameterData.none(),
  'processV': ParameterData.none(),
  'processE': ParameterData.none(),
  'processG': ParameterData.none(),
  'SettingsCopy': ParameterData.none(),
  'Success03': ParameterData.none(),
  'processingExcercise': ParameterData.none(),
  'processingVisit': ParameterData.none(),
  'processingGeneral': ParameterData.none(),
  'chat_2_Details': (data) async => ParameterData(
        allParams: {
          'chatRef': await getDocumentParameter<ChatsRecord>(
              data, 'chatRef', ChatsRecord.fromSnapshot),
        },
      ),
  'chat_2_main': ParameterData.none(),
  'chat_2_InviteUsers': (data) async => ParameterData(
        allParams: {
          'chatRef': await getDocumentParameter<ChatsRecord>(
              data, 'chatRef', ChatsRecord.fromSnapshot),
        },
      ),
  'image_Details': (data) async => ParameterData(
        allParams: {
          'chatMessage': await getDocumentParameter<ChatMessagesRecord>(
              data, 'chatMessage', ChatMessagesRecord.fromSnapshot),
        },
      ),
  'Page3': ParameterData.none(),
};

Map<String, dynamic> getInitialParameterData(Map<String, dynamic> data) {
  try {
    final parameterDataStr = data['parameterData'];
    if (parameterDataStr == null ||
        parameterDataStr is! String ||
        parameterDataStr.isEmpty) {
      return {};
    }
    return jsonDecode(parameterDataStr) as Map<String, dynamic>;
  } catch (e) {
    print('Error parsing parameter data: $e');
    return {};
  }
}
