import 'package:project_5/models/Trip_model.dart';

class CityModel {
  final String cityName;
  final String cityCode;
  final String cityCountry;
  final double? price;
  final List<CityModel>? travelToList;
  final String? image;
  final String airport;
  final List<TripModel>? trips;

  CityModel(
      {this.trips,
      required this.cityCountry,
      required this.cityCode,
      required this.airport,
      required this.cityName,
      this.price,
      this.travelToList,
      this.image});

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {
      'cityName': cityName,
      'cityCode': cityCode,
      'cityCountry': cityCountry,
      'travelToList': travelToList?.map((city) => city.toJson()).toList(),
      'price': price,
      'image': image,
      'airport': airport,
      'trips': trips,
    };
    return data;
  }

  factory CityModel.fromJson(Map<String, dynamic> json) {
    return CityModel(
      cityName: json['cityName'],
      cityCode: json['cityCode'],
      cityCountry: json['cityCountry'],
      travelToList: json['travelToList'] != null
          ? List<CityModel>.from((json['travelToList'] as List)
              .map((city) => CityModel.fromJson(city)))
          : null,
      price: json['price']?.toDouble(),
      image: json['image'],
      airport: json['airport'],
      trips: (json['trips'] as List<dynamic>?)
          ?.map((trip) => TripModel.fromJson(trip))
          .toList(),
    );
  }
}
