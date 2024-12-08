import 'dart:async';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '/backend/backend.dart';

import '/auth/base_auth_user_provider.dart';

import '/backend/push_notifications/push_notifications_handler.dart'
    show PushNotificationsHandler;
import '/index.dart';
import '/main.dart';
import '/flutter_flow/flutter_flow_util.dart';

export 'package:go_router/go_router.dart';
export 'serialization_util.dart';

const kTransitionInfoKey = '__transition_info__';

class AppStateNotifier extends ChangeNotifier {
  AppStateNotifier._();

  static AppStateNotifier? _instance;
  static AppStateNotifier get instance => _instance ??= AppStateNotifier._();

  BaseAuthUser? initialUser;
  BaseAuthUser? user;
  bool showSplashImage = true;
  String? _redirectLocation;

  /// Determines whether the app will refresh and build again when a sign
  /// in or sign out happens. This is useful when the app is launched or
  /// on an unexpected logout. However, this must be turned off when we
  /// intend to sign in/out and then navigate or perform any actions after.
  /// Otherwise, this will trigger a refresh and interrupt the action(s).
  bool notifyOnAuthChange = true;

  bool get loading => user == null || showSplashImage;
  bool get loggedIn => user?.loggedIn ?? false;
  bool get initiallyLoggedIn => initialUser?.loggedIn ?? false;
  bool get shouldRedirect => loggedIn && _redirectLocation != null;

  String getRedirectLocation() => _redirectLocation!;
  bool hasRedirect() => _redirectLocation != null;
  void setRedirectLocationIfUnset(String loc) => _redirectLocation ??= loc;
  void clearRedirectLocation() => _redirectLocation = null;

  /// Mark as not needing to notify on a sign in / out when we intend
  /// to perform subsequent actions (such as navigation) afterwards.
  void updateNotifyOnAuthChange(bool notify) => notifyOnAuthChange = notify;

  void update(BaseAuthUser newUser) {
    final shouldUpdate =
        user?.uid == null || newUser.uid == null || user?.uid != newUser.uid;
    initialUser ??= newUser;
    user = newUser;
    // Refresh the app on auth change unless explicitly marked otherwise.
    // No need to update unless the user has changed.
    if (notifyOnAuthChange && shouldUpdate) {
      notifyListeners();
    }
    // Once again mark the notifier as needing to update on auth change
    // (in order to catch sign in / out events).
    updateNotifyOnAuthChange(true);
  }

  void stopShowingSplashImage() {
    showSplashImage = false;
    notifyListeners();
  }
}

