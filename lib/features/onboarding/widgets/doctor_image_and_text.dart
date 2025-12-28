import 'package:doctor_booking/core/theming/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class DoctorImageAndText extends StatelessWidget {
  const DoctorImageAndText({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SvgPicture.asset('assets/svgs/logo-low-opacity.svg'),
        Container(
          foregroundDecoration: BoxDecoration(
            gradient: LinearGradient(
              begin: .bottomCenter,
              end: .topCenter,
              stops: const [0.14, 0.4],
              colors: [Colors.white, Colors.white.withAlpha(0)],
            ),
          ),
          child: Image.asset('assets/images/onboarding-doctor.png'),
        ),
        Positioned(
          bottom: 13.h,
          left: 0,
          right: 0,
          child: Text(
            'Best Doctor\nAppointment App',
            style: TextStyles.font32BlueBold,
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }
}
