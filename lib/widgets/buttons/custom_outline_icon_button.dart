import 'package:ekyc/core/app_export.dart';
import 'package:flutter/material.dart';

class CustomOutlineIconButton extends StatelessWidget {
  final String label;
  final VoidCallback? onTap;
  final double? height;
  final double? width;
  final bool? disable;
  final bool? primary;
  final String iconString;
  final bool? loading;

  const CustomOutlineIconButton({
    super.key,
    required this.label,
    this.onTap,
    this.height,
    this.width,
    this.disable = false,
    this.primary = true,
    required this.iconString,
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
        side: BorderSide(
          color: primary == true ? primaryColor : white,
        ),
        borderRadius: BorderRadius.circular(100),
      ),
      onPressed: loading == true
          ? () {}
          : disable == false
              ? onTap
              : null,
      child: _animatedButton(),
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

  Widget _buttonTitle() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ImageIcon(
          AssetImage(iconString),
          color: primaryColor,
        ),
        const SizedBox(width: 5),
        Text(
          label,
          style: TextStyle(
            color: primary == true ? primaryColor : white,
            fontSize: 16.sp,
            fontWeight: FontWeight.w700,
          ),
        ),
      ],
    );
  }

  Widget _loader() {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          height: 20,
          width: 20,
          child: CircularProgressIndicator(
            strokeWidth: 2,
            backgroundColor: white,
          ),
        ),
      ],
    );
  }
}