GoRouter createRouter(AppStateNotifier appStateNotifier) => GoRouter(
      initialLocation: '/',
      debugLogDiagnostics: true,
      refreshListenable: appStateNotifier,
      errorBuilder: (context, state) =>
          appStateNotifier.loggedIn ? const NavBarPage() : const LoginWidget(),
      routes: [
        FFRoute(
          name: '_initialize',
          path: '/',
          builder: (context, _) =>
              appStateNotifier.loggedIn ? const NavBarPage() : const LoginWidget(),
        ),
        FFRoute(
          name: 'Page2',
          path: '/Page2',
          builder: (context, params) => const Page2Widget(),
        ),
        FFRoute(
          name: 'Page1',
          path: '/Page1',
          builder: (context, params) => const Page1Widget(),
        ),
        FFRoute(
          name: 'Create04Task',
          path: '/create04Task',
          builder: (context, params) => const Create04TaskWidget(),
        ),
        FFRoute(
          name: 'Page4',
          path: '/Page4',
          builder: (context, params) => const Page4Widget(),
        ),
        FFRoute(
          name: 'Todos',
          path: '/todos',
          builder: (context, params) =>
              params.isEmpty ? const NavBarPage(initialPage: 'Todos') : const TodosWidget(),
        ),
        FFRoute(
          name: 'AssignmentNotebook',
          path: '/assignmentNotebook',
          builder: (context, params) => const AssignmentNotebookWidget(),
        ),
        FFRoute(
          name: 'Login',
          path: '/login',
          builder: (context, params) => const LoginWidget(),
        ),
        FFRoute(
          name: 'CreateNewAssignment',
          path: '/createNewAssignment',
          builder: (context, params) => const CreateNewAssignmentWidget(),
        ),
        FFRoute(
          name: 'AssingmentDescript',
          path: '/AssingmentDescript',
          builder: (context, params) => AssingmentDescriptWidget(
            data: params.getParam(
              'data',
              ParamType.DocumentReference,
              isList: false,
              collectionNamePath: ['Assignments'],
            ),
          ),
        ),
        FFRoute(
          name: 'allAssg',
          path: '/allAssg',
          builder: (context, params) => const AllAssgWidget(),
        ),
        FFRoute(
          name: 'CreateClass',
          path: '/createClass',
          builder: (context, params) => const CreateClassWidget(),
        ),
        FFRoute(
          name: 'CurrentClasses',
          path: '/currentClasses',
          builder: (context, params) => const CurrentClassesWidget(),
        ),
        FFRoute(
          name: 'Classestasks',
          path: '/classestasks',
          asyncParams: {
            'className': getDoc(['Classes'], ClassesRecord.fromSnapshot),
          },
          builder: (context, params) => ClassestasksWidget(
            className: params.getParam(
              'className',
              ParamType.Document,
            ),
          ),
        ),
        FFRoute(
          name: 'EditClasses',
          path: '/editClasses',
          builder: (context, params) => const EditClassesWidget(),
        ),
        FFRoute(
          name: 'forgotPassword',
          path: '/forgotPassword',
          builder: (context, params) => const ForgotPasswordWidget(),
        ),
        FFRoute(
          name: 'ChangeGrade',
          path: '/ChangGrade',
          builder: (context, params) => const ChangeGradeWidget(),
        ),
        FFRoute(
          name: 'OwnedTops',
          path: '/ownedTops',
          builder: (context, params) => const OwnedTopsWidget(),
        ),
        FFRoute(
          name: 'OwnedAccesssories',
          path: '/ownedAccesssories',
          builder: (context, params) => const OwnedAccesssoriesWidget(),
        ),
        FFRoute(
          name: 'OwnedHairColors',
          path: '/ownedHairColors',
          builder: (context, params) => const OwnedHairColorsWidget(),
        ),
        FFRoute(
          name: 'OwnedHatColors',
          path: '/ownedHatColors',
          builder: (context, params) => const OwnedHatColorsWidget(),
        ),
        FFRoute(
          name: 'OwnedFacialHair',
          path: '/OwnedFacialHair',
          builder: (context, params) => const OwnedFacialHairWidget(),
        ),
        FFRoute(
          name: 'OwnedFacialHairColor',
          path: '/OwnedFacialHairColor',
          builder: (context, params) => const OwnedFacialHairColorWidget(),
        ),
        FFRoute(
          name: 'OwnedClothes',
          path: '/OwnedClothes',
          builder: (context, params) => const OwnedClothesWidget(),
        ),
        FFRoute(
          name: 'OwnedClothesColor',
          path: '/OwnedClothesColor',
          builder: (context, params) => const OwnedClothesColorWidget(),
        ),
        FFRoute(
          name: 'OwnedEyes',
          path: '/OwnedEyes',
          builder: (context, params) => const OwnedEyesWidget(),
        ),
        FFRoute(
          name: 'OwnedEyebrow',
          path: '/OwnedEyebrow',
          builder: (context, params) => const OwnedEyebrowWidget(),
        ),
        FFRoute(
          name: 'OwnedMouth',
          path: '/OwnedMouth',
          builder: (context, params) => const OwnedMouthWidget(),
        ),
        FFRoute(
          name: 'OwnedSkin',
          path: '/OwnedSkin',
          builder: (context, params) => const OwnedSkinWidget(),
        ),
        FFRoute(
          name: 'TaskDescript',
          path: '/TaskDescript',
          builder: (context, params) => TaskDescriptWidget(
            data: params.getParam(
              'data',
              ParamType.DocumentReference,
              isList: false,
              collectionNamePath: ['Tasks'],
            ),
          ),
        ),
        FFRoute(
          name: 'ClothesColorShop',
          path: '/shopClothingColor',
          builder: (context, params) => const ClothesColorShopWidget(),
        ),
        FFRoute(
          name: 'ClothesShop',
          path: '/ShopClothes',
          builder: (context, params) => const ClothesShopWidget(),
        ),
        FFRoute(
          name: 'MouthShop',
          path: '/ShopMouth',
          builder: (context, params) => const MouthShopWidget(),
        ),
        FFRoute(
          name: 'FacialHairShop',
          path: '/ShopFacialHair',
          builder: (context, params) => const FacialHairShopWidget(),
        ),
        FFRoute(
          name: 'HatColorsShop',
          path: '/shopHatColorsCopy',
          builder: (context, params) => const HatColorsShopWidget(),
        ),
        FFRoute(
          name: 'EyeShop',
          path: '/shopEyes',
          builder: (context, params) => const EyeShopWidget(),
        ),
        FFRoute(
          name: 'HairColorsShop',
          path: '/shopHairColorsCopy',
          builder: (context, params) => const HairColorsShopWidget(),
        ),
        FFRoute(
          name: 'EyebrowShop',
          path: '/shopEyebrow',
          builder: (context, params) => const EyebrowShopWidget(),
        ),
        FFRoute(
          name: 'AccessoryShop',
          path: '/shopAccesssoriesCopy',
          builder: (context, params) => const AccessoryShopWidget(),
        ),
        FFRoute(
          name: 'TopsShop',
          path: '/shopTopsCopy',
          builder: (context, params) => const TopsShopWidget(),
        ),
        FFRoute(
          name: 'FacialHairColorShop',
          path: '/ShopFacialHairColor',
          builder: (context, params) => const FacialHairColorShopWidget(),
        ),
        FFRoute(
          name: 'MainShop',
          path: '/mainShop',
          builder: (context, params) => const MainShopWidget(),
        ),
        FFRoute(
          name: 'TestHome',
          path: '/testHome',
          builder: (context, params) => params.isEmpty
              ? const NavBarPage(initialPage: 'TestHome')
              : const TestHomeWidget(),
        ),
        FFRoute(
          name: 'TestProfile',
          path: '/oldting2',
          builder: (context, params) => params.isEmpty
              ? const NavBarPage(initialPage: 'TestProfile')
              : const TestProfileWidget(),
        ),
        FFRoute(
          name: 'processV',
          path: '/processV',
          builder: (context, params) => const ProcessVWidget(),
        ),
        FFRoute(
          name: 'processE',
          path: '/processE',
          builder: (context, params) => const ProcessEWidget(),
        ),
        FFRoute(
          name: 'processG',
          path: '/processG',
          builder: (context, params) => const ProcessGWidget(),
        ),
        FFRoute(
          name: 'SettingsCopy',
          path: '/settingsCopy',
          builder: (context, params) => params.isEmpty
              ? const NavBarPage(initialPage: 'SettingsCopy')
              : const SettingsCopyWidget(),
        ),
        FFRoute(
          name: 'Success03',
          path: '/success03',
          builder: (context, params) => const Success03Widget(),
        ),
        FFRoute(
          name: 'processingExcercise',
          path: '/processingExcercise',
          builder: (context, params) => const ProcessingExcerciseWidget(),
        ),
        FFRoute(
          name: 'processingVisit',
          path: '/processingVisit',
          builder: (context, params) => const ProcessingVisitWidget(),
        ),
        FFRoute(
          name: 'processingGeneral',
          path: '/processingGeneral',
          builder: (context, params) => const ProcessingGeneralWidget(),
        ),
        FFRoute(
          name: 'chat_2_Details',
          path: '/chat2Details',
          asyncParams: {
            'chatRef': getDoc(['chats'], ChatsRecord.fromSnapshot),
          },
          builder: (context, params) => Chat2DetailsWidget(
            chatRef: params.getParam(
              'chatRef',
              ParamType.Document,
            ),
          ),
        ),
        FFRoute(
          name: 'chat_2_main',
          path: '/chat2Main',
          builder: (context, params) => params.isEmpty
              ? const NavBarPage(initialPage: 'chat_2_main')
              : const Chat2MainWidget(),
        ),
        FFRoute(
          name: 'chat_2_InviteUsers',
          path: '/chat2InviteUsers',
          asyncParams: {
            'chatRef': getDoc(['chats'], ChatsRecord.fromSnapshot),
          },
          builder: (context, params) => Chat2InviteUsersWidget(
            chatRef: params.getParam(
              'chatRef',
              ParamType.Document,
            ),
          ),
        ),
        FFRoute(
          name: 'image_Details',
          path: '/imageDetails',
          asyncParams: {
            'chatMessage':
                getDoc(['chat_messages'], ChatMessagesRecord.fromSnapshot),
          },
          builder: (context, params) => ImageDetailsWidget(
            chatMessage: params.getParam(
              'chatMessage',
              ParamType.Document,
            ),
          ),
        ),
        FFRoute(
          name: 'Page3',
          path: '/Page3',
          builder: (context, params) => const Page3Widget(),
        )
      ].map((r) => r.toRoute(appStateNotifier)).toList(),
      observers: [routeObserver],
    );

