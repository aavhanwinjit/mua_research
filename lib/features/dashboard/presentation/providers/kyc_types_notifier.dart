import 'package:ekyc/features/dashboard/data/models/get_kyc_types/response/get_kyc_types_response_model.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'kyc_types_notifier.g.dart';

@riverpod
class KycTypesNotifier extends _$KycTypesNotifier {
  @override
  List<KycTypesModel> build() {
    return [];
  }

  void updateApplicationList(List<KycTypesModel> list) {
    state = list;
  }

  bool haveApplications() {
    return state.isNotEmpty;
  }

  bool haveNoApplications() {
    return state.isEmpty;
  }

  List<KycTypesModel> kycTypes() {
    return state;
  }
}
