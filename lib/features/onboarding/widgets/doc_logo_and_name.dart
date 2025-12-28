import 'package:doctor_booking/core/theming/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';

class DocLogoAndName extends StatelessWidget {
  const DocLogoAndName({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: .center,
      children: [
        SvgPicture.asset('assets/svgs/logo.svg'),
        Gap(8.w),
        Text('Docdoc', style: TextStyles.font24BlackBold),
      ],
    );
  }
}
