class SaudiaModel {

  final String cityName;
  final double? price;
  final String? imagePath;
  final String? airport;
  final String? cityCode;
  final String? country;
  final List<SaudiaModel>? availableCities;

  SaudiaModel({this.country, this.airport, this.cityCode, required this.cityName, this.price, this.imagePath, this.availableCities, });

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {
      'cityName': cityName,
      'availableCities': availableCities?.map((city) => city.toJson()).toList(),
      'price': price,
      'imagePath': imagePath,
      'airport': airport,
      'cityCode' : cityCode,
      'country' :country,
    };
    return data;
  }

  factory SaudiaModel.fromJson(Map<String, dynamic> json) {
    return SaudiaModel(
      cityName: json['cityName'],
      availableCities: json['availableCities'] != null
          ? List<SaudiaModel>.from(
              (json['availableCities'] as List).map((city) => SaudiaModel.fromJson(city)))
          : null,
      price: json['price']?.toDouble(),
      imagePath: json['imagePath'],
      airport: json['airport'],
      cityCode: json["cityCode"],
      country: json['country'],
    );
  }
}


