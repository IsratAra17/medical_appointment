import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Schedule_appbar extends StatefulWidget {
  const Schedule_appbar({Key? key}) : super(key: key);

  @override
  State<Schedule_appbar> createState() => _Schedule_appbarState();
}

class _Schedule_appbarState extends State<Schedule_appbar> {
  @override
  Widget build(BuildContext context) {
    return Container(

      padding: EdgeInsets.only(top: 20,bottom: 40,
          left: 15.0),
      child: Row(children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,

          children: [
            Text("Schedule",style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold),),
          ],
        ),

      ],),
    );
  }
}



