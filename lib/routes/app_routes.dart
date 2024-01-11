import 'package:ekyc/features/auth_profile/presentation/pages/auth_profile_screen.dart';
import 'package:ekyc/features/create_pin_face_id_screen/presentation/create_pin_and_face_id/confirm_pin_screen.dart';
import 'package:ekyc/features/create_pin_face_id_screen/presentation/create_pin_and_face_id/create_pin_and_face_id_screen.dart';
import 'package:ekyc/features/create_pin_face_id_screen/presentation/create_pin_face_id_screen.dart';
import 'package:ekyc/features/dashboard/presentation/pages/dashboard_screen.dart';
import 'package:ekyc/features/kyc_process/presentation/additional_documents/pages/additional_docs_review_submit_screen.dart';
import 'package:ekyc/features/kyc_process/presentation/additional_documents/pages/additional_documents_screen.dart';
import 'package:ekyc/features/kyc_process/presentation/address_details/pages/address_details_screen.dart';
import 'package:ekyc/features/kyc_process/presentation/address_details/pages/address_review_submit_screen.dart';
import 'package:ekyc/features/kyc_process/presentation/address_details/pages/insured_documents_screen.dart';
import 'package:ekyc/features/kyc_process/presentation/camera/pages/camera_screen.dart';
import 'package:ekyc/features/kyc_process/presentation/customer_info/pages/customer_info_screen.dart';
import 'package:ekyc/features/kyc_process/presentation/customer_info/pages/edit_customer_info_screen.dart';
import 'package:ekyc/features/kyc_process/presentation/document_review/pages/review_uploaded_document_screen.dart';
import 'package:ekyc/features/kyc_process/presentation/id_details/pages/edit_id_screen.dart';
import 'package:ekyc/features/kyc_process/presentation/id_details/pages/id_review_submit_screen.dart';
import 'package:ekyc/features/kyc_process/presentation/id_details/pages/upload_id_proof_screen.dart';
import 'package:ekyc/features/kyc_process/presentation/insurance_stage/pages/insurance_stages_screen.dart';
import 'package:ekyc/features/kyc_process/presentation/kyu_submit/pages/kyc_submitted_screen.dart';
import 'package:ekyc/features/kyc_process/presentation/motor_documents/pages/motor_docs_review_submit_screen.dart';
import 'package:ekyc/features/kyc_process/presentation/motor_documents/pages/motor_documents_screen.dart';
import 'package:ekyc/features/kyc_process/presentation/non_motor_documents/pages/non_motor_docs_review_submit_screen.dart';
import 'package:ekyc/features/kyc_process/presentation/non_motor_documents/pages/non_motor_document_screen.dart';
import 'package:ekyc/features/kyc_process/presentation/policy_documents/pages/pd_review_submit_screen.dart';
import 'package:ekyc/features/kyc_process/presentation/policy_documents/pages/policy_documents_screen.dart';
import 'package:ekyc/features/login_otp/presentation/pages/failure_screen.dart';
import 'package:ekyc/features/login_otp/presentation/pages/login_screen.dart';
import 'package:ekyc/features/login_otp/presentation/pages/otp_screen.dart';
import 'package:ekyc/features/login_otp/presentation/pages/success_screen.dart';
import 'package:ekyc/features/onboard_success_screen/onboard_success_screen.dart';
import 'package:ekyc/features/profile/presentation/pages/profile_screen.dart';
import 'package:ekyc/features/signature/presentation/screens/signature_screen.dart';
import 'package:ekyc/features/splash_screen/presentation/pages/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AppRoutes {
  static const String splashScreen = '/splash_screen';
  static const String otpScreen = '/otp_screen';
  static const String successScreen = '/success_screen';
  static const String failureScreen = '/failure_screen';
  static const String loginScreen = '/login_screen';
  static const String createPINFaceIdscreen = '/create_pin_face_id_screen';
  static const String createPINandFaceIdScreen = '/create_pin_and_face_id_screen';
  static const String confirmPINScreen = '/confirm_pin_screen';
  static const String onboardSuccessScreen = '/onboard_success_screen';
  static const String authProfileScreen = '/auth_profile_screen';
  static const String signatureScreen = '/signature_screen';
  static const String dashboardScreen = '/dashboard_screen';
  static const String customerInfoScreen = '/customer_info_screen';
  static const String insuranceStagesScreen = '/insurance_stages_screen';
  static const String uploadIDproofScreen = '/upload_id_proof_screen';
  static const String confirmUploadOrRetakeScreen = '/confirm_upload_or_retake_screen';
  static const String idReviewSubmitScreen = '/id_review_submit_screen';
  static const String editCustomerInfoScreen = '/edit_customer_info_screen';
  static const String editIDScreen = '/edit_id_screen';
  static const String policyDocumentScreen = '/policy_document_screen';
  static const String pdReviewSubmitScreen = '/policy_document_review_submit_screen';
  static const String reviewSubmitScreen = '/review_submit_screen';
  static const String cameraScreen = '/camera_screen';
  static const String addressDetailsScreen = '/address_details_screen';
  static const String insuredDocumentScreen = '/insured_document_screen';
  static const String addressReviewSubmitScreen = '/address_review_submit_screen';
  static const String additionalDocsScreen = '/additional_docs_screen';
  static const String additionalDocsReviewSubmitScreen = '/additional_docs_review_submit_screen';
  static const String motorDocsScreen = '/motor_docs_screen';
  static const String motorDocsReviewSubmitScreen = '/motor_docs_review_submit_screen';
  static const String nonMotorDocsScreen = '/non_motor_docs_screen';
  static const String nonMotorDocsReviewSubmitScreen = '/non_motor_docs_review_submit_screen';
  static const String profileScreen = '/profile_screen';
  static const String kycSubmittedScreen = '/kyc_submit_screen';
}

