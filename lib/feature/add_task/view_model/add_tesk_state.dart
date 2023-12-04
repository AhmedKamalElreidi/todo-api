abstract class AddTaskState {}

class AddTaskInitial extends AddTaskState {}

class AddTaskLoadingState extends AddTaskState {}

class AddTaskSuccessState extends AddTaskState {}

class AddTaskErrorState extends AddTaskState {}

class GetImageFromGallerySuccessState extends AddTaskState {}
