import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo_tast_app/core/constant/end_points/end_points.dart';
import 'package:todo_tast_app/core/helper/network/dio_helper.dart';
import 'package:todo_tast_app/core/util/secure_keys/secure_variable.dart';
import 'package:todo_tast_app/feature/home/view_model/logout_cubit/logout_state.dart';

class LogoutCubit extends Cubit<LogoutState> {
  LogoutCubit() : super(LogoutInitial());
  static LogoutCubit get(context) => BlocProvider.of(context);

  Future<void> logout() async {
    emit(LogoutLoadingState());
    final response = await DioHelper.postData(
        url: EndPoints.logout, token: SecureVariables.token);
    if (response.statusCode == 200) {
      emit(LogoutSuccessState(message: response.data["message"]));
    } else {
      emit(LogoutErrorState(error: response.data["message"]));
    }
  }
}
