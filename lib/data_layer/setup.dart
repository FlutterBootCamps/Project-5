import 'package:floward/data_layer/data_layer.dart';
import 'package:get_storage/get_storage.dart';
import 'package:get_it/get_it.dart';

Future setup () async {
await GetStorage.init();

GetIt.I.registerLazySingleton<DataService>(() => DataService());

}

