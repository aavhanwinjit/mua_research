import 'package:ekyc/features/mpin_face_id/data/models/verify_mpin/response/verify_mpin_response_model.dart';
import 'package:ekyc/models/agent_login_details/agent_login_details_response_model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final createPINProvider = StateProvider<String>((ref) => '');

final confirmPINProvider = StateProvider<String>((ref) => '');

final mpinLoadingProvider = StateProvider<bool>((ref) => false);

final agentLoginDetailsProvider = StateProvider<AgentLoginDetailsResponseModel?>((ref) => null);

final loginPINProvider = StateProvider<String>((ref) => '');

final biometricSelectedProvider = StateProvider<bool>((ref) => false);

final forgotPasswordSelectedProvider = StateProvider<bool>((ref) => false);

final oldPINProvider = StateProvider<String>((ref) => '');

final verifyMPINResponseProvider = StateProvider<VerifyMPINResponseModel?>((ref) => null);
