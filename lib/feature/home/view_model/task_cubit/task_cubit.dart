import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo_tast_app/core/allTasksModel/all_tasks_model.dart';
import 'package:todo_tast_app/core/constant/end_points/end_points.dart';
import 'package:todo_tast_app/core/helper/network/dio_helper.dart';
import 'package:todo_tast_app/core/util/secure_keys/secure_variable.dart';
import 'package:todo_tast_app/feature/home/view_model/task_cubit/task_state.dart';

class TaskCubit extends Cubit<TaskState> {
  TaskCubit() : super(TaskInitial());

  static TaskCubit get(context) => BlocProvider.of(context);

  AllTasksModel? allTaskModel;

  Future<void> getTask() async {
    // AllTasksModel? allTasksModel;
    allTaskModel = null;
    emit(TaskLoadingState());
    final response = await DioHelper.getData(
        url: EndPoints.tasks, token: SecureVariables.token);
    if (response.statusCode == 200) {
      allTaskModel = AllTasksModel.fromJson(response.data);
      emit(TaskSuccessState(allTaskModel!));
    } else {
      emit(TaskErrorState(error: response.data["message"]));
    }
  }

  // getTask() async {
  //   emit(TaskLoadingState());
  //   try {
  //     await DioHelper().getTaskks().then((value) {
  //       emit(TaskSuccessState(getTaskModel: value!));
  //     });
  //   } catch (e) {
  //     emit(TaskErrorState(error: e.toString()));
  //   }
  // }
  // if (response.statusCode == 200) {
  //       return AllTasksModel.fromJson(response.data);
  //     }

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