extension NavParamExtensions on Map<String, String?> {
  Map<String, String> get withoutNulls => Map.fromEntries(
        entries
            .where((e) => e.value != null)
            .map((e) => MapEntry(e.key, e.value!)),
      );
}

extension NavigationExtensions on BuildContext {
  void goNamedAuth(
    String name,
    bool mounted, {
    Map<String, String> pathParameters = const <String, String>{},
    Map<String, String> queryParameters = const <String, String>{},
    Object? extra,
    bool ignoreRedirect = false,
  }) =>
      !mounted || GoRouter.of(this).shouldRedirect(ignoreRedirect)
          ? null
          : goNamed(
              name,
              pathParameters: pathParameters,
              queryParameters: queryParameters,
              extra: extra,
            );

  void pushNamedAuth(
    String name,
    bool mounted, {
    Map<String, String> pathParameters = const <String, String>{},
    Map<String, String> queryParameters = const <String, String>{},
    Object? extra,
    bool ignoreRedirect = false,
  }) =>
      !mounted || GoRouter.of(this).shouldRedirect(ignoreRedirect)
          ? null
          : pushNamed(
              name,
              pathParameters: pathParameters,
              queryParameters: queryParameters,
              extra: extra,
            );

  void safePop() {
    // If there is only one route on the stack, navigate to the initial
    // page instead of popping.
    if (canPop()) {
      pop();
    } else {
      go('/');
    }
  }
}