final GlobalKey<NavigatorState> rootNavigatorKey = GlobalKey<NavigatorState>(debugLabel: 'rootNavigatorKey');

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
    GoRoute(
      path: AppRoutes.customerInfoScreen,
      name: AppRoutes.customerInfoScreen,
      builder: (BuildContext context, GoRouterState state) {
        return const CustomerInfoScreen();
      },
    ),
    GoRoute(
      path: AppRoutes.insuranceStagesScreen,
      name: AppRoutes.insuranceStagesScreen,
      builder: (BuildContext context, GoRouterState state) {
        return const InsuranceStagesScreen();
      },
    ),
    GoRoute(
      path: AppRoutes.uploadIDproofScreen,
      name: AppRoutes.uploadIDproofScreen,
      builder: (BuildContext context, GoRouterState state) {
        return const UploadIDdetailsScreen();
      },
    ),
    GoRoute(
      path: AppRoutes.confirmUploadOrRetakeScreen,
      name: AppRoutes.confirmUploadOrRetakeScreen,
      builder: (BuildContext context, GoRouterState state) {
        return const ReviewUploadedDocumentScreen();
      },
    ),
    GoRoute(
      path: AppRoutes.idReviewSubmitScreen,
      name: AppRoutes.idReviewSubmitScreen,
      builder: (BuildContext context, GoRouterState state) {
        return const IDReviewSubmitScreen();
      },
    ),
    GoRoute(
      path: AppRoutes.editCustomerInfoScreen,
      name: AppRoutes.editCustomerInfoScreen,
      builder: (BuildContext context, GoRouterState state) {
        return const EditCustomerInfoScreen();
      },
    ),
    GoRoute(
      path: AppRoutes.editIDScreen,
      name: AppRoutes.editIDScreen,
      builder: (BuildContext context, GoRouterState state) {
        return const EditIDScreen();
      },
    ),
    GoRoute(
      path: AppRoutes.policyDocumentScreen,
      name: AppRoutes.policyDocumentScreen,
      builder: (BuildContext context, GoRouterState state) {
        return const PolicyDocumentsScreen();
      },
    ),
    GoRoute(
      path: AppRoutes.pdReviewSubmitScreen,
      name: AppRoutes.pdReviewSubmitScreen,
      builder: (BuildContext context, GoRouterState state) {
        return const PDReviewSubmitScreen();
      },
    ),
    GoRoute(
      path: AppRoutes.cameraScreen,
      name: AppRoutes.cameraScreen,
      builder: (BuildContext context, GoRouterState state) {
        return const CameraScreen();
      },
    ),
    GoRoute(
      path: AppRoutes.addressDetailsScreen,
      name: AppRoutes.addressDetailsScreen,
      builder: (BuildContext context, GoRouterState state) {
        return const AddressDetailsScreen();
      },
    ),
    GoRoute(
      path: AppRoutes.insuredDocumentScreen,
      name: AppRoutes.insuredDocumentScreen,
      builder: (BuildContext context, GoRouterState state) {
        return const InsuredDocumentsScreen();
      },
    ),
    GoRoute(
      path: AppRoutes.addressReviewSubmitScreen,
      name: AppRoutes.addressReviewSubmitScreen,
      builder: (BuildContext context, GoRouterState state) {
        return const AddressReviewSubmitScreen();
      },
    ),
    GoRoute(
      path: AppRoutes.additionalDocsScreen,
      name: AppRoutes.additionalDocsScreen,
      builder: (BuildContext context, GoRouterState state) {
        return const AdditionalDocumentsScreen();
      },
    ),
    GoRoute(
      path: AppRoutes.additionalDocsReviewSubmitScreen,
      name: AppRoutes.additionalDocsReviewSubmitScreen,
      builder: (BuildContext context, GoRouterState state) {
        return const AdditionalDocsReviewSubmitScreen();
      },
    ),
    GoRoute(
      path: AppRoutes.motorDocsScreen,
      name: AppRoutes.motorDocsScreen,
      builder: (BuildContext context, GoRouterState state) {
        return const MotorDocumentScreen();
      },
    ),
    GoRoute(
      path: AppRoutes.motorDocsReviewSubmitScreen,
      name: AppRoutes.motorDocsReviewSubmitScreen,
      builder: (BuildContext context, GoRouterState state) {
        return const MotorDocsReviewSubmitScreen();
      },
    ),
    GoRoute(
      path: AppRoutes.nonMotorDocsScreen,
      name: AppRoutes.nonMotorDocsScreen,
      builder: (BuildContext context, GoRouterState state) {
        return const NonMotorDocumentScreen();
      },
    ),
    GoRoute(
      path: AppRoutes.nonMotorDocsReviewSubmitScreen,
      name: AppRoutes.nonMotorDocsReviewSubmitScreen,
      builder: (BuildContext context, GoRouterState state) {
        return const NonMotorDocsReviewSubmitScreen();
      },
    ),
    GoRoute(
      path: AppRoutes.profileScreen,
      name: AppRoutes.profileScreen,
      builder: (BuildContext context, GoRouterState state) {
        return const ProfileScreen();
      },
    ),
    GoRoute(
      path: AppRoutes.kycSubmittedScreen,
      name: AppRoutes.kycSubmittedScreen,
      builder: (BuildContext context, GoRouterState state) {
        return const KYCSubmittedScreen();
      },
    ),
  ],
  errorBuilder: (context, state) => Scaffold(
    body: Center(
      child: Text('${state.error}'),
    ),
  ),
);