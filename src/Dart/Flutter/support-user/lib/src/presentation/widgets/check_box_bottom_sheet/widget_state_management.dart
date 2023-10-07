import 'package:get/get.dart';

class CheckBoxBottomSheetStateController extends GetxController{
  List<int> idsSelected = [];

  void addIds(List<int> ids){
    idsSelected = [];
    idsSelected.addAll(ids);
  }

  void addOrRemoveId(int id){
    if(idsSelected.contains(id)){
      idsSelected.remove(id);
    }else{
      idsSelected.add(id);
    }
    update();
  }

  void selectAll(List<int> ids){
    idsSelected = [];
    idsSelected.addAll(ids);
    update();
  }

  void removeAll(){
    idsSelected = [];
    update();
  }
}