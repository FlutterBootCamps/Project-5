class CityModel {
  final String cityName;
  final String? code;
  final double? price;
  final List<CityModel>? travelToList;
  final List<Map<String, dynamic>>? ticketList;
  final String? image;

  CityModel(
      {required this.cityName,
      this.price,
      this.travelToList,
      this.image,
      this.code,
      this.ticketList});

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {
      'cityName': cityName,
      'travelToList': travelToList?.map((city) => city.toJson()).toList(),
      'price': price,
      'code': code,
      'image': image,
      'ticketList': ticketList,
    };
    return data;
  }

  factory CityModel.fromJson(Map<String, dynamic> json) {
    return CityModel(
      cityName: json['cityName'],
      code: json['code'],
      travelToList: json['travelToList'] != null
          ? List<CityModel>.from((json['travelToList'] as List)
              .map((city) => CityModel.fromJson(city)))
          : null,
      price: json['price'],
      image: json['image'],
      ticketList: json['ticketList'],
    );
  }
}