extension GoRouterExtensions on GoRouter {
  AppStateNotifier get appState => AppStateNotifier.instance;
  void prepareAuthEvent([bool ignoreRedirect = false]) =>
      appState.hasRedirect() && !ignoreRedirect
          ? null
          : appState.updateNotifyOnAuthChange(false);
  bool shouldRedirect(bool ignoreRedirect) =>
      !ignoreRedirect && appState.hasRedirect();
  void clearRedirectLocation() => appState.clearRedirectLocation();
  void setRedirectLocationIfUnset(String location) =>
      appState.updateNotifyOnAuthChange(false);
}

extension _GoRouterStateExtensions on GoRouterState {
  Map<String, dynamic> get extraMap =>
      extra != null ? extra as Map<String, dynamic> : {};
  Map<String, dynamic> get allParams => <String, dynamic>{}
    ..addAll(pathParameters)
    ..addAll(uri.queryParameters)
    ..addAll(extraMap);
  TransitionInfo get transitionInfo => extraMap.containsKey(kTransitionInfoKey)
      ? extraMap[kTransitionInfoKey] as TransitionInfo
      : TransitionInfo.appDefault();
}

class FFParameters {
  FFParameters(this.state, [this.asyncParams = const {}]);

  final GoRouterState state;
  final Map<String, Future<dynamic> Function(String)> asyncParams;

  Map<String, dynamic> futureParamValues = {};

  // Parameters are empty if the params map is empty or if the only parameter
  // present is the special extra parameter reserved for the transition info.
  bool get isEmpty =>
      state.allParams.isEmpty ||
      (state.allParams.length == 1 &&
          state.extraMap.containsKey(kTransitionInfoKey));
  bool isAsyncParam(MapEntry<String, dynamic> param) =>
      asyncParams.containsKey(param.key) && param.value is String;
  bool get hasFutures => state.allParams.entries.any(isAsyncParam);
  Future<bool> completeFutures() => Future.wait(
        state.allParams.entries.where(isAsyncParam).map(
          (param) async {
            final doc = await asyncParams[param.key]!(param.value)
                .onError((_, __) => null);
            if (doc != null) {
              futureParamValues[param.key] = doc;
              return true;
            }
            return false;
          },
        ),
      ).onError((_, __) => [false]).then((v) => v.every((e) => e));

