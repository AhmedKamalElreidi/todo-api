import 'data.dart';

class GetTaskModel {
  Data? data;
  String? message;
  List<dynamic>? error;
  int? status;

  GetTaskModel({this.data, this.message, this.error, this.status});

  factory GetTaskModel.fromDataTasksId471TitleNewTaskdsdDescriptionNewDescriptiondsaImageHttpsEraasoftIntegration25ComStorageTasksXZGtf4KTxkfk2Jcx4UCvoPbQqyr0qG6lUJnKPlhVPngStartDate20231201EndDate20231202StatusNewId480TitleNewTaskdsdDescriptionNewDescriptiondsaImageHttpsEraasoftIntegration25ComStorageTasksRuvMuVtE7Oh6YBl90HoH6e591wsH0hnkeBxGSfG3PngStartDate20231215EndDate20231220StatusNewMetaTotal2PerPage15CurrentPage1LastPage1LinksFirstHttpsEraasoftIntegration25ComApiTasksPage1LastHttpsEraasoftIntegration25ComApiTasksPage1PrevNullNextNullPagesHttpsEraasoftIntegration25ComApiTasksPage1MessageErrorStatus200(
      Map<String, dynamic> json) {
    return GetTaskModel(
      data: json['data'] == null
          ? null
          : Data
              .fromDataTasksId471TitleNewTaskdsdDescriptionNewDescriptiondsaImageHttpsEraasoftIntegration25ComStorageTasksXZGtf4KTxkfk2Jcx4UCvoPbQqyr0qG6lUJnKPlhVPngStartDate20231201EndDate20231202StatusNewId480TitleNewTaskdsdDescriptionNewDescriptiondsaImageHttpsEraasoftIntegration25ComStorageTasksRuvMuVtE7Oh6YBl90HoH6e591wsH0hnkeBxGSfG3PngStartDate20231215EndDate20231220StatusNewMetaTotal2PerPage15CurrentPage1LastPage1LinksFirstHttpsEraasoftIntegration25ComApiTasksPage1LastHttpsEraasoftIntegration25ComApiTasksPage1PrevNullNextNullPagesHttpsEraasoftIntegration25ComApiTasksPage1MessageErrorStatus200(
                  json['data'] as Map<String, dynamic>),
      message: json['message'] as String?,
      error: json['error'] as List<dynamic>?,
      status: json['status'] as int?,
    );
  }

  Map<String, dynamic>
      toDataTasksId471TitleNewTaskdsdDescriptionNewDescriptiondsaImageHttpsEraasoftIntegration25ComStorageTasksXZGtf4KTxkfk2Jcx4UCvoPbQqyr0qG6lUJnKPlhVPngStartDate20231201EndDate20231202StatusNewId480TitleNewTaskdsdDescriptionNewDescriptiondsaImageHttpsEraasoftIntegration25ComStorageTasksRuvMuVtE7Oh6YBl90HoH6e591wsH0hnkeBxGSfG3PngStartDate20231215EndDate20231220StatusNewMetaTotal2PerPage15CurrentPage1LastPage1LinksFirstHttpsEraasoftIntegration25ComApiTasksPage1LastHttpsEraasoftIntegration25ComApiTasksPage1PrevNullNextNullPagesHttpsEraasoftIntegration25ComApiTasksPage1MessageErrorStatus200() {
    return {
      'data': data
          ?.toDataTasksId471TitleNewTaskdsdDescriptionNewDescriptiondsaImageHttpsEraasoftIntegration25ComStorageTasksXZGtf4KTxkfk2Jcx4UCvoPbQqyr0qG6lUJnKPlhVPngStartDate20231201EndDate20231202StatusNewId480TitleNewTaskdsdDescriptionNewDescriptiondsaImageHttpsEraasoftIntegration25ComStorageTasksRuvMuVtE7Oh6YBl90HoH6e591wsH0hnkeBxGSfG3PngStartDate20231215EndDate20231220StatusNewMetaTotal2PerPage15CurrentPage1LastPage1LinksFirstHttpsEraasoftIntegration25ComApiTasksPage1LastHttpsEraasoftIntegration25ComApiTasksPage1PrevNullNextNullPagesHttpsEraasoftIntegration25ComApiTasksPage1MessageErrorStatus200(),
      'message': message,
      'error': error,
      'status': status,
    };
  }
}
