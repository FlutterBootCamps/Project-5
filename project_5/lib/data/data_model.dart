class WhatsNewDataModel {
  WhatsNewDataModel({
    required this.title,
    required this.supTitle,
    required this.imagePath,
    required this.link,
  });
  late final String title;
  late final String supTitle;
  late final String imagePath;
  late final String link;

  WhatsNewDataModel.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    supTitle = json['supTitle'];
    imagePath = json['imagePath'];
    link = json['link'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['title'] = title;
    data['supTitle'] = supTitle;
    data['imagePath'] = imagePath;
    data['link'] = link;
    return data;
  }
}

class CityModel {
  final String cityName;
  final double? price;
  final List<CityModel>? traveler;
  final String? image;
  final String airport;
  final String cityCut;
  

  CityModel(
      {required this.airport,
      required this.cityName,
      required this.cityCut,
      this.price,
      this.traveler,
      this.image});

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {
      'cityName': cityName,
      'traveler': traveler?.map((city) => city.toJson()).toList(),
      'price': price,
      'image': image,
      'airport': airport,
      'cityCut': cityCut,
    };
    return data;
  }

  factory CityModel.fromJson(Map<String, dynamic> json) {
    return CityModel(
      cityName: json['cityName'],
      cityCut: json['cityCut'],
      traveler: json['traveler'] != null
          ? List<CityModel>.from((json['traveler'] as List)
              .map((city) => CityModel.fromJson(city)))
          : null,
      price: json['price']?.toDouble(),
      image: json['image'],
      airport: json['airport'],
    );
  }
}
