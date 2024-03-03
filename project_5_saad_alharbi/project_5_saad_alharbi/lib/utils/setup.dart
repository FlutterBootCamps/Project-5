import 'package:get_it/get_it.dart';
import 'package:get_storage/get_storage.dart';
import 'package:project_5_saad_alharbi/data_layer/home_data.dart';

 setup() async {
  await GetStorage.init();
  GetIt.I.registerSingleton<HomeData>(HomeData());
}
