import 'package:todo_tast_app/core/allTasksModel/all_tasks_model.dart';

class TaskState {}

final class TaskInitial extends TaskState {}

final class TaskLoadingState extends TaskState {}

final class TaskSuccessState extends TaskState {
  final AllTasksModel allTasksModel;

  TaskSuccessState(this.allTasksModel);
}

final class TaskErrorState extends TaskState {
  final String error;

  TaskErrorState({required this.error});
}
