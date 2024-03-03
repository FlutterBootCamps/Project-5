import 'package:get_storage/get_storage.dart';
import 'package:project_5_saad_alharbi/data/dataset.dart';
import 'package:project_5_saad_alharbi/model/city_model.dart';
import 'package:project_5_saad_alharbi/model/new_model.dart';

class HomeData {
  final box = GetStorage();
  //get the dataset of news
  List<NewModel> newsList = news.map((e) => NewModel.fromJson(e)).toList();

  //get the dataset of cityData
  List<CityModel> cityList =
      cityData.map((e) => CityModel.fromJson(e)).toList();

  List<Map<String, dynamic>> savedTicket = [];

  HomeData() {
    loadData();
  }

  //get the List Ticket from the dataset
  List<Map<String, dynamic>>? getTicketList(String fromCity, String toCity) {
    return cityList
        .where((element) => element.cityName == fromCity)
        .first
        .travelToList!
        .where((element) => element.cityName == toCity)
        .first
        .ticketList;
  }

  CityModel getCity(String city) {
    return cityList.where((element) => element.cityName == city).first;
  }

  setData() async {
    await box.write("savedTicket", savedTicket);
    box.save();
  }

  loadData() {
    List<Map<String, dynamic>> temp = [];

// Check if the value returned by box.read("savedTicket") is not null
    var savedTicketValue = box.read("savedTicket");
    if (savedTicketValue != null && savedTicketValue is List<dynamic>) {
      savedTicketValue.forEach((e) => temp.add(e));
      savedTicket = temp;
    } 
  }
}
