import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'package:todo_tast_app/core/constant/end_points/end_points.dart';
import 'package:todo_tast_app/core/helper/network/dio_helper.dart';
import 'package:todo_tast_app/core/util/secure_keys/secure_variable.dart';
import 'package:todo_tast_app/feature/update_task/view_model/cubit/update_state.dart';
import 'package:todo_tast_app/feature/update_task/view_model/model/singletaskmodel/singletaskmodel.dart';

class UpdateCubit extends Cubit<UpdateState> {
  UpdateCubit() : super(UpdateInitial());
  var titleController = TextEditingController();
  var descriptionController = TextEditingController();
  var startDateController = TextEditingController();
  var endDateController = TextEditingController();

  var formKey = GlobalKey<FormState>();
  static UpdateCubit get(context) => BlocProvider.of(context);

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

  //AllTasksModel? allTaskModel;
  Singletaskmodel? singletaskmodel;

  Future<void> getSingleTask(int id) async {
    // AllTasksModel? allTasksModel;
    singletaskmodel = null;
    emit(SingleTaskLoadingState());
    final response = await DioHelper.getData(
        url: EndPoints.singleTask(id: id), token: SecureVariables.token);
    if (response.statusCode == 200) {
      singletaskmodel = Singletaskmodel.fromJson(response.data);

      titleController.text = singletaskmodel!.data!.title!;
      descriptionController.text = singletaskmodel!.data!.description!;
      startDateController.text = singletaskmodel!.data!.startDate!;
      endDateController.text = singletaskmodel!.data!.endDate!;

      emit(SingleTaskSuccessState(singletaskmodel!));
    } else {
      emit(SingleTaskErrorState(error: response.data["message"]));
    }
  }

  Future<void> updateTask({
    required String title,
    required String description,
    required String startDate,
    required String endDate,
    required int id,
  }) async {
    emit(UpdateTaskLoadingState());

    final response = await DioHelper.postData(
        url: EndPoints.singleTask(id: id),
        token: SecureVariables.token,
        data: {
          "_method": "PUt",
          "title": title,
          "description": description,
          "start_date": startDate,
          "end_date": endDate,
          // "image": image,
          "status": "new",
        });
    print("response${response.data}");
    if (response.statusCode == 200) {
      emit(UpdateTaskSuccessState());
    } else {
      emit(UpdateTaskErrorState());
    }
  }
}
