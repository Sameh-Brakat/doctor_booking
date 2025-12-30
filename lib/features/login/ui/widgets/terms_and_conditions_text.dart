import 'package:doctor_booking/core/theming/styles.dart';
import 'package:flutter/material.dart';

class TermsAndConditionsText extends StatelessWidget {
  const TermsAndConditionsText({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: .center,
      text: TextSpan(
        children: [
          TextSpan(
            text: 'By logging, you agree to our',
            style: TextStyles.font14GreyRegular,
          ),
          TextSpan(
            text: ' Terms & Conditions',
            style: TextStyles.font14DarkBlueRegular,
          ),
          TextSpan(text: ' and ', style: TextStyles.font14GreyRegular),
          TextSpan(
            text: 'Privacy Policy',
            style: TextStyles.font14DarkBlueRegular,
          ),
        ],
      ),
    );
  }
}
