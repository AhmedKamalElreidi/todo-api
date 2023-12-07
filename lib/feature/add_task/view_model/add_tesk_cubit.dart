import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'package:todo_tast_app/core/helper/network/dio_helper.dart';
import 'package:todo_tast_app/core/util/secure_keys/secure_variable.dart';

import 'add_tesk_state.dart';

class AddTaskCubit extends Cubit<AddTaskState> {
  AddTaskCubit() : super(AddTaskInitial());

  static AddTaskCubit get(context) => BlocProvider.of(context);

  var titleController = TextEditingController();
  var descriptionController = TextEditingController();
  var startDateController = TextEditingController();
  var endDateController = TextEditingController();

  var formKey = GlobalKey<FormState>();

  File? image;

  ImagePicker imagePicker = ImagePicker();
  Future<void> getImage() async {
    XFile? selectedImage =
        await imagePicker.pickImage(source: ImageSource.gallery);
    if (selectedImage != null) {
      image = File(selectedImage.path);
      emit(GetImageFromGallerySuccessState());
    }
  }

  Future<void> addTask({
    required String title,
    required String description,
    required String startDate,
    required String endDate,
  }) async {
    emit(AddTaskLoadingState());

    final response = await DioHelper.postData(
        url: "tasks",
        token: SecureVariables.token,
        data: {
          "title": title,
          "description": description,
          "start_date": startDate,
          "end_date": endDate,
          // "image": image,
          "status": "new",
        });
    print("response${response.data}");
    if (response.statusCode == 200) {
      emit(AddTaskSuccessState());
    } else {
      emit(AddTaskErrorState());
    }
  }
}
