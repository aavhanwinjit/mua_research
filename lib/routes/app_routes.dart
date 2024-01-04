import 'package:ekyc/features/confirm_pin_screen/confirm_pin_screen.dart';
import 'package:ekyc/features/create_pin_and_face_id/create_pin_and_face_id_screen.dart';
import 'package:ekyc/features/create_pin_face_id_screen/create_pin_face_id_screen.dart';
import 'package:ekyc/features/onboard_success_screen/onboard_success_screen.dart';
import 'package:ekyc/features/auth_profile/presentation/pages/auth_profile_screen.dart';
import 'package:ekyc/features/dashboard/presentation/pages/dashboard_screen.dart';
import 'package:ekyc/features/login_otp/presentation/pages/failure_screen.dart';
import 'package:ekyc/features/login_otp/presentation/pages/login_screen.dart';
import 'package:ekyc/features/login_otp/presentation/pages/otp_screen.dart';
import 'package:ekyc/features/signature/presentation/screens/signature_screen.dart';
import 'package:ekyc/features/splash_screen/presentation/pages/splash_screen.dart';
import 'package:ekyc/features/login_otp/presentation/pages/success_screen.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AppRoutes {
  static const String splashScreen = '/splash_screen';
  static const String otpScreen = '/otp_screen';
  static const String successScreen = '/success_screen';
  static const String failureScreen = '/failure_screen';
  static const String loginScreen = '/login_screen';
  static const String createPINFaceIdscreen = '/create_pin_face_id_screen';
  static const String createPINandFaceIdScreen =
      "/create_pin_and_face_id_screen";
  static const String confirmPINScreen = '/confirm_pin_screen';
  static const String onboardSuccessScreen = '/onboard_success_screen';
  static const String authProfileScreen = '/auth_profile_screen';
  static const String signatureScreen = '/signature_screen';
  static const String dashboardScreen = '/dashboard_screen';
}

final GlobalKey<NavigatorState> rootNavigatorKey =
    GlobalKey<NavigatorState>(debugLabel: 'rootNavigatorKey');

final GoRouter router = GoRouter(
  // initialLocation: AppRoutes.dashboardScreen,
  initialLocation: AppRoutes.splashScreen,
  routes: <RouteBase>[
    GoRoute(
      path: AppRoutes.splashScreen,
      name: AppRoutes.splashScreen,
      builder: (BuildContext context, GoRouterState state) {
        return const SplashScreen();
      },
    ),
    GoRoute(
      path: AppRoutes.loginScreen,
      name: AppRoutes.loginScreen,
      builder: (BuildContext context, GoRouterState state) {
        return const LoginScreen();
      },
    ),
    GoRoute(
      path: AppRoutes.otpScreen,
      name: AppRoutes.otpScreen,
      builder: (BuildContext context, GoRouterState state) {
        return const OTPScreen();
      },
    ),
    GoRoute(
      path: AppRoutes.successScreen,
      name: AppRoutes.successScreen,
      builder: (BuildContext context, GoRouterState state) {
        return const SuccessScreen();
      },
    ),
    GoRoute(
      path: AppRoutes.failureScreen,
      name: AppRoutes.failureScreen,
      builder: (BuildContext context, GoRouterState state) {
        return const FailureScreen();
      },
    ),
    GoRoute(
      path: AppRoutes.createPINFaceIdscreen,
      name: AppRoutes.createPINFaceIdscreen,
      builder: (BuildContext context, GoRouterState state) {
        return const CreatePINFaceIdScreen();
      },
    ),
    GoRoute(
      path: AppRoutes.createPINandFaceIdScreen,
      name: AppRoutes.createPINandFaceIdScreen,
      builder: (BuildContext context, GoRouterState state) {
        return const CreatePINandFaceIdScreen();
      },
    ),
    GoRoute(
      path: AppRoutes.confirmPINScreen,
      name: AppRoutes.confirmPINScreen,
      builder: (BuildContext context, GoRouterState state) {
        return const ConfirmPINScreen();
      },
    ),
    GoRoute(
        path: AppRoutes.onboardSuccessScreen,
        name: AppRoutes.onboardSuccessScreen,
        builder: (BuildContext context, GoRouterState state) {
          return const OnboardSuccessScreen();
        }),
    GoRoute(
      path: AppRoutes.authProfileScreen,
      name: AppRoutes.authProfileScreen,
      builder: (BuildContext context, GoRouterState state) {
        return const AuthProfileScreen();
      },
    ),
    GoRoute(
      path: AppRoutes.signatureScreen,
      name: AppRoutes.signatureScreen,
      builder: (BuildContext context, GoRouterState state) {
        return const SignatureScreen();
      },
    ),
    GoRoute(
      path: AppRoutes.dashboardScreen,
      name: AppRoutes.dashboardScreen,
      builder: (BuildContext context, GoRouterState state) {
        return const DashboardScreen();
      },
    ),
  ],
  errorBuilder: (context, state) => Scaffold(
    body: Center(
      child: Text('${state.error}'),
    ),
  ),
);
