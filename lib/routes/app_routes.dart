import 'package:ekyc/features/failure_screen/failure_screen.dart';
import 'package:ekyc/features/otp_screen/otp_screen.dart';
import 'package:ekyc/features/splash_screen/splash_screen.dart';
import 'package:ekyc/features/success_screen/success_screen.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AppRoutes {
  static const String splashScreen = '/splash_screen';
  static const String otpScreen = '/otp_screen';
  static const String successScreen = '/success_screen';
  static const String failureScreen = '/failure_screen';
}

class RouteName {
  static String otpScreen = 'otp_screen';
  static String successScreen = 'success_screen';
  static String failureScreen = 'failure_screen';
}

final GlobalKey<NavigatorState> rootNavigatorKey =
    GlobalKey<NavigatorState>(debugLabel: 'rootNavigatorKey');

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
      path: AppRoutes.otpScreen,
      name: RouteName.otpScreen,
      builder: (BuildContext context, GoRouterState state) {
        return const OTPScreen();
      },
    ),
    GoRoute(
      path: AppRoutes.successScreen,
      name: RouteName.successScreen,
      builder: (BuildContext context, GoRouterState state) {
        return const SuccessScreen();
      },
    ),
    GoRoute(
      path: AppRoutes.failureScreen,
      name: RouteName.failureScreen,
      builder: (BuildContext context, GoRouterState state) {
        return const FailureScreen();
      },
    ),
  ],
  errorBuilder: (context, state) => Scaffold(
    body: Center(
      child: Text('${state.error}'),
    ),
  ),
);
