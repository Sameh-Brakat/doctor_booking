import 'package:doctor_booking/core/networking/api_result.dart';
import 'package:doctor_booking/features/login/data/repos/login_repo.dart';
import 'package:doctor_booking/features/login/logic/cubit/login_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:doctor_booking/features/login/data/models/login_request_body.dart';

class LoginCubit extends Cubit<LoginState> {
  final LoginRepo _loginRepo;
  LoginCubit(this._loginRepo) : super(LoginState.initial());

  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  Future<void> emitLoginStates(LoginRequestBody loginRequestBody) async {
    emit(LoginState.loading());
    final result = await _loginRepo.login(loginRequestBody);
    result.when(
      success: (loginResponse) {
        emit(LoginState.success(loginResponse));
      },
      failure: (error) {
        emit(LoginState.error(error: error.apiErrorModel.message));
      },
    );
  }
}
