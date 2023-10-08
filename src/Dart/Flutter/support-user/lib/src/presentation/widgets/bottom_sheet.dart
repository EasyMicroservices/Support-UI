import 'package:support_user/src/data/widgets/strings.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

typedef OnClose = void Function();

void appBottomSheet(BuildContext context, {
  required Widget content,
  String? title,
  bool bottomPadding = true,
  bool actionButton = false,
  bool showDivider = true,
  required OnClose onClose,
  OnClose? onActionButtonPress}){
  bool actionButtonPress = false;
  Future<void> future = showModalBottomSheet(
    backgroundColor: Colors.transparent,
    isScrollControlled: true,
    context: context,
    builder: (BuildContext context){
      return SizedBox(
        height: MediaQuery.of(context).size.height,
        child: Column(
          children: [
            Expanded(
              child: GestureDetector(
                onTap: (){
                  Get.back();
                  onClose();
                }
              )
            ),
            Material(
              color: Colors.white,
              borderRadius: const BorderRadius.only(topRight: Radius.circular(32), topLeft: Radius.circular(32)),
              child: Column(
                children: [
                  Container(
                    margin: const EdgeInsets.only(top: 8, bottom: 26),
                    width: 32,
                    height: 2,
                    color: Colors.blueGrey
                  ),
                  if(title!=null) Text(title, style: TextStyle(color: Colors.black)),
                  if(showDivider)const Padding(
                    padding: EdgeInsets.symmetric(vertical: 24),
                    child: Divider(
                      color: Colors.blueGrey,
                      height: 1
                    )
                  )else SizedBox(width: MediaQuery.of(context).size.width),
                  Padding(
                    padding: EdgeInsets.only(bottom:bottomPadding?48:0),
                    child: ConstrainedBox(
                      constraints: BoxConstraints(
                        maxHeight: MediaQuery.of(context).size.height-300
                      ),
                      child: SingleChildScrollView(
                        child: content
                      )
                    )
                  ),
                  Visibility(
                    visible: actionButton,
                    child: Container(
                      color: Colors.white,
                      width: MediaQuery.of(context).size.width,
                      padding: const EdgeInsets.all(20),
                      height: 88,
                      child: MaterialButton(
                        color: Colors.black,
                        elevation: 0,
                        highlightElevation: 0,
                        padding: const EdgeInsets.all(0),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8)
                        ),
                        onPressed: onActionButtonPress==null?null:(){
                          actionButtonPress = true;
                          onActionButtonPress();
                          Get.back();
                        },
                        child: const Text(WidgetsStrings.bottomSheetButtonString, style: TextStyle(color: Colors.white))
                      )
                    )
                  )
                ]
              )
            )
          ]
        )
      );
    }
  );
  future.then((value) =>actionButtonPress?(){}:onClose());
}