// ignore_for_file: avoid_print

import 'package:dio/dio.dart';
import 'package:todo_tast_app/core/constant/end_points/end_points.dart';

class DioHelper {
  // Future<AllTasksModel?> getTaskks() async {
  //   // var dio = ;
  //   try {
  //     var headers = {
  //       'Accept': 'application/json',
  //       'Content-Type': 'application/json',
  //       'Authorization': 'Bearer ${SecureVariables.token}'
  //     };
  //     var response = await Dio().get(
  //       'https://eraasoft.integration25.com/api/tasks',
  //       options: Options(
  //         method: 'GET',
  //         headers: headers,
  //       ),
  //     );

  //     if (response.statusCode == 200) {
  //       return AllTasksModel.fromJson(response.data);
  //     }
  //   } catch (e) {
  //     print(e.toString());
  //   }

  //   return null;
  // }

  static late Dio dio;
  static init() {
    dio = Dio(
      BaseOptions(
        baseUrl: EndPoints.baseUrl,
        receiveDataWhenStatusError: true,
      ),
    );
  }

  //************************************  postdata  *********************************

  static Future<Response> postData({
    required String url,
    Map<String, dynamic>? query,
    dynamic data,
    String lang = 'en',
    String? token,
  }) async {
    try {
      dio.options.headers = {
        'Authorization': 'bearer $token',
        "Accept": "application/json"
      };
      return await dio.post(url,
          queryParameters: query,
          data: data,
          options: Options(
            validateStatus: (_) => true,
            contentType: Headers.jsonContentType,
            responseType: ResponseType.json,
          ));
    } catch (error) {
      print(error.toString());
      rethrow;
    }
  }

  //************************************      getdata  *********************************

  static Future<Response> getData({
    required String url,
    Map<String, dynamic>? query,
    String lang = 'en',
    String? token,
  }) async {
    try {
      dio.options.headers = {
        'Authorization': 'bearer $token',
        "Accept": "application/json"
      };
      return await dio.get(url,
          queryParameters: query,
          options: Options(
            validateStatus: (_) => true,
            contentType: Headers.jsonContentType,
            responseType: ResponseType.json,
          ));
    } catch (error) {
      print(error.toString());
      rethrow;
    }
  }
}
// class DioServices {
//   static Future<Response?> registerPost(String name, String email,
//       String password, String confirmPassword) async {
//     try {
//       final response = await Dio().post(
//         'https://eraasoft.integration25.com/api/register',
//         data: {
//           'name': name,
//           'email': email,
//           'password': password,
//           'password_confirmation': confirmPassword,
//         },
//       );
//       // return response.data;
//       if (response.statusCode == 200) {
//         return response.data;
//       }
//     } catch (e) {
//       print(e.toString());
//     }
//     return null;
//   }

//   static Future<Response?> loginPost(String email, String password) async {
//     try {
//       final response = await Dio().post(
//         'https://eraasoft.integration25.com/api/login',
//         data: {
//           'email': email,
//           'password': password,
//         },
//       );
//       if (response.statusCode == 200) {
//         return response.data;
//       }
//     } catch (e) {
//       print(e.toString());
//     }
//     return null;
//   }
// }

// // ignore_for_file: avoid_print

// import 'package:dio/dio.dart';
// import 'package:todo_tast_app/core/constant/end_points/end_points.dart';

// class DioHelper {
//   static late Dio dio;

//   static init() {
//     dio = Dio(

//     );
//   }

//   static Future<Response> getData({
//     required String url,
//     Map<String, dynamic>? query,
//     String lang = 'en',
//     String? token,
//   }) async {
//     try {
//       dio.options.headers = {
//         'Authorization': 'bearer $token',
//         "Accept": "application/json"
//       };
//       return await dio.get(url,
//           queryParameters: query,
//           options: Options(
//             validateStatus: (_) => true,
//             contentType: Headers.jsonContentType,
//             responseType: ResponseType.json,
//           ));
//     } catch (error) {
//       print(error.toString());
//       rethrow;
//     }
//   }

// static Future<Response> postData({
//   required String url,
//   Map<String, dynamic>? query,
//   dynamic data,
//   String lang = 'en',
//   String? token,
// }) async {
//   try {
//     dio.options.headers = {
//       'Authorization': 'bearer $token',
//       "Accept": "application/json"
//     };
//     return await dio.post(url,
//         queryParameters: query,
//         data: data,
//         options: Options(
//           validateStatus: (_) => true,
//           contentType: Headers.jsonContentType,
//           responseType: ResponseType.json,
//         ));
//   } catch (error) {
//     print(error.toString());
//     rethrow;
//   }
// }

//   static Future<Response> putData({
//     required String url,
//     dynamic data,
//     Map<String, dynamic>? query,
//     String? token,
//   }) async {
//     try {
//       dio.options.headers = {
//         'Authorization': 'bearer $token',
//       };
//       Response response = await dio.put(
//         url,
//         data: data,
//         queryParameters: query,
//       );
//       return response;
//     } catch (error) {
//       rethrow;
//     }
//   }

//   static Future<Response> deleteData({
//     required String url,
//     Map<String, dynamic>? query,
//     dynamic data,
//     String lang = 'en',
//     String? token,
//   }) async {
//     try {
//       dio.options.headers = {
//         'Authorization': 'bearer $token',
//       };
//       return await dio.delete(url, queryParameters: query, data: data);
//     } catch (error) {
//       print(error.toString());
//       rethrow;
//     }
//   }
// }
