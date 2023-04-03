import 'package:flutter/material.dart';
import 'package:medical_appointment/first_page_ui/first_pg_mid_ui.dart';
import 'package:medical_appointment/first_page_ui/first_pg_taglist.dart';

import 'first_pg_appbar.dart';

class First_pg_UI extends StatefulWidget {
  const First_pg_UI({Key? key}) : super(key: key);

  @override
  State<First_pg_UI> createState() => _First_pg_UIState();
}

class _First_pg_UIState extends State<First_pg_UI> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(child: Stack(children: [

          Column(
            children: [

              First_pg_Appbar(),
              First_pg_Tag_List(),
              First_pg_mid_UI()

            ],
          )
        ]),)
    );
  }
}
