import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:medical_appointment/model_doctors/model_doctor_info.dart';

class Second_p_Mid_UI extends StatefulWidget {
  const Second_p_Mid_UI({Key? key}) : super(key: key);

  @override
  State<Second_p_Mid_UI> createState() => _Second_p_Mid_UIState();
}

class _Second_p_Mid_UIState extends State<Second_p_Mid_UI> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Container(
      color: Colors.white,

    padding: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
        child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "About doctor",
            style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),
          ),
          Text(
              "Dr. Viola Dunn's an experienced specialist who is \nconstantly working on improving her skills"),
        SizedBox(height: 15),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [

              Text("Reviews  ⭐4.9 (124)", style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold)),
              Text(
                "See all",
                style: TextStyle(color: Colors.blue),
              ),
            ],
          ),
//2nd part start

          Container(
            child:SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(
                    height: 150,
                      width: double.infinity,
                      child: ListView.builder(
                        shrinkWrap: true,

                          scrollDirection: Axis.horizontal,
                          itemCount: drList.length,
                          itemBuilder: (context, index) {

                            return Padding(padding: EdgeInsets.symmetric(vertical: 6),
                              child: Card(
                                color: Colors.white,
                                child: Column(

                                  children: [
                                    Padding(padding: EdgeInsets.all(10)),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                                          children: [
                                            Padding(padding: EdgeInsets.only(
                                                left: 5,right: 10)),
                                            CircleAvatar(
                                              radius:32,
                                              backgroundImage: NetworkImage(
                                                  "${drList[index].image}"
                                              ),
                                            ),

                                            Text("${drList[index].name}"),
                                          ],
                                        ),
                                        SizedBox(width: 20,),
                                        Row(children: [
                                          Icon(Icons.star,color: Colors.yellowAccent,)
                                        ],),
                                      ],
                                    ),
                                    Row(children: [Text("Review")],),
                                  ],
                                ),
                              ),

                            );

                          })
                  )
                ],
              ),
            )


          ),

//3rd part
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              DecoratedBox(decoration: BoxDecoration(color: Colors.white)),
              Text(
                "Location",
                style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  CircleAvatar(
                    radius: 20,
                    backgroundColor: Colors.grey.withOpacity(0.4),
                    child: Icon(Icons.location_on,color: Colors.deepPurpleAccent,),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("    Lotus Medical Center"),
                      Text("    3516 W. Gray St. Utica, Pennsylvania")
                    ],
                  )
                ],
              ),
            ],
          ),
        ],
      ),
    ));
  }
}
