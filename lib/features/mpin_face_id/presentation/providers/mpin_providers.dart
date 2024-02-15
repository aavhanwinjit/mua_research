import 'package:ekyc/features/mpin_face_id/data/models/set_agent_mpin/response/set_agent_mpin_response_model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final createPINProvider = StateProvider<String>((ref) => '');

final confirmPINProvider = StateProvider<String>((ref) => '');

final setAgentMpinResponseProvider = StateProvider<SetAgentMpinResponseModel?>((ref) => null);

final loginPINProvider = StateProvider<String>((ref) => '');
