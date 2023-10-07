import 'package:support_user/src/data/widgets/strings.dart';

import 'package:flutter/material.dart';

class FilterBox extends StatelessWidget {
  FilterBox({required this.onPressed, required this.title, required this.child});
  final Function() onPressed;
  final String title;
  final Widget? child;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 20, left: 20, bottom: 20),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 10),
            child: Align(
              alignment: Alignment.centerRight,
              child: Text(title)
            ),
          ),
          InkWell(
            borderRadius: BorderRadius.circular(8),
            onTap: onPressed,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 10),
              height: 48,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                border: Border.all(color: Colors.black, width: 1)
              ),
              child: child??const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(Icons.arrow_drop_down, color: Colors.black),
                  Text(WidgetsStrings.choose, style: TextStyle(color: Colors.black))
                ]
              )
            )
          )
        ]
      )
    );
  }
}