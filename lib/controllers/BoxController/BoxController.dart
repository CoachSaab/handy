import 'dart:convert';

import 'package:get/get.dart';
import 'package:hive/hive.dart';

class BoxController extends GetxController{
  var hiveBox = Hive.box("data");
  Future<bool> putValue(String key,value)async{
    value = jsonEncode(value);
    await hiveBox.put(key, value);
    return value;
  }
  Future getValue(String key )async{
    var res =  await  hiveBox.get("data");
    var result = jsonDecode(res);
    return result;
  }
}