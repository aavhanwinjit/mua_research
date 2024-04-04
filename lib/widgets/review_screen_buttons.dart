import 'package:ekyc/core/app_export.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ReviewScreenButtons extends ConsumerWidget {
  final Function() onExit;
  final Function() onNext;
  final bool? disable;
  final ProviderListenable<bool>? loadingProvider;

  const ReviewScreenButtons(
      {super.key, required this.onExit, required this.onNext, this.disable, this.loadingProvider});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    bool? loading;

    if (loadingProvider != null) {
      loading = ref.watch(loadingProvider!);
    }

    return loading == true
        ? const Center(
            child: CircularProgressIndicator(),
          )
        : Row(
            children: [
              Flexible(
                flex: 2,
                child: CustomOutlineButton(
                  disable: disable ?? false,
                  onTap: onExit,
                  label: Strings.saveAndExit,
                ),
              ),
              SizedBox(width: 8.w),
              Flexible(
                flex: 3,
                child: CustomPrimaryButton(
                  disable: disable ?? false,
                  onTap: onNext,
                  label: Strings.continueToUpload,
                ),
              ),
            ],
          );
  }
}
