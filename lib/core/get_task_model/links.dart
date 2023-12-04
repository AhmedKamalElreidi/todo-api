class Links {
  String? first;
  String? last;
  dynamic prev;
  dynamic next;

  Links({this.first, this.last, this.prev, this.next});

  factory Links.fromDataTasksId471TitleNewTaskdsdDescriptionNewDescriptiondsaImageHttpsEraasoftIntegration25ComStorageTasksXZGtf4KTxkfk2Jcx4UCvoPbQqyr0qG6lUJnKPlhVPngStartDate20231201EndDate20231202StatusNewId480TitleNewTaskdsdDescriptionNewDescriptiondsaImageHttpsEraasoftIntegration25ComStorageTasksRuvMuVtE7Oh6YBl90HoH6e591wsH0hnkeBxGSfG3PngStartDate20231215EndDate20231220StatusNewMetaTotal2PerPage15CurrentPage1LastPage1LinksFirstHttpsEraasoftIntegration25ComApiTasksPage1LastHttpsEraasoftIntegration25ComApiTasksPage1PrevNullNextNullPagesHttpsEraasoftIntegration25ComApiTasksPage1MessageErrorStatus200(
      Map<String, dynamic> json) {
    return Links(
      first: json['first'] as String?,
      last: json['last'] as String?,
      prev: json['prev'] as dynamic,
      next: json['next'] as dynamic,
    );
  }

  Map<String, dynamic>
      toDataTasksId471TitleNewTaskdsdDescriptionNewDescriptiondsaImageHttpsEraasoftIntegration25ComStorageTasksXZGtf4KTxkfk2Jcx4UCvoPbQqyr0qG6lUJnKPlhVPngStartDate20231201EndDate20231202StatusNewId480TitleNewTaskdsdDescriptionNewDescriptiondsaImageHttpsEraasoftIntegration25ComStorageTasksRuvMuVtE7Oh6YBl90HoH6e591wsH0hnkeBxGSfG3PngStartDate20231215EndDate20231220StatusNewMetaTotal2PerPage15CurrentPage1LastPage1LinksFirstHttpsEraasoftIntegration25ComApiTasksPage1LastHttpsEraasoftIntegration25ComApiTasksPage1PrevNullNextNullPagesHttpsEraasoftIntegration25ComApiTasksPage1MessageErrorStatus200() {
    return {
      'first': first,
      'last': last,
      'prev': prev,
      'next': next,
    };
  }
}
