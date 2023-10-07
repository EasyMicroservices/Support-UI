import 'package:support_user/src/application/show.dart';
import 'package:support_user/src/data/shared/icons.dart';
import 'package:support_user/src/data/show/strings.dart';
import 'package:support_user/src/data/shared/date_time_formats.dart';
import 'package:support_user/src/data/shared/list.dart';
import 'package:support_user/src/presentation/widgets/table_column.dart';
import 'package:support_user/src/presentation/filter/filter_page.dart';
import 'package:support_user/src/presentation/add/add_page.dart';
import 'show_page_controller.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ShowPage extends StatelessWidget {
  final ShowPageController controller = Get.put(ShowPageController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      floatingActionButtonLocation: FloatingActionButtonLocation.startFloat,
      floatingActionButton: FloatingActionButton.extended(
        backgroundColor: Colors.black,
        label: const Icon(Icons.add, color: Colors.white),
        icon: const Text(ShowStrings.registerNewTicket, style: TextStyle(color: Colors.white)),
        onPressed: ()async{
          Get.to(AddPage());
        }
      ),
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        elevation: 0,
        title: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              alignment: Alignment.center,
              width: 15,
              height: 15,
              decoration: const BoxDecoration(
                color: Colors.black,
                shape: BoxShape.circle
              ),
              child: const Text('1', style: TextStyle(fontSize: 10))
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Text(
                ShowStrings.myTickets,
                style: TextStyle(
                  color:Colors.black
                )
              )
            ),
            const Icon(AppIcons.ticket, color: Colors.black)
          ]
        ),
        actions: [
          IconButton(
            onPressed: (){
            },
            icon: const Icon(AppIcons.list, color: Colors.black)
          )
        ],
        leading: IconButton(
          icon: const Icon(Icons.abc, color: Colors.black),
          onPressed: (){}
        )
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              children: [
                Container(
                  clipBehavior: Clip.hardEdge,
                  decoration: BoxDecoration(
                    boxShadow: const [
                      BoxShadow(
                        color: Color.fromRGBO(13, 10, 44, 0.08),
                        offset: Offset(0,2),
                        blurRadius: 6
                      )
                    ],
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12)
                  ),
                  child: Material(
                    color: Colors.transparent,
                    child: InkWell(
                      onTap: (){
                        Get.to(FilterPage());
                      },
                      child: const SizedBox(
                        height: 48,
                        width: 48,
                        child: Icon(Icons.filter, color: Colors.black)
                      )
                    )
                  )
                ),
                Expanded(
                  child: Container(
                    height: 48,
                    clipBehavior: Clip.hardEdge,
                    margin: const EdgeInsets.only(left: 10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Colors.white,
                      boxShadow: const [
                        BoxShadow(
                          color: Color.fromRGBO(13, 10, 44, 0.08),
                          offset: Offset(0,2),
                          blurRadius: 6
                        )
                      ]
                    ),
                    child: const TextField(
                      textDirection: TextDirection.rtl,
                      decoration: InputDecoration(
                        isDense: true,
                        focusedBorder: InputBorder.none,
                        enabledBorder: InputBorder.none,
                        filled: true,
                        fillColor: Colors.white,
                        hintText: ShowStrings.searchText,
                        hintTextDirection: TextDirection.rtl
                      )
                    )
                  )
                )
              ]
            )
          ),
          Expanded(
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              clipBehavior: Clip.hardEdge,
              height: double.infinity,
              margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(24),
                boxShadow: const [
                  BoxShadow(
                    color: Color.fromRGBO(13, 10, 44, 0.08),
                    offset: Offset(0,2),
                    blurRadius: 6,
                    spreadRadius: 0
                  )
                ]
              ),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: FutureBuilder(
                    future: ShowPageServices.getSearchedPoll(
                      filterBy: controller.filterBy,
                      selectedStatuses: controller.selectedStatuses,
                      selectedSensitivities: controller.selectedSensitivities,
                      selectedSupporters: controller.selectedSupporters),
                    builder:(BuildContext context, AsyncSnapshot<TicketModel> snapshot){
                      if(snapshot.hasData){
                        return DataTable(
                          showDataRowDivider: false,
                          columns: [
                            DataColumn(
                              label: TableColumn(canFilter: false, columnName: ShowStrings.status),
                            ),
                            DataColumn(
                              label: TableColumn(canFilter: false, columnName: ShowStrings.lastModificationTime)
                            ),
                            DataColumn(
                              label: TableColumn(canFilter: true, columnName: ShowStrings.ticketCreationTime),
                              onSort: (int index, bool ascending){}
                            ),
                            DataColumn(
                              label: TableColumn(canFilter: false, columnName: ShowStrings.supporter)
                            ),
                            DataColumn(
                              label: TableColumn(canFilter: true, columnName: ShowStrings.sensitivity),
                              onSort: (int index, bool ascending){}
                            ),
                            DataColumn(
                              label: TableColumn(canFilter: false, columnName: ShowStrings.ticketName)
                            ),
                            DataColumn(
                              label: TableColumn(canFilter: true, columnName: ShowStrings.id),
                              onSort: (int index, bool ascending){}
                            )
                          ],
                          rows: snapshot.data!.tickets!.map(
                            (e) => DataRow(cells: [
                              DataCell(
                                Align(
                                  alignment: Alignment.center,
                                  child: Text(e.status.toString())
                                )
                              ),
                              DataCell(
                                Align(
                                  alignment: Alignment.center,
                                  child: Text(AppDateAndTimeFormats.simpleDate(e.lastModificationTime!))
                                )
                              ),
                              DataCell(
                                Align(
                                  alignment: Alignment.center,
                                  child: Text(AppDateAndTimeFormats.simpleDate(e.ticketCreationTime!))
                                )
                              ),
                              DataCell(
                                Align(
                                  alignment: Alignment.center,
                                  child: Text(e.supporter.toString())
                                )
                              ),
                              DataCell(
                                Align(
                                  alignment: Alignment.center,
                                  child: Text(SharedLists.sensitivities[e.sensitivity!])
                                )
                              ),
                              DataCell(
                                Align(
                                  alignment: Alignment.center,
                                  child: Text(e.title.toString())
                                )
                              ),
                              DataCell(
                                Align(
                                  alignment: Alignment.center,
                                  child: Text(e.id.toString())
                                )
                              )
                            ])
                          ).toList()
                        );
                      }else{
                        return const Center(
                          child: CircularProgressIndicator()
                        );
                      }
                    }
                  )
                )
              )
            )
          )
        ]
      )
    );
  }
}