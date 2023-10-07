import 'package:support_user/src/data/shared/icons.dart';

import 'package:flutter/material.dart';

class TableColumn extends StatelessWidget {
  TableColumn({required this.canFilter, required this.columnName});

  final bool canFilter;
  final String columnName;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Align(
        alignment: Alignment.center,
        child: canFilter ? Row(
          mainAxisAlignment: MainAxisAlignment.center,
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
              child: Text(columnName)
            )
          ]
        ) : Text(columnName)
      )
    );
  }
}