import 'package:ekyc/features/splash_screen/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AppRoutes {
  static const String splashScreen = '/splash_screen';

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
  ],
  errorBuilder: (context, state) => Scaffold(
    body: Center(
      child: Text('${state.error}'),
    ),
  ),
);
