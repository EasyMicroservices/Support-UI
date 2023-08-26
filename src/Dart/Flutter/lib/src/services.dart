import 'model.dart';

import 'package:http/http.dart'as http;
import 'dart:convert';
class PackageServices{
  static Future<Model> getTickets(String link)async{
    final response = await http.get(
      Uri.parse(link),
    );
    return Model.fromJson({"ticketsList":jsonDecode(response.body)});
  }
  static Future<void> addTickets(TicketsList ticket, String link)async{
    Map ticketData = {
      'id' : ticket.id,
      'title' : ticket.title,
      'sensitivityStatus' : ticket.sensitivityStatus,
      'status' : ticket.status,
      'support' : ticket.support,
      'creationTime' : ticket.creationTime,
      'lastModificationTime' : ticket.lastModificationTime,
    };
    final response = await http.put(
      Uri.parse(link),
      body: jsonEncode(ticketData)
    );
  }
}