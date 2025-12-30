import 'package:doctor_booking/core/theming/styles.dart';
import 'package:doctor_booking/core/widgets/app_text_button.dart';
import 'package:doctor_booking/core/widgets/app_text_form_field.dart';
import 'package:doctor_booking/features/login/ui/widgets/already_have_account_text.dart';
import 'package:doctor_booking/features/login/ui/widgets/terms_and_conditions_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  bool isObscureText = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 24,
            vertical: 50.h,
          ).copyWith(bottom: 0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: .start,
              children: [
                Padding(
                  padding: .symmetric(horizontal: 8),
                  child: Column(
                    crossAxisAlignment: .start,
                    children: [
                      Text('Welcome Back', style: TextStyles.font24BlueBold),
                      Gap(8.h),
                      Text(
                        "We're excited to have you back, can't wait to see what you've been up to since you last logged in.",
                        style: TextStyles.font14GreyRegular,
                      ),
                    ],
                  ),
                ),
                Gap(36.h),
                Form(
                  key: formKey,
                  child: Column(
                    children: [
                      AppTextFormField(
                        hintText: 'Email',
                        keyboardType: TextInputType.emailAddress,
                      ),
                      Gap(16.h),
                      AppTextFormField(
                        hintText: 'Password',
                        keyboardType: TextInputType.visiblePassword,
                        isObscureText: isObscureText,
                        suffixIcon: GestureDetector(
                          onTap: () {
                            setState(() {
                              isObscureText = !isObscureText;
                            });
                          },
                          child: Icon(
                            isObscureText
                                ? Icons.visibility
                                : Icons.visibility_off,
                          ),
                        ),
                      ),
                      Gap(25.h),
                      Align(
                        alignment: Alignment.centerRight,
                        child: Text(
                          'Forgot Password?',
                          style: TextStyles.font12BlueRegular,
                        ),
                      ),
                      Gap(40.h),
                      AppTextButton(
                        text: 'Login',
                        textStyle: TextStyles.font16WhiteSemiBold,
                        onPressed: () {},
                      ),
                      Gap(16.h),
                      TermsAndConditionsText(),
                      Gap(60.h),
                      AlreadyHaveAccountText(),
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
