import 'package:todo_tast_app/core/get_task_model/get_task_model.dart';

class TaskState {}

final class TaskInitial extends TaskState {}

final class TaskLoadingState extends TaskState {}

final class TaskSuccessState extends TaskState {
  final GetTaskModel getTaskModel;

  TaskSuccessState({required this.getTaskModel});
}

final class TaskErrorState extends TaskState {
  final String error;

  TaskErrorState({required this.error});
}
