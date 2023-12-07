import 'package:animated_conditional_builder/animated_conditional_builder.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:todo_tast_app/core/helper/secure_storage/secure_storage.dart';
import 'package:todo_tast_app/core/util/app_functions/app_functions.dart';
import 'package:todo_tast_app/core/util/secure_keys/secure_key.dart';
import 'package:todo_tast_app/core/util/secure_keys/secure_variable.dart';
import 'package:todo_tast_app/core/util/widgets/bottom_widget/bottom_widget.dart';
import 'package:todo_tast_app/core/util/widgets/text_form_field_widget/text_form_field_widget.dart';
import 'package:todo_tast_app/feature/login/view_model/login_cubit.dart';
import 'package:todo_tast_app/feature/login/view_model/login_state.dart';
import 'package:todo_tast_app/feature/register/view/register_screen.dart';

import '../../../core/util/app_images/app_images.dart';
import '../../home/view/home_screen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: BlocProvider(
        create: (context) => LoginCubit(),
        child: BlocConsumer<LoginCubit, LoginState>(
          listener: (context, state) async {
            if (state is LoginErrorState) {
              AppFunctions.showToast(text: state.error);
            }
            if (state is LoginSuccessState) {
              SecureVariables.token =
                  await SecureStorage.getData(key: SecureKey.token);
              AppFunctions.showToast(text: "Login Success");
              // ignore: use_build_context_synchronously
              AppFunctions.navigateTo(
                  context: context, navigatedScreen: const HomeScreen());
            }
          },
          builder: (context, state) {
            var cubit = LoginCubit.get(context);
            return Padding(
              padding: EdgeInsets.all(15.r),
              child: SingleChildScrollView(
                child: Form(
                  key: cubit.formKey,
                  child: Column(
                    children: [
                      Image.asset(
                        AppImages.logo,
                        width: 120.w,
                      ),
                      SizedBox(
                        height: 8.h,
                      ),
                      Text(
                        "Login",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 23.sp,
                            color: Colors.black),
                      ),
                      SizedBox(
                        height: 8.h,
                      ),
                      TextFormFieldWidget(
                          hintText: "Email",
                          controller: cubit.emailController,
                          keyboardType: TextInputType.emailAddress,
                          validator: (value) {
                            if (value!.trim().isEmpty) {
                              return "Email must not be empty";
                            }
                            return null;
                          }),
                      SizedBox(
                        height: 8.h,
                      ),
                      TextFormFieldWidget(
                          hintText: "Password",
                          controller: cubit.passwordController,
                          keyboardType: TextInputType.text,
                          validator: (value) {
                            if (value!.trim().isEmpty) {
                              return "Password must not be empty";
                            }
                            return null;
                          }),
                      SizedBox(
                        height: 8.h,
                      ),
                      SizedBox(
                        height: 8.h,
                      ),
                      AnimatedConditionalBuilder(
                        condition: state is LoginLoadingState,
                        builder: (BuildContext context) =>
                            const Center(child: CircularProgressIndicator()),
                        fallback: (BuildContext context) => BottomWidget(
                            text: "Login",
                            onTap: () {
                              if (cubit.formKey.currentState!.validate()) {
                                cubit.login(
                                    email: cubit.emailController.text,
                                    password: cubit.passwordController.text);
                              }
                            }),
                      ),
                      SizedBox(
                        height: 8.h,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            'I havn\'t an account ',
                            style: TextStyle(color: Colors.black, fontSize: 18),
                          ),
                          TextButton(
                              onPressed: () {
                                Navigator.of(context)
                                    .pushReplacement(MaterialPageRoute(
                                  builder: (context) => const RegisterScreen(),
                                ));
                              },
                              child: const Text(
                                'Create one!',
                                style:
                                    TextStyle(color: Colors.blue, fontSize: 18),
                              ))
                        ],
                      ),
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
