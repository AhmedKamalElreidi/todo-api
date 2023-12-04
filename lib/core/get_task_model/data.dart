import 'links.dart';
import 'meta.dart';
import 'task.dart';

class Data {
  List<Task>? tasks;
  Meta? meta;
  Links? links;
  List<String>? pages;

  Data({this.tasks, this.meta, this.links, this.pages});

  factory Data.fromDataTasksId471TitleNewTaskdsdDescriptionNewDescriptiondsaImageHttpsEraasoftIntegration25ComStorageTasksXZGtf4KTxkfk2Jcx4UCvoPbQqyr0qG6lUJnKPlhVPngStartDate20231201EndDate20231202StatusNewId480TitleNewTaskdsdDescriptionNewDescriptiondsaImageHttpsEraasoftIntegration25ComStorageTasksRuvMuVtE7Oh6YBl90HoH6e591wsH0hnkeBxGSfG3PngStartDate20231215EndDate20231220StatusNewMetaTotal2PerPage15CurrentPage1LastPage1LinksFirstHttpsEraasoftIntegration25ComApiTasksPage1LastHttpsEraasoftIntegration25ComApiTasksPage1PrevNullNextNullPagesHttpsEraasoftIntegration25ComApiTasksPage1MessageErrorStatus200(
      Map<String, dynamic> json) {
    return Data(
      tasks: (json['tasks'] as List<dynamic>?)
          ?.map((e) => Task
              .fromDataTasksId471TitleNewTaskdsdDescriptionNewDescriptiondsaImageHttpsEraasoftIntegration25ComStorageTasksXZGtf4KTxkfk2Jcx4UCvoPbQqyr0qG6lUJnKPlhVPngStartDate20231201EndDate20231202StatusNewId480TitleNewTaskdsdDescriptionNewDescriptiondsaImageHttpsEraasoftIntegration25ComStorageTasksRuvMuVtE7Oh6YBl90HoH6e591wsH0hnkeBxGSfG3PngStartDate20231215EndDate20231220StatusNewMetaTotal2PerPage15CurrentPage1LastPage1LinksFirstHttpsEraasoftIntegration25ComApiTasksPage1LastHttpsEraasoftIntegration25ComApiTasksPage1PrevNullNextNullPagesHttpsEraasoftIntegration25ComApiTasksPage1MessageErrorStatus200(
                  e as Map<String, dynamic>))
          .toList(),
      meta: json['meta'] == null
          ? null
          : Meta
              .fromDataTasksId471TitleNewTaskdsdDescriptionNewDescriptiondsaImageHttpsEraasoftIntegration25ComStorageTasksXZGtf4KTxkfk2Jcx4UCvoPbQqyr0qG6lUJnKPlhVPngStartDate20231201EndDate20231202StatusNewId480TitleNewTaskdsdDescriptionNewDescriptiondsaImageHttpsEraasoftIntegration25ComStorageTasksRuvMuVtE7Oh6YBl90HoH6e591wsH0hnkeBxGSfG3PngStartDate20231215EndDate20231220StatusNewMetaTotal2PerPage15CurrentPage1LastPage1LinksFirstHttpsEraasoftIntegration25ComApiTasksPage1LastHttpsEraasoftIntegration25ComApiTasksPage1PrevNullNextNullPagesHttpsEraasoftIntegration25ComApiTasksPage1MessageErrorStatus200(
                  json['meta'] as Map<String, dynamic>),
      links: json['links'] == null
          ? null
          : Links
              .fromDataTasksId471TitleNewTaskdsdDescriptionNewDescriptiondsaImageHttpsEraasoftIntegration25ComStorageTasksXZGtf4KTxkfk2Jcx4UCvoPbQqyr0qG6lUJnKPlhVPngStartDate20231201EndDate20231202StatusNewId480TitleNewTaskdsdDescriptionNewDescriptiondsaImageHttpsEraasoftIntegration25ComStorageTasksRuvMuVtE7Oh6YBl90HoH6e591wsH0hnkeBxGSfG3PngStartDate20231215EndDate20231220StatusNewMetaTotal2PerPage15CurrentPage1LastPage1LinksFirstHttpsEraasoftIntegration25ComApiTasksPage1LastHttpsEraasoftIntegration25ComApiTasksPage1PrevNullNextNullPagesHttpsEraasoftIntegration25ComApiTasksPage1MessageErrorStatus200(
                  json['links'] as Map<String, dynamic>),
      pages: json['pages'] as List<String>?,
    );
  }

