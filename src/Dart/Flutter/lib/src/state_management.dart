import 'package:get/get.dart';

class PageStateManagement extends GetxController{
  void reloadData(){
    Get.back();
    update();
  }
}