import 'package:get/get.dart';
import 'package:hive/hive.dart';

class JWTController extends GetxController{
  var hiveBox = Hive.box("secrets");
  RxBool isAuth = false.obs;
  Future setAuth(String? token) async{
    await hiveBox.put("token", token);
    isAuth.value = true;
  }
  Future<String?> getAuthToken()async{
    var lastToken = await hiveBox.get("token");
    if(lastToken != null){
      isAuth.value = true;
    }
    return lastToken;
  }

  @override
  void onInit() async{
    await getAuthToken();
    super.onInit();
  }

}

// push is working