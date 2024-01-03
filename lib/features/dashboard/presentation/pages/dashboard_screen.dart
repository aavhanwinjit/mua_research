import 'package:ekyc/core/app_export.dart';
import 'package:ekyc/core/constants/strings/strings_constants.dart';
import 'package:ekyc/core/helpers/keyboard_helper.dart';
import 'package:ekyc/features/dashboard/presentation/widgets/applicant_card.dart';
import 'package:ekyc/widgets/buttons/custom_primary_button.dart';
import 'package:ekyc/widgets/custom_profile_image_widget.dart';
import 'package:ekyc/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_scrolling_fab_animated/flutter_scrolling_fab_animated.dart';

class DashboardScreen extends ConsumerStatefulWidget {
  const DashboardScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends ConsumerState<DashboardScreen> {
  ScrollController _scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: GestureDetector(
        onTap: () {
          KeyboardHelper.onScreenTap(context);
        },
        child: Scaffold(
          backgroundColor: disabledButtonColor,
          appBar: _appBar(),
          floatingActionButton: _fab(),
          // bottomNavigationBar: _bottomNavBarWidget(),
          body: _bodyWidget(),
          // body: NoDataBody(),
        ),
      ),
    );
  }

  Widget _bodyWidget() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _headingAndSearchBarWidget(),
        SizedBox(height: 25.h),
        _listView(),
      ],
    );
  }

  Widget _listView() {
    return Expanded(
      child: ListView.separated(
        controller: _scrollController,
        padding: EdgeInsets.only(left: 20.w, right: 20.w, bottom: 80.h),
        itemBuilder: (context, index) {
          return ApplicantCard();
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
              Expanded(
                child: CustomTextFormField(
                  hint: Strings.searchApplicants,
                  suffixIcon: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: ImageIcon(
                      AssetImage(ImageConstants.searchIcon),
                      color: iconColor,
                    ),
                  ),
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: ImageIcon(
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
      icon: Icon(
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
      onPress: () {},
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
        onTap: () {},
        label: Strings.startKyc,
      ),
    );
  }

  AppBar _appBar() {
    return AppBar(
      scrolledUnderElevation: 0,
      title: CustomProfileImageWidget(
        userName: "Arjun Kumar",
        size: 32.w,
        fontSize: 12.sp,
      ),
      actions: [
        Image.asset(
          ImageConstants.pngLogo,
          width: 68.w,
        ),
        SizedBox(width: 20.w),
      ],
    );
  }
}
