import 'package:doctor_booking/core/theming/styles.dart';
import 'package:doctor_booking/core/widgets/app_text_button.dart';
import 'package:doctor_booking/features/login/data/models/login_request_body.dart';
import 'package:doctor_booking/features/login/logic/cubit/login_cubit.dart';
import 'package:doctor_booking/features/login/ui/widgets/already_have_account_text.dart';
import 'package:doctor_booking/features/login/ui/widgets/email_and_password.dart';
import 'package:doctor_booking/features/login/ui/widgets/login_bloc_listener.dart';
import 'package:doctor_booking/features/login/ui/widgets/terms_and_conditions_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

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
                  padding: .symmetric(horizontal: 8.w),
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
                Column(
                  children: [
                    const EmailAndPassword(),
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
                      onPressed: () {
                        validateThenDoLogin(context);
                      },
                    ),
                    Gap(16.h),
                    TermsAndConditionsText(),
                    Gap(60.h),
                    AlreadyHaveAccountText(),
                    const LoginBlocListener(),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void validateThenDoLogin(BuildContext context) {
    if (context.read<LoginCubit>().formKey.currentState!.validate()) {
      context.read<LoginCubit>().emitLoginStates(
        LoginRequestBody(
          email: context.read<LoginCubit>().emailController.text,
          password: context.read<LoginCubit>().passwordController.text,
        ),
      );
    }
  }
}
