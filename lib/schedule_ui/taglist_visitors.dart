import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Tag_Visitors extends StatefulWidget {
  const Tag_Visitors({Key? key}) : super(key: key);

  @override
  State<Tag_Visitors> createState() => _Tag_VisitorsState();
}

class _Tag_VisitorsState extends State<Tag_Visitors> {
  final _tagList=<String>['Cancel',' Rescheduled'];
  var selected=0;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 25),
      //padding: EdgeInsets.only(left: 15.0),
      height: 50,

      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context,i)=>GestureDetector(
          onTap: (){
            setState(() {
              selected=i;

            });


          },
          child: Container(padding: EdgeInsets.symmetric(horizontal:15,vertical:10),

            decoration:BoxDecoration(
                color: selected==i? Colors.deepPurpleAccent:Colors.grey.withOpacity(0.2),

                borderRadius:BorderRadius.circular(10.0),


            ),



            child: Text(_tagList[i],style:TextStyle(color:selected==i?Colors.white:Colors.black),
            ),
          ),

        ),
        separatorBuilder: (context, int index)=>
            SizedBox(width: 10.0,child:Container( margin: EdgeInsets.all( 2.0),
                )),
        itemCount: _tagList.length,
      ),


    );
  }
}

