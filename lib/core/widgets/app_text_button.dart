import 'package:doctor_booking/core/theming/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppTextButton extends StatelessWidget {
  const AppTextButton({
    super.key,
    required this.onPressed,
    required this.text,
    required this.textStyle,
    this.borderRadius,
    this.backgroundColor,
    this.horizontalPadding,
    this.verticalPadding,
    this.buttonWidth,
    this.buttonHeight,
  });

  final VoidCallback onPressed;
  final String text;
  final TextStyle textStyle;
  final double? borderRadius;
  final Color? backgroundColor;
  final double? horizontalPadding;
  final double? verticalPadding;
  final double? buttonWidth;
  final double? buttonHeight;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      style: ButtonStyle(
        padding: WidgetStatePropertyAll(
          .symmetric(
            horizontal: horizontalPadding?.w ?? 0,
            vertical: verticalPadding?.h ?? 0,
          ),
        ),
        tapTargetSize: .shrinkWrap,
        shape: WidgetStatePropertyAll(
          RoundedRectangleBorder(
            borderRadius: .circular(borderRadius?.r ?? 16.r),
          ),
        ),
        minimumSize: WidgetStatePropertyAll(
          Size(buttonWidth?.w ?? double.infinity, buttonHeight?.h ?? 52.h),
        ),
        backgroundColor: WidgetStatePropertyAll(
          backgroundColor ?? ColorsManager.mainBlue,
        ),
      ),
      child: Text(text, style: textStyle),
    );
  }
}
