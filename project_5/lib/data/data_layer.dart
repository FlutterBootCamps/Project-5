import 'package:get_storage/get_storage.dart';
import 'package:project_5/data/data_model.dart';
import 'package:project_5/data/data_set.dart';

class AllData {
  List<WhatsNewDataModel> whatsNew = [];
  List<CityModel> cities = [];
  String city = "Jeddah";
  String city2 = "Dammam";
  DateTime startDate = DateTime.now();
  DateTime endDate = DateTime.now();
  final box = GetStorage();

  AllData() {
    getAllData();
  }

  getAllData() {
    for (var element in cityData) {
      cities.add(CityModel.fromJson(element));
    }
    for (var element in whatsNewData) {
      whatsNew.add(WhatsNewDataModel.fromJson(element));
    }
  }
}
