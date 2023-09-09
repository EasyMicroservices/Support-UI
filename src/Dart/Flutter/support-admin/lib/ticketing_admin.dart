library ticketing_admin;

import 'src/data/route_pages.dart';
import 'src/presentation/login_page/login_page.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Ticketing extends StatelessWidget {
  const Ticketing({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      getPages: pageRouts,
      home: LoginPage()
    );
  }
}
