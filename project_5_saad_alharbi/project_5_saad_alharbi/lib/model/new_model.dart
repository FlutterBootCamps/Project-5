class NewModel {
  late String title;
  late String imagePath;
  late String description;

  NewModel(
      {required this.title,
      required this.imagePath,
      required this.description});

  NewModel.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    imagePath = json['imagePath'];
    description = json['description'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['title'] = title;
    data['imagePath'] = imagePath;
    data['description'] = description;
    return data;
  }
}
