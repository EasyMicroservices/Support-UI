import 'model.dart';
import 'services.dart';
import 'ticket_box.dart';
import 'add_ticket_page.dart';
import 'state_management.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
class TicketingPage extends StatelessWidget {
  TicketingPage({
    required this.link,
    required this.addLink,
    required this.fullName,
    required this.profileUrl,
  });
  final String link;
  final String addLink;
  final String fullName;
  final String profileUrl;
  final PageStateManagement controller = Get.put(PageStateManagement());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          Get.to(AddTicketPage(link: addLink));
        }
      ),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Row(
          children: [
            Container(
              width: 32,
              height: 32,
              padding: const EdgeInsets.all(3),
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white,
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(100),
                child: Image.network(
                  profileUrl,
                  loadingBuilder: (BuildContext context, Widget child, ImageChunkEvent?loadingProgress){
                    if(loadingProgress == null){
                      return child;
                    }else{
                      return const Center(
                          child: CircularProgressIndicator(strokeWidth: 2)
                      );
                    }
                  }
                )
              )
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Text(
                fullName
              )
            )
          ]
        )
      ),
      body: GetBuilder<PageStateManagement>(
        builder:(_)=> FutureBuilder(
          future: PackageServices.getTickets(link),
          builder: (BuildContext context, AsyncSnapshot<Model> snapshot){
            if(snapshot.connectionState == ConnectionState.waiting){
              return const Center(
                child: CircularProgressIndicator(),
              );
            }else if(snapshot.connectionState == ConnectionState.done){
              return ListView.builder(
                itemCount: snapshot.data!.ticketsList!.length,
                itemBuilder: (BuildContext context, int index){
                  return TicketBox(
                    id: snapshot.data!.ticketsList![index].id!,
                    title: snapshot.data!.ticketsList![index].title!,
                    sensitivityStatus: snapshot.data!.ticketsList![index].sensitivityStatus!,
                    status: snapshot.data!.ticketsList![index].status!,
                    creationTime: snapshot.data!.ticketsList![index].creationTime!,
                    lastModificationTime: snapshot.data!.ticketsList![index].lastModificationTime,
                    support: snapshot.data!.ticketsList![index].support,
                  );
                }
              );
            }else{
              return Text(snapshot.error.toString());
            }
          }
        )
      )
    );
  }
}