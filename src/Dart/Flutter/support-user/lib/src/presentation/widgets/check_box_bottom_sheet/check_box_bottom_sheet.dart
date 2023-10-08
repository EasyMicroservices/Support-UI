import 'widget_state_management.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CheckBoxBottomSheet extends StatelessWidget {
  CheckBoxBottomSheet({
    required this.labels,
    required this.selectedIds,
    required this.itemsChanged,
    this.idsStartWithZero = false,
    this.customIds,
    this.selectAll = false
  });

  final List<String> labels;
  final List<int> selectedIds;
  final bool idsStartWithZero;
  final List<int>? customIds;
  final bool selectAll;
  final controller = Get.put(CheckBoxBottomSheetStateController());
  final Function(List<int> ids) itemsChanged;
  @override
  Widget build(BuildContext context) {
    controller.addIds(selectedIds);
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Visibility(
          visible: selectAll,
            child:GetBuilder<CheckBoxBottomSheetStateController>(
              builder:(_)=> InkWell(
                splashColor: Colors.white,
                onTap: (){
                  if(controller.idsSelected.length < labels.length){
                    if(customIds == null){
                      List<int> ids = [];
                      labels.asMap().forEach((index, value) => ids.add(idsStartWithZero?index:index+1));
                      controller.selectAll(ids);
                      itemsChanged(controller.idsSelected);
                    }else{
                      controller.selectAll(customIds!);
                      itemsChanged(controller.idsSelected);
                    }
                  }else{
                    controller.removeAll();
                    itemsChanged(controller.idsSelected);
                  }
                },
                child: Container(
                  height: 48,
                  margin: const EdgeInsets.only(left: 20, right: 20, bottom: 10),
                  padding: const EdgeInsets.only(left: 15, right: 8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(
                        controller.idsSelected.length < labels.length?Icons.check_box_outline_blank:Icons.check_box,
                        color: Colors.blueAccent
                      ),
                      const Text('همه موارد', style: TextStyle(color: Colors.grey))
                    ]
                  )
                )
              )
            )
        ),
        for(int index=0; index<labels.length; index++)
          GetBuilder<CheckBoxBottomSheetStateController>(
            builder:(_)=> InkWell(
              splashColor: Colors.white,
              onTap: (){
                int id = customIds!=null?customIds![index]:idsStartWithZero?index:index+1;
                controller.addOrRemoveId(id);
                itemsChanged(controller.idsSelected);
              },
              child: Container(
                height: 48,
                margin: const EdgeInsets.only(left: 20, right: 20, bottom: 10),
                padding: const EdgeInsets.only(left: 15, right: 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      controller.idsSelected.contains(customIds == null?(idsStartWithZero?index:index+1):
                        (customIds![index]))?Icons.check_box: Icons.check_box_outline_blank,
                      color: Colors.blueAccent
                    ),
                    Text(labels[index], style: const TextStyle(color: Colors.blueGrey))
                  ]
                )
              )
            )
          )
      ]
    );
  }
}
