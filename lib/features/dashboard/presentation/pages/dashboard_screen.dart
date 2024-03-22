import 'package:ekyc/core/app_export.dart';
import 'package:ekyc/core/helpers/keyboard_helper.dart';
import 'package:ekyc/features/dashboard/data/models/get_agent_application/response/get_agent_applications_response_model.dart';
import 'package:ekyc/features/dashboard/presentation/mixins/agent_applications_mixin.dart';
import 'package:ekyc/features/dashboard/presentation/providers/agent_applications_notifier.dart';
import 'package:ekyc/features/dashboard/presentation/providers/dashboard_providers.dart';
import 'package:ekyc/features/dashboard/presentation/widgets/applicant_card.dart';
import 'package:ekyc/features/dashboard/presentation/widgets/bottomsheets/filter_bottomsheet.dart';
import 'package:ekyc/features/dashboard/presentation/widgets/bottomsheets/kyc_type_bottomsheet.dart';
import 'package:ekyc/features/dashboard/presentation/widgets/dashboard_loading_widget.dart';
import 'package:ekyc/features/dashboard/presentation/widgets/no_data_body.dart';
import 'package:ekyc/features/profile/data/models/get_agent_details/response/get_agent_details_response_model.dart';
import 'package:ekyc/features/profile/presentation/providers/get_agent_details_provider.dart';
import 'package:ekyc/widgets/custom_profile_image_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_scrolling_fab_animated/flutter_scrolling_fab_animated.dart';
import 'package:go_router/go_router.dart';

class DashboardScreen extends ConsumerStatefulWidget {
  const DashboardScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends ConsumerState<DashboardScreen> with AgentApplicationsMixin {
  final ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) {
      getAgentApplications(context: context, ref: ref);
    });
  }

  @override
  Widget build(BuildContext context) {
    final agentApplicationNotifier = ref.watch(agentApplicationsNotifierProvider.notifier);
    ref.watch(agentApplicationsNotifierProvider);

    final applicationListLoading = ref.watch(applicationListLoadingProvider);
    // final applicationListError = ref.watch(applicationListErrorProvider);

    return GestureDetector(
      onTap: () {
        KeyboardHelper.onScreenTap(context);
      },
      child: Scaffold(
        backgroundColor: disabledButtonColor,
        appBar: _appBar(),
        floatingActionButton: agentApplicationNotifier.haveApplications() ? _fab() : null,
        bottomNavigationBar: agentApplicationNotifier.haveNoApplications() ? _bottomNavBarWidget() : null,
        body: applicationListLoading == true
            ? const DashboardLoadingWidget()
            : agentApplicationNotifier.haveApplications()
                ? _bodyWidget()
                : const NoDataBody(),
      ),
    );
  }

  Widget _bodyWidget() {
    return SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _headingAndSearchBarWidget(),
          SizedBox(height: 25.h),
          _listView(),
        ],
      ),
    );
  }

  Widget _listView() {
    final agentApplicationNotifier = ref.watch(agentApplicationsNotifierProvider.notifier);
    ref.watch(agentApplicationsNotifierProvider);

    return Expanded(
      child: RefreshIndicator(
        onRefresh: () async {
          getAgentApplications(context: context, ref: ref);
        },
        child: ListView.separated(
          controller: _scrollController,
          padding: EdgeInsets.only(left: 20.w, right: 20.w, bottom: 80.h),
          itemBuilder: (context, index) {
            final AgentApplicationsModel application = agentApplicationNotifier.applications()[index];

            return ApplicantCard(application: application);
          },
          separatorBuilder: (context, index) => SizedBox(height: 16.h),
          itemCount: agentApplicationNotifier.applications().length,
        ),
      ),
    );
  }

  Widget _headingAndSearchBarWidget() {
    return Padding(
      padding: EdgeInsets.only(left: 20.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            Strings.applications,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20.sp,
              color: black,
            ),
          ),
          const SizedBox(height: 15),
          Row(
            children: [
              Expanded(
                child: CustomTextFormField(
                  label: Strings.searchApplicants,
                  suffixIcon: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: ImageIcon(
                      const AssetImage(ImageConstants.searchIcon),
                      color: iconColor,
                      size: MediaQuery.of(context).size.width > 480 ? 16.sp : 20.sp,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                ),
                child: IconButton(
                  onPressed: showFilterBottomSheet,
                  icon: ImageIcon(
                    const AssetImage(ImageConstants.sortIcon),
                    color: iconColor,
                    size: MediaQuery.of(context).size.width > 480 ? 25.sp : 20.sp,
                  ),
                ),
              ),
              const SizedBox(width: 40),
            ],
          ),
        ],
      ),
    );
  }

  Widget _fab() {
    return ScrollingFabAnimated(
      width: MediaQuery.of(context).size.width > 480 ? 125.w : 170.w,
      icon: Icon(
        Icons.add,
        color: Colors.white,
        size: 20.sp,
      ),
      text: Text(
        Strings.startKyc,
        style: TextStyle(
          color: white,
          fontSize: 16.sp,
          fontWeight: FontWeight.w700,
        ),
      ),
      onPress: showKYCStartBottomSheet,
      scrollController: _scrollController,
      animateIcon: true,
      inverted: false,
      radius: 10.0,
    );
  }

  Widget _bottomNavBarWidget() {
    return Padding(
      padding: EdgeInsets.all(20.w),
      child: CustomPrimaryButton(
        onTap: showKYCStartBottomSheet,
        label: Strings.startKyc,
      ),
    );
  }

  AppBar _appBar() {
    final GetAgentDetailsResponseModel? agentDetails = ref.watch(agentDetailsResponseProvider);

    String agentName = agentDetails?.body?.responseBody?.agentName ?? "NA";

    return AppBar(
      scrolledUnderElevation: 0,
      toolbarHeight: 60.h,
      title: InkWell(
        onTap: () {
          context.pushNamed(AppRoutes.profileScreen);
        },
        child: CustomProfileImageWidget(
          userName: agentName,
          size: 32.sp,
          fontSize: 12.sp,
        ),
      ),
      actions: [
        Image.asset(
          ImageConstants.pngLogo,
          width: 68.w,
        ),
        SizedBox(width: 20.w),
      ],
      systemOverlayStyle: const SystemUiOverlayStyle(
        // statusBarColor: Colors.red,
        statusBarIconBrightness: Brightness.dark, // For Android (dark icons)
        statusBarBrightness: Brightness.dark, // For iOS (dark icons)
      ),
    );
  }

  void showFilterBottomSheet() {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(24.sp),
          topRight: Radius.circular(24.sp),
        ),
      ),
      builder: (builder) {
        return const FilterBottomsheet();
      },
    );
  }

  void showKYCStartBottomSheet() {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(24.sp),
          topRight: Radius.circular(24.sp),
        ),
      ),
      builder: (builder) {
        return const KYCTypeBottomsheet();
      },
    );
  }
}
