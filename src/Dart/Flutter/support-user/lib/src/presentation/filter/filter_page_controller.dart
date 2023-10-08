import 'package:get/get.dart';

class FilterPageController extends GetxController{
  List<int> selectedSupporters = [];
  List<int> selectedStatuses = [];
  List<int> selectedSensitivities = [];
  void changeSSupporters(List <int> ids){
    selectedStatuses = ids;
    update([1]);
  }
  void changeSStatuses(List <int> ids){
    selectedStatuses = ids;
    update([2]);
  }
  void changeSSensitivities(List <int> ids){
    selectedSensitivities = ids;
    update([3]);
  }
}