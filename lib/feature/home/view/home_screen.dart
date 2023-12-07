import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:todo_tast_app/core/helper/secure_storage/secure_storage.dart';
import 'package:todo_tast_app/core/util/app_functions/app_functions.dart';
import 'package:todo_tast_app/core/util/secure_keys/secure_key.dart';
import 'package:todo_tast_app/feature/home/view_model/cubit/task_cubit.dart';
import 'package:todo_tast_app/feature/home/view_model/cubit/task_state.dart';
import 'package:todo_tast_app/feature/home/view_model/logout_cubit/logout_cubit.dart';
import 'package:todo_tast_app/feature/home/view_model/logout_cubit/logout_state.dart';
import 'package:todo_tast_app/feature/register/view/register_screen.dart';

import '../../add_task/view/add_task_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                const UserAccountsDrawerHeader(
                  accountName: Text("Ahmed kamal",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.black,
                      )),
                  accountEmail: Text("Ahmed@yahoo.com",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.black,
                      )),
                  currentAccountPicture: CircleAvatar(
                    radius: 55,
                    backgroundImage: AssetImage("assets/images/logo.png"),
                  ),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/images/logo.png"),
                        fit: BoxFit.cover),
                  ),
                ),
                ListTile(
                    title: const Text("Home"),
                    leading: const Icon(Icons.home),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const HomeScreen(),
                        ),
                      );
                    }),
                ListTile(
                    title: const Text("Profile"),
                    leading: const Icon(Icons.person_pin),
                    onTap: () {}),
                ListTile(
                    title: const Text("About"),
                    leading: const Icon(Icons.help_center),
                    onTap: () {}),
                ListTile(
                    title: const Text("Logout"),
                    leading: const Icon(Icons.exit_to_app),
                    onTap: () {}),
              ],
            ),
            Container(
                margin: const EdgeInsets.only(bottom: 12),
                child: const Text("Developed by Ahmed Kamal @ 2023")),
          ],
        ),
      ),
      appBar: AppBar(
          backgroundColor: Colors.pink,
          title: Text(
            "To Do Screen",
            style: TextStyle(
                color: Colors.white,
                fontSize: 22.sp,
                fontWeight: FontWeight.bold),
          ),
          actions: [
            IconButton(
                onPressed: () {
                  showModalBottomSheet(
                      context: context,
                      builder: (context) => Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Status",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18.sp,
                                      color: Colors.black),
                                ),
                                TextFormField(),
                                Center(
                                    child: ElevatedButton(
                                        onPressed: () {},
                                        child: const Text("Apply Filter")))
                              ],
                            ),
                          ));
                },
                icon: const Icon(
                  Icons.filter_list,
                  color: Colors.white,
                )),
            BlocProvider(
              create: (context) => LogoutCubit(),
              child: BlocConsumer<LogoutCubit, LogoutState>(
                listener: (context, state) {
                  if (state is LogoutSuccessState) {
                    AppFunctions.showToast(text: state.message);
                    SecureStorage.deleteData(key: SecureKey.token)
                        .then((value) {
                      AppFunctions.navigateAndFinishTo(
                          context: context,
                          navigatedScreen: const RegisterScreen());
                    });
                  }
                },
                builder: (context, state) {
                  var cubit = LogoutCubit.get(context);
                  return IconButton(
                      onPressed: () {
                        cubit.logout();
                      },
                      icon: const Icon(
                        Icons.logout,
                        color: Colors.white,
                      ));
                },
              ),
            ),
          ]),
      floatingActionButton: FloatingActionButton(
        shape: const CircleBorder(),
        backgroundColor: Colors.pink,
        onPressed: () {
          AppFunctions.navigateTo(
              context: context, navigatedScreen: const AddTaskScreen());
        },
        child: const Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
      body: BlocProvider(
        create: (context) => TaskCubit()..getTask(),
        child: BlocConsumer<TaskCubit, TaskState>(
          listener: (context, state) {},
          builder: (context, state) {
            var cubit = TaskCubit.get(context);
            if (cubit.allTaskModel != null) {
              return Padding(
                padding: const EdgeInsets.all(22),
                child: ListView.separated(
                    itemBuilder: (context, index) {
                      var info = cubit.allTaskModel?.data?.tasks![index];
                      return Container(
                        decoration: BoxDecoration(
                            color: Colors.green.withOpacity(0.2),
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(color: Colors.green)),
                        child: Padding(
                          padding: const EdgeInsets.all(15),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                info?.title ?? "",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                    fontSize: 18.sp),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Text(
                                info?.description ?? "",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.grey,
                                    fontSize: 14.sp),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              // SizedBox(
                              //   width: 50,
                              //   height: 50,
                              //   child: Image.file((info?.image ?? "") as File),
                              // ),
                              // const SizedBox(
                              //   height: 10,
                              // ),
                              Row(
                                children: [
                                  Expanded(
                                    child: Container(
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(20),
                                          border:
                                              Border.all(color: Colors.pink)),
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Row(
                                          children: [
                                            const Icon(Icons.timer_outlined),
                                            const SizedBox(
                                              width: 8,
                                            ),
                                            Text(info?.startDate ?? "")
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 4,
                                  ),
                                  Expanded(
                                    child: Container(
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(20),
                                          border:
                                              Border.all(color: Colors.pink)),
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Row(
                                          children: [
                                            const Icon(
                                                Icons.timer_off_outlined),
                                            const SizedBox(
                                              width: 8,
                                            ),
                                            Text(info?.endDate ?? "")
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      );
                    },
                    separatorBuilder: (context, index) => const SizedBox(
                          height: 8,
                        ),
                    itemCount:
                        cubit.allTaskModel?.data?.tasks!.length ?? 0), // as int
              );
            } /* else if (state is TaskErrorState) {
              return Text(state.error);
            }*/
            else if (state is TaskLoadingState) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            } else {
              return const Center(child: Text("Add New Task"));
            }
          },
        ),
      ),
    );
  }
}
