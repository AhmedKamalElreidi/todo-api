// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:todo_tast_app/core/util/app_functions/app_functions.dart';
import 'package:todo_tast_app/core/util/app_validator/app_validator.dart';
import 'package:todo_tast_app/core/util/widgets/bottom_widget/bottom_widget.dart';
import 'package:todo_tast_app/core/util/widgets/text_form_field_widget/text_form_field_widget.dart';
import 'package:todo_tast_app/feature/home/view/home_screen.dart';
import 'package:todo_tast_app/feature/update_task/view_model/cubit/update_cubit.dart';
import 'package:todo_tast_app/feature/update_task/view_model/cubit/update_state.dart';

import '../../../core/util/widgets/app_bar_widget/app_bar_widget.dart';

class UpdateTaskScreen extends StatelessWidget {
  final int id;

  const UpdateTaskScreen({
    Key? key,
    required this.id,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppBarWidget(title: "Update Task"),
      body: BlocProvider(
        create: (context) => UpdateCubit()..getSingleTask(id),
        child: BlocConsumer<UpdateCubit, UpdateState>(
          listener: (context, state) {
            if (state is UpdateTaskLoadingState) {
              const Center(child: CircularProgressIndicator());
            }
            if (state is UpdateTaskSuccessState) {
              //TaskCubit.get(context).getTask();
              AppFunctions.showToast(text: " Task Updated");
              AppFunctions.navigateTo(
                  context: context, navigatedScreen: const HomeScreen());
            }
          },
          builder: (context, state) {
            var cubit = UpdateCubit.get(context);

            return Padding(
              padding: EdgeInsets.all(15.r),
              child: Form(
                key: cubit.formKey,
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      TextFormFieldWidget(
                        hintText: "Title",
                        keyboardType: TextInputType.text,
                        controller: cubit.titleController,
                        // onFieldSubmitted: (value) {
                        //   value = cubit.titleController.text;
                        // },
                        // onChanged: (value) {
                        //   value = singletaskmodel.data!.title!;
                        // },
                        validator: AppValidators.generalValidator(),
                      ),
                      SizedBox(
                        height: 15.h,
                      ),
                      TextFormFieldWidget(
                        hintText: "Description",
                        controller: cubit.descriptionController,
                        keyboardType: TextInputType.text,
                        validator: AppValidators.generalValidator(),
                      ),
                      SizedBox(
                        height: 15.h,
                      ),
                      TextFormFieldWidget(
                        hintText: "Start Date",
                        controller: cubit.startDateController,
                        keyboardType: TextInputType.none,
                        onTap: () {
                          AppFunctions.showDatePickerComponent(context: context)
                              .then((value) {
                            cubit.startDateController.text = value;
                          });
                        },
                        validator: AppValidators.generalValidator(),
                      ),
                      SizedBox(
                        height: 15.h,
                      ),
                      TextFormFieldWidget(
                        hintText: "End Date",
                        keyboardType: TextInputType.none,
                        onTap: () {
                          AppFunctions.showDatePickerComponent(context: context)
                              .then((value) {
                            cubit.endDateController.text = value;
                          });
                        },
                        controller: cubit.endDateController,
                        validator: AppValidators.generalValidator(),
                      ),
                      SizedBox(
                        height: 15.h,
                      ),
                      InkWell(
                        onTap: () {
                          cubit.getImage();
                        },
                        child: Container(
                          width: double.infinity,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.r),
                              border: Border.all(color: Colors.grey)),
                          child: cubit.image != null
                              ? Image.file(cubit.image!)
                              : Padding(
                                  padding: EdgeInsets.all(20.r),
                                  child: Column(
                                    children: [
                                      const Icon(
                                        Icons.image,
                                        size: 120,
                                      ),
                                      Text(
                                        "Add photo to your notes",
                                        style: TextStyle(
                                            fontSize: 14.sp,
                                            fontWeight: FontWeight.w500,
                                            color: Colors.grey),
                                      )
                                    ],
                                  ),
                                ),
                        ),
                      ),
                      SizedBox(
                        height: 15.h,
                      ),
                      BottomWidget(
                          text: "Update Task",
                          onTap: () {
                            if (cubit.formKey.currentState!.validate()) {
                              cubit.updateTask(
                                id: id,
                                title: cubit.titleController.text,
                                description: cubit.descriptionController.text,
                                startDate: cubit.startDateController.text,
                                endDate: cubit.endDateController.text,
                              );
                            }
                          })
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
