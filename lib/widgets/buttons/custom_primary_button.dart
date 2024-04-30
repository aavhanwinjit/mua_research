import 'package:ekyc/core/constants/color/color_constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomPrimaryButton extends StatelessWidget {
  final String label;
  final VoidCallback onTap;
  final VoidCallback? disabledOnTap;
  final double? height;
  final double? width;
  final bool? disable;
  final bool? loading;

  const CustomPrimaryButton({
    super.key,
    required this.label,
    required this.onTap,
    this.height,
    this.width,
    this.disable = false,
    this.disabledOnTap,
    this.loading = false,
  });

  @override
  Widget build(BuildContext context) {
    return _button();
  }

  Widget _button() {
    return MaterialButton(
      elevation: 0,
      height: 60.h,
      minWidth: double.infinity,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(100),
      ),
      color: disable == false ? primaryColor : disabledButtonColor,
      onPressed: loading == true
          ? () {}
          : disable == false
              ? onTap
              : disabledOnTap ?? () {},
      child: _animatedButton(),
    );
  }

  Widget _buttonTitle() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          label,
          style: TextStyle(
            color: disable == false ? white : textGrayColor,
            fontSize: 16.sp,
            fontWeight: FontWeight.w700,
          ),
        ),
      ],
    );
  }

  Widget _animatedButton() {
    return AnimatedSwitcher(
      duration: const Duration(milliseconds: 200),
      transitionBuilder: (Widget child, Animation<double> animation) {
        return SizeTransition(
          sizeFactor: animation,
          child: child,
        );
      },
      child: loading == true ? _loader() : _buttonTitle(),
    );
  }

  Widget _loader() {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: EdgeInsets.all(2.0),
          child: SizedBox(
            height: 25,
            width: 25,
            child: CircularProgressIndicator(
              strokeWidth: 2,
              backgroundColor: white,
            ),
          ),
        ),
      ],
    );
  }
}
