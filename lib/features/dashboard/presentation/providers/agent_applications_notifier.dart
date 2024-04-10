import 'package:ekyc/models/agent_application_model/agent_application_model.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'agent_applications_notifier.g.dart';

@Riverpod(keepAlive: true)
class AgentApplicationsNotifier extends _$AgentApplicationsNotifier {
  @override
  List<AgentApplicationModel> build() {
    return [];
  }

  void updateApplicationList(List<AgentApplicationModel> list) {
    state = list;
  }

  void appendDataToApplicationList(List<AgentApplicationModel> list) {
    state = [...state, ...list];
  }

  bool haveApplications() {
    return state.isNotEmpty;
  }

  bool haveNoApplications() {
    return state.isEmpty;
  }

  List<AgentApplicationModel> applications() {
    return state;
  }
}
