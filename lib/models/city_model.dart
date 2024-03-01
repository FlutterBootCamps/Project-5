class CityModel {

  final String cityName;
  final double? price;
  final List<CityModel>? travelToList;
  final String? image;

  CityModel({required this.cityName, this.price, this.travelToList, this.image});

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {
      'cityName': cityName,
      'travelToList': travelToList?.map((city) => city.toJson()).toList(),
      'price': price,
      'image': image,
    };
    return data;
  }

  factory CityModel.fromJson(Map<String, dynamic> json) {
    return CityModel(
      cityName: json['cityName'],
      travelToList: json['travelToList'] != null
          ? List<CityModel>.from(
              (json['travelToList'] as List).map((city) => CityModel.fromJson(city)))
          : null,
      price: json['price']?.toDouble(),
      image: json['image'],
    );
  }
}