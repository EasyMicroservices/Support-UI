import 'package:support_user/src/data/shared/list.dart';
import 'package:get/get.dart';

class AddPageController extends GetxController{
  int? selectedSensitivities;
  void changeSelectedSensitivities(String value){
    selectedSensitivities = SharedLists.sensitivities.indexOf(value);
  }
}