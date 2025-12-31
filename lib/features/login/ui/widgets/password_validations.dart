import 'package:doctor_booking/core/theming/colors.dart';
import 'package:doctor_booking/core/theming/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

class PasswordValidations extends StatelessWidget {
  const PasswordValidations({
    super.key,
    required this.hasUppercase,
    required this.hasLowercase,
    required this.hasNumber,
    required this.hasSpecialCharacter,
    required this.hasMinLength,
  });

  final bool hasUppercase;
  final bool hasLowercase;
  final bool hasNumber;
  final bool hasSpecialCharacter;
  final bool hasMinLength;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        buildValidationText(hasUppercase, 'At least 1 uppercase letter'),
        Gap(2.h),
        buildValidationText(hasLowercase, 'At least 1 lowercase letter'),
        Gap(2.h),
        buildValidationText(hasNumber, 'At least 1 number'),
        Gap(2.h),
        buildValidationText(
          hasSpecialCharacter,
          'At least 1 special character',
        ),
        Gap(2.h),
        buildValidationText(hasMinLength, 'At least 8 characters'),
      ],
    );
  }

  Widget buildValidationText(bool hasValidation, String text) {
    return Row(
      children: [
        CircleAvatar(
          radius: 2.5.r,
          backgroundColor: hasValidation ? Colors.green : ColorsManager.grey,
        ),
        Gap(8.w),
        Text(
          text,
          style: TextStyles.font14DarkBlueRegular.copyWith(
            color: hasValidation ? Colors.green : ColorsManager.grey,
          ),
        ),
      ],
    );
  }
}
