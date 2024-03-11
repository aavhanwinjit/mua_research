import 'package:ekyc/features/dashboard/data/models/get_agent_application/response/get_agent_applications_response_model.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'agent_applications_notifier.g.dart';

@riverpod
class AgentApplicationsNotifier extends _$AgentApplicationsNotifier {
  @override
  List<AgentApplicationsModel> build() {
    return [];
  }

  void updateApplicationList(List<AgentApplicationsModel> list) {
    state = list;
  }

  bool haveApplications() {
    return state.isNotEmpty;
  }

  bool haveNoApplications() {
    return state.isEmpty;
  }

  List<AgentApplicationsModel> applications() {
    return state;
  }
}
