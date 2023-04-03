

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:medical_appointment/model_doctors/model_doctor_info.dart';
class First_pg_Appbar extends StatefulWidget {
  const First_pg_Appbar({Key? key}) : super(key: key);

  @override

  State<First_pg_Appbar> createState() => _First_pg_AppbarState();
}

class _First_pg_AppbarState extends State<First_pg_Appbar> {
  bool isSelect=true;
  @override

  Widget build(BuildContext context) {
    return SafeArea(child:   Padding(padding: EdgeInsets.all(20),
      child: Container(


          child: Column(
crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Elsie Edkins 👋",
                      style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: Colors.black)), //use notoemoji font in pub
                  CircleAvatar(
                    radius: 30,
                    backgroundImage: NetworkImage("${drList[0].image}"),
                  ),
                ],
              ),


              SizedBox(height: 50,width: 50,),
Container(
  height: 150,
  width:double.infinity,
  child:
Row(

  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
  children: [

    Padding(padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10)),

    InkWell(
      onTap: () {
        setState(() {
          isSelect = true;
        });
      },
      child:  Card(

        elevation: 10,

        color: isSelect == true? Colors.deepPurpleAccent : Colors.white,
        child: Padding(padding: EdgeInsets.all(10),

        child:  Column(

          crossAxisAlignment: CrossAxisAlignment.start,

          children: [

            Icon(Icons.add_circle,color: Colors.white,),
            SizedBox(height: 40,width: 10,),
            Text("Clinic Visit",
                style: TextStyle(
                    fontSize: 15,
                    color: Colors.white)),
            Text("Make an Appointment",
                style: TextStyle(
                    fontSize: 10,
                    color: Colors.white.withOpacity(0.8))),
          ],
        ),),
    ),
    ),
    InkWell(
      onTap: () {
        setState(() {
          isSelect = true;
        });
      },

      child: Card(
        elevation: 10,
        color: isSelect == false ? Colors.deepPurpleAccent : Colors.white,
        child: Padding(padding: EdgeInsets.all(10),

        child:  Column(

          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Icon(Icons.home,color: Colors.deepPurpleAccent,),
            SizedBox(height: 40,width: 10,),

            Text("Home Visit",
                style: TextStyle(
                    fontSize: 15,
                    color: Colors.black)),
            Text("Call the Doctor home     ",
                style: TextStyle(
                    fontSize: 10,
                    color: Colors.grey)),
          ],
        ),),
    ),
      ),



  ],) ,),


  ] )
    )
    )
    );
  }
}
