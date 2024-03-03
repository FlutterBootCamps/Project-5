import 'package:get_it/get_it.dart';
import 'package:get_storage/get_storage.dart';
import 'package:saudia_app_project_5/data_layer/data_services.dart';

Future setup() async {
  await GetStorage.init();

  GetIt.instance;
  GetIt.I.registerSingleton<DataServices>(DataServices());
  GetIt.I.get<DataServices>();
}







