import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:medical_appointment/model_doctors/model_doctor_info.dart';

class First_pg_mid_UI extends StatefulWidget {
  const First_pg_mid_UI({Key? key}) : super(key: key);

  @override
  State<First_pg_mid_UI> createState() => _First_pg_mid_UIState();
}

class _First_pg_mid_UIState extends State<First_pg_mid_UI> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Expanded(
      child: GridView.builder(
          itemCount: drList?.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisSpacing: 5,
              mainAxisSpacing: 5,
              crossAxisCount: 2,
              childAspectRatio: 1),
          shrinkWrap: true,
          itemBuilder: (context, index) => Card(
                  child: Column(

                crossAxisAlignment: CrossAxisAlignment.center,
                children: [

                  Padding(padding: EdgeInsets.only(top: 20)),
                  CircleAvatar(
                    backgroundImage: NetworkImage("${drList![index].image}"),
                    radius: 50,
                  ),
                  Padding(padding: EdgeInsets.only(top: 5)),
                  Text(
                    "${drList![index].name}",
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                  Text("${drList![index].designation}"),
                  ClipRRect(borderRadius:BorderRadius.circular(20),child:Container(width:MediaQuery.of(context).size.width*0.1,color:Colors.pink.withOpacity(0.2),child: Text("⭐${drList![index].rating}")))
                ],
              ))),
    ));
  }
}
