import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:medical_appointment/schedule_ui/taglist_visitors.dart';
import 'package:medical_appointment/model_doctors/model_doctor_info.dart';



class Futurevisit_UI extends StatefulWidget {
  const Futurevisit_UI({Key? key}) : super(key: key);

  @override
  State<Futurevisit_UI> createState() => _Futurevisit_UIState();
}

class _Futurevisit_UIState extends State<Futurevisit_UI> {

  @override
  Widget build(BuildContext context) {
    return SafeArea(child:
      Padding(padding: EdgeInsets.only(top: 10, left: 15.0),

        child:Column(
            crossAxisAlignment: CrossAxisAlignment.start,
          children:[
            Text("Future Visits",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,)),

            Container(
                  child:SingleChildScrollView(
                    child: Column(
                      children: [
                        Padding(padding: EdgeInsets.symmetric(vertical: 10,horizontal: 4),
                       child: SizedBox(
                           height: 250,
                            width: double.infinity,
                            child: ListView.builder(
                                shrinkWrap: true,
                               // scrollDirection: Axis.horizontal,
                                itemCount: drList.length,
                                itemBuilder: (context, index) {

                                  return Padding(padding: EdgeInsets.symmetric(vertical: 6),
                                      child:Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [

                                          Card(
                                            child:

                                            Column(
                                              children: [
                                                Container(
                                                  padding: EdgeInsets.symmetric(vertical: 10,horizontal: 10),
                                                  child:  Row(
                                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                    children: [


                                                        Column(
                                                          crossAxisAlignment: CrossAxisAlignment.start,
                                                          children: [
                                                            Text(
                                                              "${drList[index].name}",
                                                              style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),
                                                            ),
                                                            Text(
                                                              "${drList[index].designation}",
                                                              style: TextStyle(fontSize: 10,color: Colors.grey),
                                                            ),
                                                          ],
                                                        ),

                                                     CircleAvatar(
                                                              backgroundImage: NetworkImage("${drList[index].image}"),
                                                            //ClipOval(child: Icon(Icons.man_outlined, size: 50,color: Colors.pink,)
                                                            //Image.asset("images/dr_avatar.png",height: 50,width: 50,),
                                                          ),
                                                    ],
                                                  ),

                                                ),
                                                SizedBox(height: 20,width: 10,),




                                              ],


                                            ),

                                          ),


                                        ],
                                      )

                                  );

                                })
                        )
            ),
                      ],

                    ),
                  )


              ),




  ], )));
  }
}
