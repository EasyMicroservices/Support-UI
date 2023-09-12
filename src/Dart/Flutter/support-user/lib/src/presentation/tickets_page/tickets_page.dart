import 'package:support_user/src/data/icons.dart';
import 'package:support_user/src/data/strings.dart';
import 'package:support_user/src/presentation/widgets/table_column.dart';

import 'package:flutter/material.dart';

class TicketsPage extends StatelessWidget {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      backgroundColor: Colors.white,
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
                AppStrings.myTickets,
                style: TextStyle(
                  color:Colors.black
                )
              ),
            ),
            const Icon(AppIcons.ticket, color: Colors.black)
          ]
        ),
        actions: [
          IconButton(
            onPressed: (){
              _scaffoldKey.currentState!.openEndDrawer();
            },
            icon: const Icon(AppIcons.list, color: Colors.black)
          )
        ],
        leading: IconButton(
          icon: const Icon(Icons.abc, color: Colors.black),
          onPressed: (){}
        )
      ),
      endDrawer: const Drawer(
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
                        hintText: AppStrings.searchText,
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
              padding: EdgeInsets.symmetric(horizontal: 10),
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
                  child: DataTable(
                    showDataRowDivider: false,
                    columns: [
                      DataColumn(
                        label: TableColumn(canFilter: false, columnName: AppStrings.status),
                      ),
                      DataColumn(
                        label: TableColumn(canFilter: false, columnName: AppStrings.lastModificationTime)
                      ),
                      DataColumn(
                        label: TableColumn(canFilter: true, columnName: AppStrings.ticketCreationTime)
                      ),
                      DataColumn(
                        label: TableColumn(canFilter: false, columnName: AppStrings.supporter)
                      ),
                      DataColumn(
                        label: TableColumn(canFilter: true, columnName: AppStrings.sensitivity)
                      ),
                      DataColumn(
                        label: TableColumn(canFilter: false, columnName: AppStrings.ticketName)
                      ),
                      DataColumn(
                        label: TableColumn(canFilter: true, columnName: AppStrings.id)
                      )
                    ],
                    rows: const [
                      DataRow(
                        cells: [
                          DataCell(Align(alignment: Alignment.center,child:Text('amir'))),
                          DataCell(Align(alignment: Alignment.center,child:Text('amir'))),
                          DataCell(Align(alignment: Alignment.center,child:Text('amir'))),
                          DataCell(Align(alignment: Alignment.center,child:Text('amir'))),
                          DataCell(Align(alignment: Alignment.center,child:Text('amir'))),
                          DataCell(Align(alignment: Alignment.center,child:Text('amir'))),
                          DataCell(Align(alignment: Alignment.center,child:Text('amir')))
                        ]
                      ),
                      DataRow(
                        cells: [
                          DataCell(Align(alignment: Alignment.center,child:Text('amir'))),
                          DataCell(Align(alignment: Alignment.center,child:Text('amir'))),
                          DataCell(Align(alignment: Alignment.center,child:Text('amir'))),
                          DataCell(Align(alignment: Alignment.center,child:Text('amir'))),
                          DataCell(Align(alignment: Alignment.center,child:Text('amir'))),
                          DataCell(Align(alignment: Alignment.center,child:Text('amir'))),
                          DataCell(Align(alignment: Alignment.center,child:Text('amir')))
                        ]
                      ),
                      DataRow(
                        cells: [
                          DataCell(Align(alignment: Alignment.center,child:Text('amir'))),
                          DataCell(Align(alignment: Alignment.center,child:Text('amir'))),
                          DataCell(Align(alignment: Alignment.center,child:Text('amir'))),
                          DataCell(Align(alignment: Alignment.center,child:Text('amir'))),
                          DataCell(Align(alignment: Alignment.center,child:Text('amir'))),
                          DataCell(Align(alignment: Alignment.center,child:Text('amir'))),
                          DataCell(Align(alignment: Alignment.center,child:Text('amir')))
                        ]
                      ),
                      DataRow(
                        cells: [
                          DataCell(Align(alignment: Alignment.center,child:Text('amir'))),
                          DataCell(Align(alignment: Alignment.center,child:Text('amir'))),
                          DataCell(Align(alignment: Alignment.center,child:Text('amir'))),
                          DataCell(Align(alignment: Alignment.center,child:Text('amir'))),
                          DataCell(Align(alignment: Alignment.center,child:Text('amir'))),
                          DataCell(Align(alignment: Alignment.center,child:Text('amir'))),
                          DataCell(Align(alignment: Alignment.center,child:Text('amir')))
                        ]
                      ),
                      DataRow(
                        cells: [
                          DataCell(Align(alignment: Alignment.center,child:Text('amir'))),
                          DataCell(Align(alignment: Alignment.center,child:Text('amir'))),
                          DataCell(Align(alignment: Alignment.center,child:Text('amir'))),
                          DataCell(Align(alignment: Alignment.center,child:Text('amir'))),
                          DataCell(Align(alignment: Alignment.center,child:Text('amir'))),
                          DataCell(Align(alignment: Alignment.center,child:Text('amir'))),
                          DataCell(Align(alignment: Alignment.center,child:Text('amir')))
                        ]
                      ),
                      DataRow(
                        cells: [
                          DataCell(Align(alignment: Alignment.center,child:Text('amir'))),
                          DataCell(Align(alignment: Alignment.center,child:Text('amir'))),
                          DataCell(Align(alignment: Alignment.center,child:Text('amir'))),
                          DataCell(Align(alignment: Alignment.center,child:Text('amir'))),
                          DataCell(Align(alignment: Alignment.center,child:Text('amir'))),
                          DataCell(Align(alignment: Alignment.center,child:Text('amir'))),
                          DataCell(Align(alignment: Alignment.center,child:Text('amir')))
                        ]
                      )
                    ]
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