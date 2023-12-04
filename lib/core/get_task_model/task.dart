class Task {
  int? id;
  String? title;
  String? description;
  String? image;
  String? startDate;
  String? endDate;
  String? status;

  Task({
    this.id,
    this.title,
    this.description,
    this.image,
    this.startDate,
    this.endDate,
    this.status,
  });

  factory Task.fromDataTasksId471TitleNewTaskdsdDescriptionNewDescriptiondsaImageHttpsEraasoftIntegration25ComStorageTasksXZGtf4KTxkfk2Jcx4UCvoPbQqyr0qG6lUJnKPlhVPngStartDate20231201EndDate20231202StatusNewId480TitleNewTaskdsdDescriptionNewDescriptiondsaImageHttpsEraasoftIntegration25ComStorageTasksRuvMuVtE7Oh6YBl90HoH6e591wsH0hnkeBxGSfG3PngStartDate20231215EndDate20231220StatusNewMetaTotal2PerPage15CurrentPage1LastPage1LinksFirstHttpsEraasoftIntegration25ComApiTasksPage1LastHttpsEraasoftIntegration25ComApiTasksPage1PrevNullNextNullPagesHttpsEraasoftIntegration25ComApiTasksPage1MessageErrorStatus200(
      Map<String, dynamic> json) {
    return Task(
      id: json['id'] as int?,
      title: json['title'] as String?,
      description: json['description'] as String?,
      image: json['image'] as String?,
      startDate: json['start_date'] as String?,
      endDate: json['end_date'] as String?,
      status: json['status'] as String?,
    );
  }

  Map<String, dynamic>
      toDataTasksId471TitleNewTaskdsdDescriptionNewDescriptiondsaImageHttpsEraasoftIntegration25ComStorageTasksXZGtf4KTxkfk2Jcx4UCvoPbQqyr0qG6lUJnKPlhVPngStartDate20231201EndDate20231202StatusNewId480TitleNewTaskdsdDescriptionNewDescriptiondsaImageHttpsEraasoftIntegration25ComStorageTasksRuvMuVtE7Oh6YBl90HoH6e591wsH0hnkeBxGSfG3PngStartDate20231215EndDate20231220StatusNewMetaTotal2PerPage15CurrentPage1LastPage1LinksFirstHttpsEraasoftIntegration25ComApiTasksPage1LastHttpsEraasoftIntegration25ComApiTasksPage1PrevNullNextNullPagesHttpsEraasoftIntegration25ComApiTasksPage1MessageErrorStatus200() {
    return {
      'id': id,
      'title': title,
      'description': description,
      'image': image,
      'start_date': startDate,
      'end_date': endDate,
      'status': status,
    };
  }
}
