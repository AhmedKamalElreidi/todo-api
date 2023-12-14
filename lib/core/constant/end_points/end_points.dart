class EndPoints {
  static const String baseUrl = "https://eraasoft.integration25.com/api/";
  static const String login = "login";
  static const String register = "register";
  static const String logout = "logout";
  static const String tasks = "tasks";
  static String deleteTask({required int id}) => "$tasks/$id";
  static String singleTask({required int id}) => "$tasks/$id";
}
