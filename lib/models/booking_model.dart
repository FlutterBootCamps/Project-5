class BookingModel {
  BookingModel({
    required this.flightNumber,
    required this.planeName,
    required this.departureAirport,
    required this.arrivalAirport,
    required this.departureTime,
    required this.arrivalTime,
    required this.duration,
    required this.totalPrice,
    required this.noOfPassengers,
    required this.date,
  });
  late final String flightNumber;
  late final String planeName;
  late final String departureAirport;
  late final String arrivalAirport;
  late final String departureTime;
  late final String arrivalTime;
  late final String duration;
  late final double totalPrice;
  late final int noOfPassengers;
  late final String date;

  BookingModel.fromJson(Map<String, dynamic> json) {
    flightNumber = json['flight_number'];
    planeName = json['planeName'];
    departureAirport = json['departure_airport'];
    arrivalAirport = json['arrival_airport'];
    departureTime = json['departure_time'];
    arrivalTime = json['arrival_time'];
    duration = json['duration'];
    totalPrice = json['total_price'];
    noOfPassengers = json['noOfPassengers'];
    date = json['date'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['flight_number'] = flightNumber;
    _data['planeName'] = planeName;
    _data['departure_airport'] = departureAirport;
    _data['arrival_airport'] = arrivalAirport;
    _data['departure_time'] = departureTime;
    _data['arrival_time'] = arrivalTime;
    _data['duration'] = duration;
    _data['total_price'] = totalPrice;
    _data['noOfPassengers'] = noOfPassengers;
    _data['date'] = date;
    return _data;
  }
}
