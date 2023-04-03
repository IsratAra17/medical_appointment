import 'package:flutter/cupertino.dart';
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
      body: SafeArea(
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,

            children: [
          Expanded(
            flex: 2,
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  First_pg_Appbar(),
                   Padding(padding: EdgeInsets.only(left: 20),
                   child: Text("What are your symptoms?",style: TextStyle(color:Colors.black,fontSize: 25))),
                  First_pg_Tag_List(),
                  Padding(padding: EdgeInsets.only(left: 20),
                      child: Text("Popular doctors",style: TextStyle(color:Colors.black,fontSize: 25))),
                ]),
          ),
          Expanded(
            flex: 2,
            child: First_pg_mid_UI(),
          ),
        ]),
      ),
    );
  }
}
