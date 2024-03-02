import 'dart:convert';

import 'package:floward/data/data_set.dart';
import 'package:floward/model/model_proudect.dart';
import 'package:get_storage/get_storage.dart';
class DataService {
  final _box = GetStorage();
  List <Proudect> allProducts =[];

   getAllProducts() {
    products.map((item) {
      allProducts.add(Proudect.fromJson(item));
    }).toList();
  }
  
}