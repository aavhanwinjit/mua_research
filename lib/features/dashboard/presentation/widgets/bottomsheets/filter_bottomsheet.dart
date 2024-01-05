import 'package:ekyc/core/app_export.dart';
import 'package:ekyc/core/constants/strings/strings_constants.dart';
import 'package:ekyc/features/dashboard/presentation/providers/filter_status_provider.dart';
import 'package:ekyc/features/dashboard/presentation/widgets/custom_checkbox_tile.dart';
import 'package:ekyc/widgets/buttons/custom_primary_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class FilterBottomsheet extends ConsumerStatefulWidget {
  const FilterBottomsheet({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _FilterBottomsheetState();
}

class _FilterBottomsheetState extends ConsumerState<FilterBottomsheet> {
  @override
  Widget build(BuildContext context) {
    final filterIncompleteId = ref.watch(filterIncompleteIdProvider);
    final filterIncompletePOR = ref.watch(filterIncompletePORProvider);
    final filterIncompletePOA = ref.watch(filterIncompletePOAProvider);
    final filterComplete = ref.watch(filterCompleteProvider);

    return Container(
      color: white,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _titleWithCloseButton(),
          SizedBox(height: 10.h),
          _headingWidget(),
          CustomCheckboxTile(
            value: filterIncompleteId,
            onChanged: (value) {
              ref.watch(filterIncompleteIdProvider.notifier).update((state) => !state);
            },
            title: Strings.chipStatusIDMissing,
          ),
          CustomCheckboxTile(
            value: filterIncompletePOR,
            onChanged: (value) {
              ref.watch(filterIncompletePORProvider.notifier).update((state) => !state);
            },
            title: Strings.chipStatusPORMissing,
          ),
          CustomCheckboxTile(
            value: filterIncompletePOA,
            onChanged: (value) {
              ref.watch(filterIncompletePOAProvider.notifier).update((state) => !state);
            },
            title: Strings.chipStatusPOAMissing,
          ),
          CustomCheckboxTile(
            value: filterComplete,
            onChanged: (value) {
              ref.watch(filterCompleteProvider.notifier).update((state) => !state);
            },
            title: Strings.chipStatusCompleted,
          ),
          _buttons(),
        ],
      ),
    );
  }

  Widget _headingWidget() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w),
      child: Text(
        Strings.status.toUpperCase(),
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 12.sp,
          color: textGrayColor2,
        ),
      ),
    );
  }

  Widget _buttons() {
    return Padding(
      padding: EdgeInsets.all(20.w),
      child: Row(
        children: [
          Flexible(
            flex: 2,
            child: CustomOutlineButton(
              disable: false,
              onTap: () {},
              label: Strings.clearAll,
            ),
          ),
          SizedBox(width: 8.w),
          Flexible(
            flex: 3,
            child: CustomPrimaryButton(
              disable: false,
              onTap: () {},
              label: Strings.apply,
            ),
          ),
        ],
      ),
    );
  }

  Widget _titleWithCloseButton() {
    return Padding(
      padding: EdgeInsets.only(left: 20.w, top: 15.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            Strings.filter,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 22.sp,
              color: black,
            ),
          ),
          IconButton(
            onPressed: () {
              context.pop();
            },
            icon: Icon(Icons.close),
          ),
        ],
      ),
    );
  }
}
