import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:medical_appointment/schedule_ui/taglist_visitors.dart';
import 'package:medical_appointment/model_doctors/model_doctor_info.dart';

import 'package:intl/intl.dart'; // for date format

class Nearvisit_UI extends StatefulWidget {
  const Nearvisit_UI({Key? key}) : super(key: key);

  @override
  State<Nearvisit_UI> createState() => _Nearvisit_UIState();
}

class _Nearvisit_UIState extends State<Nearvisit_UI> {
  @override
  Widget build(BuildContext context) {
    return
      SafeArea(child:     Container(



          padding: EdgeInsets.only(top: 20, left: 15.0,right: 15.0),

          child:Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(padding: EdgeInsets.only(top: 10)),
              Text("Nearest Visits",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,)),
              Card(
                child:

                Column(
                  children: [
                Padding(padding: EdgeInsets.symmetric(vertical: 6),
                  child:Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [

                      Card(

                        child:
                            Container(
                              height: 80,
                              width: double.infinity,
                              padding: EdgeInsets.symmetric(vertical: 10,horizontal: 10),
                              child:  Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [

                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "${drList[0].name}",
                                        style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),
                                      ),
                                      Text(
                                        "${drList[0].designation}",
                                        style: TextStyle(fontSize: 10,color: Colors.grey),
                                      ),
                                    ],
                                  ),

                                  CircleAvatar(
                                    backgroundImage: NetworkImage("${drList[0].image}"),
                                    //ClipOval(child: Icon(Icons.man_outlined, size: 50,color: Colors.pink,)
                                    //Image.asset("images/dr_avatar.png",height: 50,width: 50,),
                                  ),
                                ],
                              ),

                            ),
      ),
    SizedBox(height: 5,width: 10,),

    Card(
                      child:
                      Container(


                        child:
                        Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                 Row(
                                   children: [Icon(Icons.date_range),Text("${DateFormat("MMMM, dd, yyyy").format(DateTime.now())}")],),
                                 Row(children: [Icon(Icons.punch_clock_rounded),Text("${DateFormat("hh:mm:ss a").format(DateTime.now())}")],),
                                 Row(children: [Icon(Icons.circle,color: Colors.green,),Text("Confirmed")],),
                              ],
                            ),


                            SizedBox(height: 20,width: 10,),


                            Tag_Visitors(),
                            SizedBox(height: 10,width: 10,),

                          ],),),



                    ),


                    ],),),



]
                ),

              ),


            ],
          )








      ),
      );
  }
}
