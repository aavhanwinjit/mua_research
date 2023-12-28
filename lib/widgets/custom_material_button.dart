import 'package:flutter/material.dart';

class CustomMaterialButton extends StatelessWidget {
  final Color btnColor;
  final VoidCallback callback;
  final String btnText;
  final Color btnTextColor;
  final double borderRadius;
  const CustomMaterialButton({
    required this.btnColor,
    required this.callback,
    required this.btnText,
    required this.btnTextColor,
    this.borderRadius = 100.0,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      elevation: 0,
      color: btnColor,
      height: 60,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(borderRadius),
      ),
      onPressed: callback,
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Text(
          btnText,
          style: TextStyle(
            color: btnTextColor,
            fontSize: 16,
            fontWeight: FontWeight.w800,
          ),
        ),
      ),
    );
  }
}
