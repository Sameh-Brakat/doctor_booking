import 'package:doctor_booking/core/helpers/extentions.dart';
import 'package:doctor_booking/core/routing/routes.dart';
import 'package:doctor_booking/core/theming/colors.dart';
import 'package:doctor_booking/core/theming/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class GetStartedBottom extends StatelessWidget {
  const GetStartedBottom({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        context.pushNamed(Routes.loginScreen);
      },
      style: ButtonStyle(
        tapTargetSize: .shrinkWrap,
        shape: WidgetStatePropertyAll(
          RoundedRectangleBorder(borderRadius: .circular(16.r)),
        ),
        minimumSize: WidgetStatePropertyAll(Size(double.infinity, 52.h)),
        backgroundColor: WidgetStatePropertyAll(ColorsManager.mainBlue),
      ),
      child: Text('Get Started', style: TextStyles.font16WhiteSemiBold),
    );
  }
}
