import 'package:ekyc/core/app_export.dart';
import 'package:ekyc/core/helpers/keyboard_helper.dart';
import 'package:ekyc/features/dashboard/presentation/widgets/applicant_card.dart';
import 'package:ekyc/features/dashboard/presentation/widgets/bottomsheets/filter_bottomsheet.dart';
import 'package:ekyc/features/dashboard/presentation/widgets/bottomsheets/kyc_type_bottomsheet.dart';
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

class _DashboardScreenState extends ConsumerState<DashboardScreen> {
  final ScrollController _scrollController = ScrollController();
  final bool _listEmpty = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        KeyboardHelper.onScreenTap(context);
      },
      child: Scaffold(
        backgroundColor: disabledButtonColor,
        appBar: _appBar(),
        floatingActionButton: _fab(),
        bottomNavigationBar: _listEmpty ? _bottomNavBarWidget() : null,
        body: _bodyWidget(),
        // body: NoDataBody(),
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
    return Expanded(
      child: ListView.separated(
        controller: _scrollController,
        padding: EdgeInsets.only(left: 20.w, right: 20.w, bottom: 80.h),
        itemBuilder: (context, index) {
          return const ApplicantCard();
        },
        separatorBuilder: (context, index) => SizedBox(height: 16.h),
        itemCount: 10,
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
          SizedBox(height: 16.h),
          Row(
            children: [
              const Expanded(
                child: CustomTextFormField(
                  label: Strings.searchApplicants,
                  suffixIcon: Padding(
                    padding: EdgeInsets.all(15.0),
                    child: ImageIcon(
                      AssetImage(ImageConstants.searchIcon),
                      color: iconColor,
                    ),
                  ),
                ),
              ),
              IconButton(
                onPressed: showFilterBottomSheet,
                icon: const ImageIcon(
                  AssetImage(ImageConstants.sortIcon),
                  color: iconColor,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _fab() {
    return ScrollingFabAnimated(
      width: 170,
      icon: const Icon(
        Icons.add,
        color: Colors.white,
      ),
      text: Text(
        Strings.startKyc,
        style: TextStyle(
          color: white,
          fontSize: 16.sp,
          fontWeight: FontWeight.w800,
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
    return AppBar(
      scrolledUnderElevation: 0,
      title: InkWell(
        onTap: () {
          context.pushNamed(AppRoutes.profileScreen);
        },
        child: CustomProfileImageWidget(
          userName: "Arjun Kumar",
          size: 32.w,
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
