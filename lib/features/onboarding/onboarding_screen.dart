import 'package:doctor_booking/core/theming/styles.dart';
import 'package:doctor_booking/features/onboarding/widgets/doc_logo_and_name.dart';
import 'package:doctor_booking/features/onboarding/widgets/doctor_image_and_text.dart';
import 'package:doctor_booking/features/onboarding/widgets/get_started_bottom.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(top: 30.h, bottom: 30.h),
            child: Column(
              children: [
                DocLogoAndName(),
                Gap(41.h),
                DoctorImageAndText(),
                Gap(18.h),
                Padding(
                  padding: .symmetric(horizontal: 32.w),
                  child: Column(
                    children: [
                      Text(
                        'Manage and schedule all of your medical appointments easily with Docdoc to get a new experience.',
                        style: TextStyles.font12GreyRegular,
                        textAlign: TextAlign.center,
                      ),
                      Gap(32.h),
                      GetStartedBottom(),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