  Map<String, dynamic>
      toDataTasksId471TitleNewTaskdsdDescriptionNewDescriptiondsaImageHttpsEraasoftIntegration25ComStorageTasksXZGtf4KTxkfk2Jcx4UCvoPbQqyr0qG6lUJnKPlhVPngStartDate20231201EndDate20231202StatusNewId480TitleNewTaskdsdDescriptionNewDescriptiondsaImageHttpsEraasoftIntegration25ComStorageTasksRuvMuVtE7Oh6YBl90HoH6e591wsH0hnkeBxGSfG3PngStartDate20231215EndDate20231220StatusNewMetaTotal2PerPage15CurrentPage1LastPage1LinksFirstHttpsEraasoftIntegration25ComApiTasksPage1LastHttpsEraasoftIntegration25ComApiTasksPage1PrevNullNextNullPagesHttpsEraasoftIntegration25ComApiTasksPage1MessageErrorStatus200() {
    return {
      'tasks': tasks
          ?.map((e) => e
              .toDataTasksId471TitleNewTaskdsdDescriptionNewDescriptiondsaImageHttpsEraasoftIntegration25ComStorageTasksXZGtf4KTxkfk2Jcx4UCvoPbQqyr0qG6lUJnKPlhVPngStartDate20231201EndDate20231202StatusNewId480TitleNewTaskdsdDescriptionNewDescriptiondsaImageHttpsEraasoftIntegration25ComStorageTasksRuvMuVtE7Oh6YBl90HoH6e591wsH0hnkeBxGSfG3PngStartDate20231215EndDate20231220StatusNewMetaTotal2PerPage15CurrentPage1LastPage1LinksFirstHttpsEraasoftIntegration25ComApiTasksPage1LastHttpsEraasoftIntegration25ComApiTasksPage1PrevNullNextNullPagesHttpsEraasoftIntegration25ComApiTasksPage1MessageErrorStatus200())
          .toList(),
      'meta': meta
          ?.toDataTasksId471TitleNewTaskdsdDescriptionNewDescriptiondsaImageHttpsEraasoftIntegration25ComStorageTasksXZGtf4KTxkfk2Jcx4UCvoPbQqyr0qG6lUJnKPlhVPngStartDate20231201EndDate20231202StatusNewId480TitleNewTaskdsdDescriptionNewDescriptiondsaImageHttpsEraasoftIntegration25ComStorageTasksRuvMuVtE7Oh6YBl90HoH6e591wsH0hnkeBxGSfG3PngStartDate20231215EndDate20231220StatusNewMetaTotal2PerPage15CurrentPage1LastPage1LinksFirstHttpsEraasoftIntegration25ComApiTasksPage1LastHttpsEraasoftIntegration25ComApiTasksPage1PrevNullNextNullPagesHttpsEraasoftIntegration25ComApiTasksPage1MessageErrorStatus200(),
      'links': links
          ?.toDataTasksId471TitleNewTaskdsdDescriptionNewDescriptiondsaImageHttpsEraasoftIntegration25ComStorageTasksXZGtf4KTxkfk2Jcx4UCvoPbQqyr0qG6lUJnKPlhVPngStartDate20231201EndDate20231202StatusNewId480TitleNewTaskdsdDescriptionNewDescriptiondsaImageHttpsEraasoftIntegration25ComStorageTasksRuvMuVtE7Oh6YBl90HoH6e591wsH0hnkeBxGSfG3PngStartDate20231215EndDate20231220StatusNewMetaTotal2PerPage15CurrentPage1LastPage1LinksFirstHttpsEraasoftIntegration25ComApiTasksPage1LastHttpsEraasoftIntegration25ComApiTasksPage1PrevNullNextNullPagesHttpsEraasoftIntegration25ComApiTasksPage1MessageErrorStatus200(),
      'pages': pages,
    };
  }
}
