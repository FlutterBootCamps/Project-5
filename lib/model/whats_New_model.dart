class WhatsNewDataModel {
  WhatsNewDataModel({
    required this.title,
    required this.description,
    required this.imagePath,
    required this.url,
  });
  late final String title;
  late final String description;
  late final String imagePath;
  late final String url;
  
  WhatsNewDataModel.fromJson(Map<String, dynamic> json){
    title = json['title'];
    description = json['description'];
    imagePath = json['imagePath'];
    url = json['url'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['title'] = title;
    _data['description'] = description;
    _data['imagePath'] = imagePath;
    _data['url'] = url;
    return _data;
  }
}