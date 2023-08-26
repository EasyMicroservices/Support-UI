import 'strings.dart';
import 'services.dart';
import 'model.dart';
import 'ticket_page.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AddTicketPage extends StatelessWidget {
  AddTicketPage({required this.link});
  final String link;
  final TextEditingController title = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(DefaultStrings.addTicket),
      ),
      body: Column(
        children: [
          TextField(
            controller: title,
          )
        ]
      )
    );
  }
  /*void showAddDialog(BuildContext context){
    showDialog(
      context: context,
      builder: (BuildContext context){
        return Dialog(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextField(controller: title),
              ElevatedButton(
                onPressed: (){
                  TicketsList ticket = TicketsList(
                    title: title.text,
                    id: 1,
                    support: "محمد",
                    status: 1,
                    sensitivityStatus: 1,
                    creationTime: "2023-08-19T08:10:28.301Z",
                    lastModificationTime: "2023-08-19T08:10:28.301Z"
                  );
                  PackageServices.addTickets(ticket, link).then((value) => added());
                },
                child: Text(
                  DefaultStrings.add
                )
              )
            ],
          ),
        );
      }
    );
  }*/
}