import 'package:shamsi_date/shamsi_date.dart';

class AppDateAndTimeFormats{
  static String simpleDate (String date){
    DateTime convertedDate = DateTime.parse(date);
    final format = Jalali.fromDateTime(convertedDate).formatter;
    return '${format.yyyy}/${format.mm}/${format.dd}';
  }
}