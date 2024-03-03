import 'package:get_it/get_it.dart';
import 'package:get_storage/get_storage.dart';
import 'package:project_5/data/data_layer.dart';

setup() async {
  await GetStorage.init();
  GetIt.instance;
  GetIt.I.registerSingleton<AllData>(AllData());
  GetIt.I.get<AllData>();
}
