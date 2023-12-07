import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo_tast_app/core/constant/end_points/end_points.dart';
import 'package:todo_tast_app/core/helper/network/dio_helper.dart';
import 'package:todo_tast_app/core/helper/secure_storage/secure_storage.dart';
import 'package:todo_tast_app/core/util/secure_keys/secure_key.dart';
import 'package:todo_tast_app/feature/login/view_model/login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit() : super(LoginInitial());
  static LoginCubit get(context) => BlocProvider.of(context);

  var emailController = TextEditingController();
  var passwordController = TextEditingController();
  var formKey = GlobalKey<FormState>();

  Future login({required String email, required String password}) async {
    emit(LoginLoadingState());
    final response = await DioHelper.postData(url: EndPoints.login, data: {
      "email": email,
      "password": password,
    });
    if (response.statusCode == 200) {
      // if( response.data["data"]["token"] == ){}
      SecureStorage.saveData(
          key: SecureKey.token, value: response.data["data"]["token"]);
      emit(LoginSuccessState());
    } else {
      emit(LoginErrorState(error: response.data["message"]));
    }
  }
}
