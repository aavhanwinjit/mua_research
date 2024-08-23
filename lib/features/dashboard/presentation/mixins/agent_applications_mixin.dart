import 'package:ekyc/core/app_export.dart';
import 'package:ekyc/core/dependency/injection.dart';
import 'package:ekyc/core/utils/api_error_codes.dart';
import 'package:ekyc/core/utils/extensions/context_extensions.dart';
import 'package:ekyc/features/dashboard/data/models/get_agent_application/request/get_agent_applications_request_model.dart';
import 'package:ekyc/features/dashboard/data/models/get_agent_application/response/get_agent_applications_response_model.dart';
import 'package:ekyc/features/dashboard/domain/usecases/get_agent_applications.dart';
import 'package:ekyc/features/dashboard/presentation/providers/agent_applications_notifier.dart';
import 'package:ekyc/features/dashboard/presentation/providers/application_filters_providers.dart';
import 'package:ekyc/features/dashboard/presentation/providers/dashboard_page_number_notifier.dart';
import 'package:ekyc/features/dashboard/presentation/providers/dashboard_providers.dart';
import 'package:ekyc/features/profile/data/models/get_agent_details/response/get_agent_details_response_model.dart';
import 'package:ekyc/features/profile/presentation/providers/get_agent_details_provider.dart';
import 'package:ekyc/models/agent_application_model/agent_application_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

mixin AgentApplicationsMixin {
  Future<bool?> getAgentApplications({
    required BuildContext context,
    required WidgetRef ref,
    Function(List<AgentApplicationModel>)? onSuccess,
  }) async {
    final agentDetailsProvider = ref.watch(agentDetailsResponseProvider);
    final GetAgentDetailsResponseBody? agentDetails = agentDetailsProvider?.body?.responseBody;

    final String status = getFilterStatus(ref);

    final pageNumber = ref.watch(dashboardPageNumberNotifierProvider);
    final pageNumberNotifier = ref.read(dashboardPageNumberNotifierProvider.notifier);

    final GetAgentApplicationsRequestModel request = GetAgentApplicationsRequestModel(
      agentId: agentDetails?.agentId,
      rowsPerPage: 10,
      applicationSearch: ref.watch(searchKeywordProvider),
      pageNo: pageNumber,
      status: status,
    );

    // if (pageNumberNotifier.isFirstPage) {
    ref.watch(applicationListLoadingProvider.notifier).update((state) => true);
    // }
    ref.watch(applicationListErrorProvider.notifier).update((state) => false);

    final response = await getIt<GetAgentApplications>().call(request);

    bool? returnValue;

    response.fold(
      (failure) {
        debugPrint("failure: $failure");
        ref.watch(applicationListLoadingProvider.notifier).update((state) => false);
        ref.watch(applicationListErrorProvider.notifier).update((state) => true);

        context.showErrorSnackBar(message: Strings.globalErrorGenericMessageOne);
      },
      (GetAgentApplicationsResponseModel success) async {
        debugPrint("success: $success");
        if (success.status?.isSuccess == true) {
          // onSuccess
          if (success.body?.responseBody?.agentApplicationList != null) {
            final agentApplicationNotifier = ref.read(agentApplicationsNotifierProvider.notifier);

            if (pageNumberNotifier.isFirstPage) {
              agentApplicationNotifier.updateApplicationList(success.body?.responseBody?.agentApplicationList ?? []);
            } else {
              agentApplicationNotifier
                  .appendDataToApplicationList(success.body?.responseBody?.agentApplicationList ?? []);
            }

            if (onSuccess != null) {
              onSuccess(success.body?.responseBody?.agentApplicationList ?? []);
            }

            ref.watch(applicationListLoadingProvider.notifier).update((state) => false);
            ref.watch(applicationListErrorProvider.notifier).update((state) => false);
          }
        } else if (success.status?.isSuccess == false && success.status?.statusCode == ApiErrorCodes.listEmpty) {
          if (status.isNotEmpty) {
            context.showErrorSnackBar(
              message: success.status?.message ?? Strings.globalErrorGenericMessageOne,
            );

            ref.watch(applicationListLoadingProvider.notifier).update((state) => false);
            ref.watch(applicationListErrorProvider.notifier).update((state) => false);

            // call clear filter
            // if (clearFilter != null) {
            //   clearFilter();
            // }

            returnValue = false;
          }
          // final agentApplicationNotifier = ref.read(agentApplicationsNotifierProvider.notifier);

          // agentApplicationNotifier.updateApplicationList([]);

          // ref.watch(filterIncompleteIdProvider.notifier).update((state) => false);
          // ref.watch(filterIncompletePORProvider.notifier).update((state) => false);
          // ref.watch(filterIncompletePOAProvider.notifier).update((state) => false);
          // ref.watch(filterCompleteProvider.notifier).update((state) => false);

          // ref.read(dashboardPageNumberNotifierProvider.notifier).resetPageNumber();

          // await getAgentApplications(context: context, ref: ref);

          // ref.watch(applicationListLoadingProvider.notifier).update((state) => false);
          // ref.watch(applicationListErrorProvider.notifier).update((state) => false);

          // if (status.isEmpty && pageNumber == 1) {
          // } else {
          //   context.showErrorSnackBar(
          //     message: success.status?.message ?? Strings.globalErrorGenericMessageOne,
          //   );
          // }
        } else {
          ref.watch(applicationListLoadingProvider.notifier).update((state) => false);
          ref.watch(applicationListErrorProvider.notifier).update((state) => false);

          // context.showErrorSnackBar(
          //   message: success.status?.message ?? Strings.globalErrorGenericMessageOne,
          // );
        }
      },
    );
    return returnValue;
  }

  String getFilterStatus(WidgetRef ref) {
    final idMissing = ref.watch(filterIncompleteIdProvider);
    final porMissing = ref.watch(filterIncompletePORProvider);
    final poaMissing = ref.watch(filterIncompletePOAProvider);
    final completed = ref.watch(filterCompleteProvider);

    List<String> resultList = [];

    if (idMissing) {
      resultList.add(Strings.apiChipStatusIDMissing);
    }
    if (porMissing) {
      resultList.add(Strings.apiChipStatusPORMissing);
    }
    if (poaMissing) {
      resultList.add(Strings.apiChipStatusPOAMissing);
    }
    if (completed) {
      resultList.add(Strings.apiChipStatusCompleted);
    }

    return resultList.join(',');
  }

  void resetPageNumber(WidgetRef ref) {
    final pageNumberProvider = ref.read(dashboardPageNumberNotifierProvider.notifier);
    pageNumberProvider.resetPageNumber();
  }

  void incrementPageNumber(WidgetRef ref) {
    final pageNumberProvider = ref.read(dashboardPageNumberNotifierProvider.notifier);
    pageNumberProvider.incrementPageNumber();
  }
}
