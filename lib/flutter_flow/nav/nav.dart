import 'dart:async';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '/backend/backend.dart';

import '/auth/base_auth_user_provider.dart';

import '/backend/push_notifications/push_notifications_handler.dart'
    show PushNotificationsHandler;
import '/main.dart';
import '/flutter_flow/flutter_flow_util.dart';

import '/index.dart';

export 'package:go_router/go_router.dart';
export 'serialization_util.dart';

const kTransitionInfoKey = '__transition_info__';

GlobalKey<NavigatorState> appNavigatorKey = GlobalKey<NavigatorState>();

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
      navigatorKey: appNavigatorKey,
      errorBuilder: (context, state) =>
          appStateNotifier.loggedIn ? NavBarPage() : LoginWidget(),
      routes: [
        FFRoute(
          name: '_initialize',
          path: '/',
          builder: (context, _) =>
              appStateNotifier.loggedIn ? NavBarPage() : LoginWidget(),
        ),
        FFRoute(
          name: Page2Widget.routeName,
          path: Page2Widget.routePath,
          builder: (context, params) => Page2Widget(),
        ),
        FFRoute(
          name: Page1Widget.routeName,
          path: Page1Widget.routePath,
          builder: (context, params) => Page1Widget(),
        ),
        FFRoute(
          name: Create04TaskWidget.routeName,
          path: Create04TaskWidget.routePath,
          builder: (context, params) => Create04TaskWidget(),
        ),
        FFRoute(
          name: Page4Widget.routeName,
          path: Page4Widget.routePath,
          builder: (context, params) => Page4Widget(),
        ),
        FFRoute(
          name: TodosWidget.routeName,
          path: TodosWidget.routePath,
          builder: (context, params) =>
              params.isEmpty ? NavBarPage(initialPage: 'Todos') : TodosWidget(),
        ),
        FFRoute(
          name: LoginWidget.routeName,
          path: LoginWidget.routePath,
          builder: (context, params) => LoginWidget(),
        ),
        FFRoute(
          name: ForgotPasswordWidget.routeName,
          path: ForgotPasswordWidget.routePath,
          builder: (context, params) => ForgotPasswordWidget(),
        ),
        FFRoute(
          name: ChangeGradeWidget.routeName,
          path: ChangeGradeWidget.routePath,
          builder: (context, params) => ChangeGradeWidget(),
        ),
        FFRoute(
          name: OwnedTopsWidget.routeName,
          path: OwnedTopsWidget.routePath,
          builder: (context, params) => OwnedTopsWidget(),
        ),
        FFRoute(
          name: OwnedAccesssoriesWidget.routeName,
          path: OwnedAccesssoriesWidget.routePath,
          builder: (context, params) => OwnedAccesssoriesWidget(),
        ),
        FFRoute(
          name: OwnedHairColorsWidget.routeName,
          path: OwnedHairColorsWidget.routePath,
          builder: (context, params) => OwnedHairColorsWidget(),
        ),
        FFRoute(
          name: OwnedHatColorsWidget.routeName,
          path: OwnedHatColorsWidget.routePath,
          builder: (context, params) => OwnedHatColorsWidget(),
        ),
        FFRoute(
          name: OwnedFacialHairWidget.routeName,
          path: OwnedFacialHairWidget.routePath,
          builder: (context, params) => OwnedFacialHairWidget(),
        ),
        FFRoute(
          name: OwnedFacialHairColorWidget.routeName,
          path: OwnedFacialHairColorWidget.routePath,
          builder: (context, params) => OwnedFacialHairColorWidget(),
        ),
        FFRoute(
          name: OwnedClothesWidget.routeName,
          path: OwnedClothesWidget.routePath,
          builder: (context, params) => OwnedClothesWidget(),
        ),
        FFRoute(
          name: OwnedClothesColorWidget.routeName,
          path: OwnedClothesColorWidget.routePath,
          builder: (context, params) => OwnedClothesColorWidget(),
        ),
        FFRoute(
          name: OwnedEyesWidget.routeName,
          path: OwnedEyesWidget.routePath,
          builder: (context, params) => OwnedEyesWidget(),
        ),
        FFRoute(
          name: OwnedEyebrowWidget.routeName,
          path: OwnedEyebrowWidget.routePath,
          builder: (context, params) => OwnedEyebrowWidget(),
        ),
        FFRoute(
          name: OwnedMouthWidget.routeName,
          path: OwnedMouthWidget.routePath,
          builder: (context, params) => OwnedMouthWidget(),
        ),
        FFRoute(
          name: OwnedSkinWidget.routeName,
          path: OwnedSkinWidget.routePath,
          builder: (context, params) => OwnedSkinWidget(),
        ),
        FFRoute(
          name: TaskDescriptWidget.routeName,
          path: TaskDescriptWidget.routePath,
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
          name: ClothesColorShopWidget.routeName,
          path: ClothesColorShopWidget.routePath,
          builder: (context, params) => ClothesColorShopWidget(),
        ),
        FFRoute(
          name: ClothesShopWidget.routeName,
          path: ClothesShopWidget.routePath,
          builder: (context, params) => ClothesShopWidget(),
        ),
        FFRoute(
          name: MouthShopWidget.routeName,
          path: MouthShopWidget.routePath,
          builder: (context, params) => MouthShopWidget(),
        ),
        FFRoute(
          name: FacialHairShopWidget.routeName,
          path: FacialHairShopWidget.routePath,
          builder: (context, params) => FacialHairShopWidget(),
        ),
        FFRoute(
          name: HatColorsShopWidget.routeName,
          path: HatColorsShopWidget.routePath,
          builder: (context, params) => HatColorsShopWidget(),
        ),
        FFRoute(
          name: EyeShopWidget.routeName,
          path: EyeShopWidget.routePath,
          builder: (context, params) => EyeShopWidget(),
        ),
        FFRoute(
          name: HairColorsShopWidget.routeName,
          path: HairColorsShopWidget.routePath,
          builder: (context, params) => HairColorsShopWidget(),
        ),
        FFRoute(
          name: EyebrowShopWidget.routeName,
          path: EyebrowShopWidget.routePath,
          builder: (context, params) => EyebrowShopWidget(),
        ),
        FFRoute(
          name: AccessoryShopWidget.routeName,
          path: AccessoryShopWidget.routePath,
          builder: (context, params) => AccessoryShopWidget(),
        ),
        FFRoute(
          name: TopsShopWidget.routeName,
          path: TopsShopWidget.routePath,
          builder: (context, params) => TopsShopWidget(),
        ),
        FFRoute(
          name: FacialHairColorShopWidget.routeName,
          path: FacialHairColorShopWidget.routePath,
          builder: (context, params) => FacialHairColorShopWidget(),
        ),
        FFRoute(
          name: MainShopWidget.routeName,
          path: MainShopWidget.routePath,
          builder: (context, params) => MainShopWidget(),
        ),
        FFRoute(
          name: TestHomeWidget.routeName,
          path: TestHomeWidget.routePath,
          builder: (context, params) => params.isEmpty
              ? NavBarPage(initialPage: 'TestHome')
              : TestHomeWidget(),
        ),
        FFRoute(
          name: TestProfileWidget.routeName,
          path: TestProfileWidget.routePath,
          builder: (context, params) => params.isEmpty
              ? NavBarPage(initialPage: 'TestProfile')
              : TestProfileWidget(),
        ),
        FFRoute(
          name: ProcessVWidget.routeName,
          path: ProcessVWidget.routePath,
          builder: (context, params) => ProcessVWidget(),
        ),
        FFRoute(
          name: ProcessEWidget.routeName,
          path: ProcessEWidget.routePath,
          builder: (context, params) => ProcessEWidget(),
        ),
        FFRoute(
          name: ProcessGWidget.routeName,
          path: ProcessGWidget.routePath,
          builder: (context, params) => ProcessGWidget(),
        ),
        FFRoute(
          name: SettingsCopyWidget.routeName,
          path: SettingsCopyWidget.routePath,
          builder: (context, params) => params.isEmpty
              ? NavBarPage(initialPage: 'SettingsCopy')
              : SettingsCopyWidget(),
        ),
        FFRoute(
          name: Success03Widget.routeName,
          path: Success03Widget.routePath,
          builder: (context, params) => Success03Widget(),
        ),
        FFRoute(
          name: ProcessingExcerciseWidget.routeName,
          path: ProcessingExcerciseWidget.routePath,
          builder: (context, params) => ProcessingExcerciseWidget(),
        ),
        FFRoute(
          name: ProcessingVisitWidget.routeName,
          path: ProcessingVisitWidget.routePath,
          builder: (context, params) => ProcessingVisitWidget(),
        ),
        FFRoute(
          name: ProcessingGeneralWidget.routeName,
          path: ProcessingGeneralWidget.routePath,
          builder: (context, params) => ProcessingGeneralWidget(),
        ),
        FFRoute(
          name: Page3Widget.routeName,
          path: Page3Widget.routePath,
          builder: (context, params) => Page3Widget(),
        ),
        FFRoute(
          name: Chat2DetailsWidget.routeName,
          path: Chat2DetailsWidget.routePath,
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
          name: Chat2MainWidget.routeName,
          path: Chat2MainWidget.routePath,
          builder: (context, params) => params.isEmpty
              ? NavBarPage(initialPage: 'chat_2_main')
              : Chat2MainWidget(),
        ),
        FFRoute(
          name: Chat2InviteUsersWidget.routeName,
          path: Chat2InviteUsersWidget.routePath,
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
          name: ImageDetailsWidget.routeName,
          path: ImageDetailsWidget.routePath,
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

  static TransitionInfo appDefault() => TransitionInfo(
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
