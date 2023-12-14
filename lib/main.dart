import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:todo_tast_app/core/bloc_observer.dart';
import 'package:todo_tast_app/core/helper/network/dio_helper.dart';
import 'package:todo_tast_app/core/helper/secure_storage/secure_storage.dart';
import 'package:todo_tast_app/core/util/secure_keys/secure_key.dart';
import 'package:todo_tast_app/core/util/secure_keys/secure_variable.dart';
import 'package:todo_tast_app/feature/home/view/home_screen.dart';
import 'package:todo_tast_app/feature/splash/splash_view.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  SecureStorage.init();

  await DioHelper.init();
  Bloc.observer = MyBlocObserver();

  //await SecureStorage.deleteData(key: SecureKey.token);
  SecureVariables.token = await SecureStorage.getData(key: SecureKey.token);
  Widget? widget;
  if (SecureVariables.token != null) {
    widget = const HomeScreen();
  } else {
    widget = const SplashView();
  }
  runApp(MyApp(
    startWidget: widget,
  ));
}

class MyApp extends StatelessWidget {
  final Widget startWidget;
  const MyApp({super.key, required this.startWidget});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, widget) => MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          iconButtonTheme: IconButtonThemeData(
              style: ButtonStyle(
                  iconColor: MaterialStateProperty.all(Colors.white))),
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: startWidget,
      ),
    );
  }
}