  dynamic getParam<T>(
    String paramName,
    ParamType type, {
    bool isList = false,
    List<String>? collectionNamePath,
  }) {
    if (futureParamValues.containsKey(paramName)) {
      return futureParamValues[paramName];
    }
    if (!state.allParams.containsKey(paramName)) {
      return null;
    }
    final param = state.allParams[paramName];
    // Got parameter from `extras`, so just directly return it.
    if (param is! String) {
      return param;
    }
    // Return serialized value.
    return deserializeParam<T>(
      param,
      type,
      isList,
      collectionNamePath: collectionNamePath,
    );
  }
}

class FFRoute {
  const FFRoute({
    required this.name,
    required this.path,
    required this.builder,
    this.requireAuth = false,
    this.asyncParams = const {},
    this.routes = const [],
  });

  final String name;
  final String path;
  final bool requireAuth;
  final Map<String, Future<dynamic> Function(String)> asyncParams;
  final Widget Function(BuildContext, FFParameters) builder;
  final List<GoRoute> routes;

  GoRoute toRoute(AppStateNotifier appStateNotifier) => GoRoute(
        name: name,
        path: path,
        redirect: (context, state) {
          if (appStateNotifier.shouldRedirect) {
            final redirectLocation = appStateNotifier.getRedirectLocation();
            appStateNotifier.clearRedirectLocation();
            return redirectLocation;
          }

          if (requireAuth && !appStateNotifier.loggedIn) {
            appStateNotifier.setRedirectLocationIfUnset(state.uri.toString());
            return '/login';
          }
          return null;
        },
        pageBuilder: (context, state) {
          fixStatusBarOniOS16AndBelow(context);
          final ffParams = FFParameters(state, asyncParams);
          final page = ffParams.hasFutures
              ? FutureBuilder(
                  future: ffParams.completeFutures(),
                  builder: (context, _) => builder(context, ffParams),
                )
              : builder(context, ffParams);
          final child = appStateNotifier.loading
              ? Container(
                  color: Colors.transparent,
                  child: Image.asset(
                    'assets/images/Untitled_design_(8).png',
                    fit: BoxFit.cover,
                  ),
                )
              : PushNotificationsHandler(child: page);

          final transitionInfo = state.transitionInfo;
          return transitionInfo.hasTransition
              ? CustomTransitionPage(
                  key: state.pageKey,
                  child: child,
                  transitionDuration: transitionInfo.duration,
                  transitionsBuilder:
                      (context, animation, secondaryAnimation, child) =>
                          PageTransition(
                    type: transitionInfo.transitionType,
                    duration: transitionInfo.duration,
                    reverseDuration: transitionInfo.duration,
                    alignment: transitionInfo.alignment,
                    child: child,
                  ).buildTransitions(
                    context,
                    animation,
                    secondaryAnimation,
                    child,
                  ),
                )
              : MaterialPage(key: state.pageKey, child: child);
        },
        routes: routes,
      );
}

class TransitionInfo {
  const TransitionInfo({
    required this.hasTransition,
    this.transitionType = PageTransitionType.fade,
    this.duration = const Duration(milliseconds: 300),
    this.alignment,
  });

  final bool hasTransition;
  final PageTransitionType transitionType;
  final Duration duration;
  final Alignment? alignment;

  static TransitionInfo appDefault() => const TransitionInfo(
        hasTransition: true,
        transitionType: PageTransitionType.fade,
        duration: Duration(milliseconds: 300),
      );
}

class RootPageContext {
  const RootPageContext(this.isRootPage, [this.errorRoute]);
  final bool isRootPage;
  final String? errorRoute;

  static bool isInactiveRootPage(BuildContext context) {
    final rootPageContext = context.read<RootPageContext?>();
    final isRootPage = rootPageContext?.isRootPage ?? false;
    final location = GoRouterState.of(context).uri.toString();
    return isRootPage &&
        location != '/' &&
        location != rootPageContext?.errorRoute;
  }

  static Widget wrap(Widget child, {String? errorRoute}) => Provider.value(
        value: RootPageContext(true, errorRoute),
        child: child,
      );
}

extension GoRouterLocationExtension on GoRouter {
  String getCurrentLocation() {
    final RouteMatch lastMatch = routerDelegate.currentConfiguration.last;
    final RouteMatchList matchList = lastMatch is ImperativeRouteMatch
        ? lastMatch.matches
        : routerDelegate.currentConfiguration;
    return matchList.uri.toString();
  }
}
