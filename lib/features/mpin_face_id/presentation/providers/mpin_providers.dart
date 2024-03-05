import 'package:ekyc/features/mpin_face_id/data/models/login_by_biometric/response/login_by_fp_response_model.dart';
import 'package:ekyc/models/agent_login_details/agent_login_details_response_model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final createPINProvider = StateProvider<String>((ref) => '');

final confirmPINProvider = StateProvider<String>((ref) => '');

final agentLoginDetailsProvider = StateProvider<AgentLoginDetailsResponseModel?>((ref) => null);

// final setAgentMpinResponseProvider = StateProvider<SetAgentMpinResponseModel?>((ref) => null);

final loginPINProvider = StateProvider<String>((ref) => '');

// final loginByMpinResponseProvider = StateProvider<LoginbyMpinResponseModel?>((ref) => null);

final loginByFPResponseProvider = StateProvider<LoginByFpResponseModel?>((ref) => null);

final biometricSelectedProvider = StateProvider<bool>((ref) => false);

final forgotPasswordSelectedProvider = StateProvider<bool>((ref) => false);
