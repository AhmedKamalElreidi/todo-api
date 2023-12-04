import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo_tast_app/core/helper/network/dio_helper.dart';
import 'package:todo_tast_app/feature/home/view_model/cubit/task_state.dart';

class TaskCubit extends Cubit<TaskState> {
  TaskCubit() : super(TaskInitial());

  getTask() async {
    emit(TaskLoadingState());
    try {
      await DioHelper().getTaskks().then((value) {
        emit(TaskSuccessState(getTaskModel: value!));
      });
    } catch (e) {
      emit(TaskErrorState(error: e.toString()));
    }
  }

  // final response = await DioHelper.getData(
  //     url: EndPoints.tasks, token: SecureVariables.token);
  // if (response.statusCode == 200) {

  //   emit(TaskSuccessState(getTaskModel: response.data));

  //   return response.data;

  //   //return GetTaskModel;
  // } else {
  //   emit(TaskErrorState(error: response.data["message"]));
  // }
  // return null;

  // getTaskss() async {
  //   emit(TaskLoadingState());
  //   try {
  //     await DioHelper().getTask().then((value) {
  //       emit(TaskSuccessState(getTaskModel: value!));
  //     });
  //   } catch (e) {
  //     emit(TaskErrorState(error: e.toString()));
  //   }
  // }
}
