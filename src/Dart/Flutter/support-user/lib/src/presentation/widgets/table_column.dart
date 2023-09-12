import 'package:support_user/src/data/icons.dart';

import 'package:flutter/material.dart';

class TableColumn extends StatelessWidget{
  TableColumn({required this.canFilter, required this.columnName});
  final bool canFilter;
  final String columnName;

  @override
  Widget build(BuildContext context) {
    if(canFilter){
      return Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(AppIcons.sortUp, color: Colors.black, size: 13),
              Icon(AppIcons.sortDown, color: Colors.black, size: 13)
            ]
          ),
          Padding(
            padding: const EdgeInsets.only(left: 5),
            child: Text(columnName),
          )
        ]
      );
    }else{
      return Text(columnName);
    }
  }
}