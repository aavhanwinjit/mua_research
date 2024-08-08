import 'package:ekyc/core/app_export.dart';
import 'package:ekyc/features/dashboard/presentation/mixins/agent_applications_mixin.dart';
import 'package:ekyc/features/dashboard/presentation/providers/application_filters_providers.dart';
import 'package:ekyc/features/dashboard/presentation/providers/dashboard_page_number_notifier.dart';
import 'package:ekyc/features/dashboard/presentation/widgets/custom_checkbox_tile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class FilterBottomsheet extends ConsumerStatefulWidget {
  const FilterBottomsheet({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _FilterBottomsheetState();
}

class _FilterBottomsheetState extends ConsumerState<FilterBottomsheet> with AgentApplicationsMixin {
  bool idMissing = false;
  bool porMissing = false;
  bool poaMissing = false;
  bool completed = false;

  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) {
      setData();
    });
  }

  void setData() {
    idMissing = ref.watch(filterIncompleteIdProvider);
    porMissing = ref.watch(filterIncompletePORProvider);
    poaMissing = ref.watch(filterIncompletePOAProvider);
    completed = ref.watch(filterCompleteProvider);

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
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
            value: idMissing,
            onChanged: (value) {
              idMissing = !idMissing;
              setState(() {});
            },
            title: Strings.chipStatusIDMissing,
          ),
          CustomCheckboxTile(
            value: porMissing,
            onChanged: (value) {
              porMissing = !porMissing;
              setState(() {});
            },
            title: Strings.chipStatusPORMissing,
          ),
          CustomCheckboxTile(
            value: poaMissing,
            onChanged: (value) {
              poaMissing = !poaMissing;
              setState(() {});
            },
            title: Strings.chipStatusPOAMissing,
          ),
          CustomCheckboxTile(
            value: completed,
            onChanged: (value) {
              completed = !completed;
              setState(() {});
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
              onTap: _clearFilters,
              label: Strings.clearAll,
            ),
          ),
          SizedBox(width: 8.w),
          Flexible(
            flex: 3,
            child: CustomPrimaryButton(
              disable: !_isAnyFilterApplied(),
              onTap: _applyFilter,
              label: Strings.apply,
            ),
          ),
        ],
      ),
    );
  }

  bool _isAnyFilterApplied() {
    return idMissing || porMissing || poaMissing || completed;
  }

  void _applyFilter() async {
    ref.watch(filterIncompleteIdProvider.notifier).update((state) => idMissing);
    ref.watch(filterIncompletePORProvider.notifier).update((state) => porMissing);
    ref.watch(filterIncompletePOAProvider.notifier).update((state) => poaMissing);
    ref.watch(filterCompleteProvider.notifier).update((state) => completed);

    ref.read(dashboardPageNumberNotifierProvider.notifier).resetPageNumber();

    await getAgentApplications(
      context: context,
      ref: ref,
    );

    context.pop();
  }

  void _clearFilters() async {
    idMissing = false;
    porMissing = false;
    poaMissing = false;
    completed = false;

    setState(() {});

    ref.watch(filterIncompleteIdProvider.notifier).update((state) => false);
    ref.watch(filterIncompletePORProvider.notifier).update((state) => false);
    ref.watch(filterIncompletePOAProvider.notifier).update((state) => false);
    ref.watch(filterCompleteProvider.notifier).update((state) => false);

    ref.read(dashboardPageNumberNotifierProvider.notifier).resetPageNumber();

    await getAgentApplications(
      context: context,
      ref: ref,
    );

    context.pop();
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
            icon: const Icon(Icons.close),
          ),
        ],
      ),
    );
  }
}
