import 'package:get_storage/get_storage.dart';
import 'package:saudia_app_project_5/dataset/saudia_datset.dart';
import 'package:saudia_app_project_5/dataset/whats_new_data.dart';
import 'package:saudia_app_project_5/model/saudia_model.dart';
import 'package:saudia_app_project_5/model/whats_New_model.dart';
import 'package:url_launcher/url_launcher.dart';

class DataServices {
  // final _box = GetStorage();

  List<WhatsNewDataModel> whatsNew = [];
  List<SaudiaModel> cities = [];
  List<String> promoCode = ["Alaa", "Saudia", "2024"];
  List<int> passengers = [1, 0, 0, 0];
  

  DataServices() {
    loadData();
  }

  loadData() {
    print("start");
    if (whatsNew.isEmpty) {
      for (var element in whatsNewDataCard) {
        whatsNew.add(WhatsNewDataModel.fromJson(element));
      }
    }

    if (cities.isEmpty) {
      for (var element in SaudiaData) {
        cities.add(SaudiaModel.fromJson(element));
      }
    }
  }

  Future<void> launchGoogleURL({required String url}) async {
    final Uri uri = Uri.parse(url);
    await launchUrl(uri);
  }


  increaseCounter({required int number}) {
    switch(number){
      case 0:
      passengers[0]++;
      break;
      case 1:
      passengers[1]++;
      break;
      case 2:
      passengers[2]++;
      break;
      case 3:
      passengers[3]++;
      break;
    }
  }

  decreaseCounter(int number) {
      print("des $number index");
      switch(number){
      case 0:
      if(passengers[0] > 0){
        passengers[0]--;
      }
      break;
      case 1:
      if(passengers[1] > 0 ){
        passengers[1]--;
      }
      break;
      case 2:
      if(passengers[2] > 0 ){
        passengers[2]--;
      }
      break;
      case 3:
      if(passengers[3] > 0 ){
        passengers[3]--;
      }
      break;
    }
  }

}
