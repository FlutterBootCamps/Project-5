class Plants {
  Plants({
    required this.name,
    required this.description,
    required this.img,
    required this.price,
  });
  late final String name;
  late final String description;
  late final String img;
  late final String price;
  
  Plants.fromJson(Map<String, dynamic> json){
    name = json['name'];
    description = json['description'];
    img = json['img'];
    price = json['price'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['name'] = name;
    _data['description'] = description;
    _data['img'] = img;
    _data['price'] = price;
    return _data;
  }
}