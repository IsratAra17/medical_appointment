import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:medical_appointment/second_page_ui/second_page_mid_ui.dart';
import 'package:medical_appointment/model_doctors/model_doctor_info.dart';


class Second_pg_UI extends StatefulWidget {
  const Second_pg_UI({Key? key}) : super(key: key);

  @override
  State<Second_pg_UI> createState() => _Second_pg_UIState();
}

class _Second_pg_UIState extends State<Second_pg_UI> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor:Colors.deepPurpleAccent,
        elevation: 0,
        leading: Icon(Icons.arrow_back_ios),
        actions: [Icon(Icons.more_vert)],
      ),
      body: Stack(alignment:Alignment.bottomCenter ,
          children:[

            Expanded(
              child:  Container(
                decoration: BoxDecoration(
                  color: Colors.deepPurpleAccent,
                ),
                child: Column(children: [
                  Container(
                    height: 250,
                    width: double.infinity,

                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        CircleAvatar(
                          radius: 35,
                         backgroundImage: NetworkImage("${drList[0].image}"),
                        ),
                        Text(
                          "Dr. Viola Dunn",
                          style: TextStyle(fontSize: 30, color: Colors.white),
                        ),
                        Text("Therapist",
                            style: TextStyle(fontSize: 15, color: Colors.white38)),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CircleAvatar(
                                radius: 25,
                                backgroundColor: Colors.white54,
                                child: Icon(Icons.call, color: Colors.white)),
                            Text("          "),
                            CircleAvatar(
                                radius: 25,
                                backgroundColor: Colors.white54,
                                child:
                                Icon(Icons.message_rounded, color: Colors.white)),
                          ],
                        ),
                        Padding(padding: EdgeInsets.only(bottom: 10))
                      ],
                    ),
                  ),
                  Expanded(
                      child:
                        ClipRRect(
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(20),
                                topRight: Radius.circular(20),
                            ),
                            child: Container(
                                child: Second_p_Mid_UI(),

                               )
                        ),




                  ),

                  Container(
                    width: double.infinity,
                    padding: EdgeInsets.only(top: 10,right: 18,bottom: 10,left: 18),
                    color: Colors.white,
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [Text("Consultatin Price",style: TextStyle(color: Colors.grey[600],)),
                            Text("\$52",style: TextStyle(fontSize: 20,))],
                        ),
                        TextButton(
                          onPressed: () {},
                          child: Container(
                            height: 50,
                            width: double.infinity,
                            decoration: BoxDecoration(
                                color: Colors.deepPurple,
                                borderRadius: BorderRadius.circular(10)),
                            child: Center(
                                child: Text(
                                  "Book Apintment",
                                  style: TextStyle(color: Colors.white,fontSize: 18),
                                )),
                          ),
                        )
                      ],
                    ),
                  )
                ]
                ),
              ),
            ),

          ]
      ),
    );
  }
}
