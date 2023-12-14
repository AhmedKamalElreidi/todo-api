import 'package:todo_tast_app/feature/update_task/view_model/model/singletaskmodel/singletaskmodel.dart';

class UpdateState {}

final class UpdateInitial extends UpdateState {}

final class UpdateTaskLoadingState extends UpdateState {}

final class UpdateTaskSuccessState extends UpdateState {}

final class UpdateTaskErrorState extends UpdateState {}

class GetImageFromGallerySuccessState extends UpdateState {}

final class SingleTaskLoadingState extends UpdateState {}

final class SingleTaskSuccessState extends UpdateState {
  // final AllTasksModel allTaskModel;
  final Singletaskmodel singletaskmodel;

  SingleTaskSuccessState(this.singletaskmodel);
}

final class SingleTaskErrorState extends UpdateState {
  final String error;

  SingleTaskErrorState({required this.error});
}
