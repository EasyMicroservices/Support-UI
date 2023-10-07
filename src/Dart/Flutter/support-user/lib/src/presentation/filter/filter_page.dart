import 'package:support_user/src/data/filter/strings.dart';
import 'package:support_user/src/presentation/widgets/bottom_sheet.dart';
import 'package:support_user/src/presentation/widgets/filter_box.dart';
import 'package:support_user/src/presentation/widgets/check_box_bottom_sheet/check_box_bottom_sheet.dart';
import 'filter_page_controller.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class _TemporaryData{
  List<int> selectedSupporters = [];
  List<int> selectedStatuses = [];
  List<int> selectedSensitivities = [];
  void removeData(){
    selectedSupporters = [];
    selectedStatuses = [];
    selectedSensitivities = [];
  }
  void changeSSupporters(List <int> ids){
    selectedStatuses = ids;
  }
  void changeSStatuses(List <int> ids){
    selectedStatuses = ids;
  }
  void changeSSensitivities(List <int> ids){
    selectedSensitivities = ids;
  }
}

class FilterPage extends StatelessWidget {
  final _TemporaryData temporaryData = _TemporaryData();
  final FilterPageController controller = Get.put(FilterPageController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leadingWidth: 110,
        centerTitle: true,
        titleTextStyle: TextStyle(color: Colors.black),
        title: const Text(FilterStrings.filters),
        actions: [IconButton(
          onPressed: (){
            Get.back();
          },
          icon: const Icon(Icons.close, color: Colors.black)
        )],
        leading: TextButton.icon(
          onPressed: (){print('asdasd');},
          icon: const Text(FilterStrings.removeFilters, style: TextStyle(color: Colors.black)),
          label: const Icon(Icons.delete, color: Colors.black)
        ),
        bottom: const PreferredSize(
          preferredSize: Size(double.infinity, 1),
          child: Divider(
            color: Colors.black,
            height: 1
          )
        )
      ),
      body: Column(
        children: [
          FilterBox(
            onPressed: (){
              appBottomSheet(
                context,
                content: CheckBoxBottomSheet(
                  labels: const ['amir','ali','amir','ali','amir','ali','amir','ali','amir','ali','amir','ali','amir','ali','amir','ali'],
                  customIds: const [10,20,30,40,50,60,70,80,90,100,110,120,130,140,150,160],
                  selectedIds: controller.selectedSupporters,
                  itemsChanged: temporaryData.changeSSupporters
                ),
                onClose: (){},
                actionButton: true,
                onActionButtonPress: (){}
              );
            },
            title: FilterStrings.supporter,
            child: null
          ),
          FilterBox(
            onPressed: (){
              appBottomSheet(
                context,
                content: CheckBoxBottomSheet(
                  labels: const ['amir','ali','amir','ali','amir','ali','amir','ali','amir','ali','amir','ali','amir','ali','amir','ali'],
                  customIds: const [10,20,30,40,50,60,70,80,90,100,110,120,130,140,150,160],
                  selectedIds: controller.selectedSensitivities,
                  itemsChanged: temporaryData.changeSSensitivities
                ),
                onClose: (){},
                actionButton: true,
                onActionButtonPress: (){}
              );
            },
            title: FilterStrings.sensitivity,
            child: null
          ),
          FilterBox(
            onPressed: (){
              appBottomSheet(
                context,
                content: CheckBoxBottomSheet(
                  labels: const ['amir','ali','amir','ali','amir','ali','amir','ali','amir','ali','amir','ali','amir','ali','amir','ali'],
                  customIds: const [10,20,30,40,50,60,70,80,90,100,110,120,130,140,150,160],
                  selectedIds: controller.selectedStatuses,
                  itemsChanged: temporaryData.changeSStatuses
                ),
                onClose: (){},
                actionButton: true,
                onActionButtonPress: (){}
              );
            },
            title: FilterStrings.status,
            child: null
          )
        ]
      )
    );
  }
}