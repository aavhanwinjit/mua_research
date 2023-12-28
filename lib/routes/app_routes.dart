import 'package:ekyc/features/login/login_screen.dart';
import 'package:ekyc/features/splash_screen/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AppRoutes {
  static const String splashScreen = '/splash_screen';
  static const String loginScreen = '/login_screen';

  // static Map<String, WidgetBuilder> routes = {
  //   splashScreen: (context) => SplashScreen(),
  // };
}

final GlobalKey<NavigatorState> rootNavigatorKey = GlobalKey<NavigatorState>(debugLabel: 'rootNavigatorKey');

final GoRouter router = GoRouter(
  initialLocation: AppRoutes.splashScreen,
  routes: <RouteBase>[
    GoRoute(
      path: AppRoutes.splashScreen,
      builder: (BuildContext context, GoRouterState state) {
        return const SplashScreen();
      },
    ),
    GoRoute(
      path: AppRoutes.loginScreen,
      builder: (BuildContext context, GoRouterState state) {
        return const LoginScreen();
      },
    ),
  ],
  errorBuilder: (context, state) => Scaffold(
    body: Center(
      child: Text('${state.error}'),
    ),
  ),
);
