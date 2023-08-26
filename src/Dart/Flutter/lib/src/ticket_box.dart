import 'strings.dart';
import 'lists.dart';

import 'package:flutter/material.dart';
import 'package:persian_number_utility/persian_number_utility.dart';
import 'package:shamsi_date/shamsi_date.dart';

class TicketBox extends StatelessWidget {
  TicketBox({
    required this.id,
    required this.title,
    required this.sensitivityStatus,
    required this.status,
    required this.creationTime,
    required this.support,
    required this.lastModificationTime
  });
  final int id;
  final String title;
  final int sensitivityStatus;
  final int status;
  final String creationTime;
  final String? support;
  final String? lastModificationTime;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      width: MediaQuery.of(context).size.width,
      decoration:  BoxDecoration(
        color: Colors.black12,
        borderRadius: BorderRadius.circular(8)
      ),
      child: Column(
        children: [
          Text('$id : ${DefaultStrings.id}'),
          Text(
            '${DefaultStrings.title} : $title',
            textDirection: TextDirection.rtl
          ),
          Text(
            '${DefaultStrings.sensitivity} : ${PackageLists.sensitivities[sensitivityStatus]}'
          ),
          Text(
              '$status : ${DefaultStrings.status}'
          ),
          Text(
            '${convertDateToJalali(creationTime)} : ${DefaultStrings.creationTime}'
          ),
          if(support!=null)Text(
            '${DefaultStrings.support} : $support',
            textDirection: TextDirection.rtl
          ),
          if(lastModificationTime!=null)Text(
            '${convertDateToJalali(lastModificationTime!)} : ${DefaultStrings.lastModificationTime}',
          )
        ]
      )
    );
  }
}

String convertDateToJalali(String date){
  final convert = DateTime.parse(date).toJalali();
  final format = convert.formatter;
  return '${format.yyyy}/${format.mm}/${format.dd}'.toPersianDigit();
}