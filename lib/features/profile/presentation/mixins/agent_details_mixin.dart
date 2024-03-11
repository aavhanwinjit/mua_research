import 'package:ekyc/core/app_export.dart';
import 'package:ekyc/core/dependency/injection.dart';
import 'package:ekyc/core/utils/extensions/context_extensions.dart';
import 'package:ekyc/features/login_otp/presentation/providers/login_provider.dart';
import 'package:ekyc/features/profile/data/models/get_agent_details/response/get_agent_details_response_model.dart';
import 'package:ekyc/features/profile/domain/usecases/get_agent_details.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

mixin AgentDetailsMixin {
  Future<void> getAgentDetails(BuildContext context, WidgetRef ref,
      {required Function(GetAgentDetailsResponseModel? agentDetails) onSuccess}) async {
    final response = await getIt<GetAgentDetails>().call(null);

    response.fold(
      (failure) {
        debugPrint("failure: $failure");
        context.showErrorSnackBar(
            message: Strings.globalErrorGenericMessageOne);
      },
      (GetAgentDetailsResponseModel success) async {
        if (success.status?.isSuccess == true) {
          print("----------------------------------------");
          print(success.body!.responseBody!.mobileNumber);
          print("----------------------------------------");
          ref.watch(phoneNumberProvider.notifier).update(
              (state) => success.body!.responseBody!.mobileNumber!.toString());
          onSuccess(success);
        } else {
          context.showErrorSnackBar(
            message:
                success.status?.message ?? Strings.globalErrorGenericMessageOne,
          );
        }
      },
    );
  }
}
