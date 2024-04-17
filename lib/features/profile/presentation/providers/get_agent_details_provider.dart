import 'package:ekyc/features/profile/data/models/get_agent_details/response/get_agent_details_response_model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final agentDetailsResponseProvider = StateProvider<GetAgentDetailsResponseModel?>((ref) => null);
final agentSignaturePathProvider = StateProvider<String?>((ref) => null);
final agentDetailsLoadingProvider = StateProvider<bool>((ref) => false);

final signatureLoadingProvider = StateProvider<bool>((ref) => false);
