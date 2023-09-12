import 'package:ticketing_admin/src/data/strings.dart';

import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF2F5F7),
      body: Center(
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 100),
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(30),
            border: Border.all(width: 1, color: Color(0xFFC2D1D9))
          ),
          child: Padding(
            padding: const EdgeInsets.only(right: 55, left: 60, top: 65, bottom: 95),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Text(AppStrings.loginToSupport),
                const Padding(
                  padding: const EdgeInsets.only(top: 35,bottom: 85),
                  child: Text(AppStrings.enterYourInformationToLogin),
                ),
                Row(
                  children: [
                    Expanded(
                      child: TextField(
                        textDirection: TextDirection.rtl,
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.white,
                          enabledBorder: OutlineInputBorder(
                            borderSide: const BorderSide(width: 1, color: Color(0xFFEFEFEF)),
                            borderRadius: BorderRadius.circular(8)
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: const BorderSide(width: 1, color: Color(0xFFEFEFEF)),
                            borderRadius: BorderRadius.circular(8)
                          )
                        )
                      )
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 20),
                      child: Text(AppStrings.userName),
                    )
                  ]
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Row(
                    children: [
                      Expanded(
                        child: TextField(
                          textDirection: TextDirection.rtl,
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.white,
                            enabledBorder: OutlineInputBorder(
                              borderSide: const BorderSide(width: 1, color: Color(0xFFEFEFEF)),
                              borderRadius: BorderRadius.circular(8)
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: const BorderSide(width: 1, color: Color(0xFFEFEFEF)),
                              borderRadius: BorderRadius.circular(8)
                            ),
                            prefixIcon: IconButton(
                              icon: Icon(Icons.remove_red_eye),
                              onPressed: (){},
                            )
                          )
                        )
                      ),
                      const Padding(
                        padding: EdgeInsets.only(left: 20),
                        child: Text(AppStrings.password),
                      )
                    ]
                  ),
                )
              ]
            )
          )
        )
      )
    );
  }
}