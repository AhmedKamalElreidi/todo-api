import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo_tast_app/core/constant/end_points/end_points.dart';
import 'package:todo_tast_app/core/helper/network/dio_helper.dart';
import 'package:todo_tast_app/core/util/secure_keys/secure_variable.dart';
import 'package:todo_tast_app/feature/home/view_model/delete-cubit/delete_cubit_state.dart';

class DeleteCubitCubit extends Cubit<DeleteCubitState> {
  DeleteCubitCubit() : super(DeleteCubitInitial());
  static DeleteCubitCubit get(context) => BlocProvider.of(context);

  Future<void> deleteTask({required int id}) async {
    final response = await DioHelper.deleteData(
        url: EndPoints.deleteTask(id: id), token: SecureVariables.token);
    emit(DeleteCubitLoading());

    if (response.statusCode == 200) {
      emit(DeleteCubitSuccess());
    } else {
      emit(DeleteCubitErorr());
    }
  }
}
