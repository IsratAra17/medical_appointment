import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class First_pg_Tag_List extends StatefulWidget {
  const First_pg_Tag_List({Key? key}) : super(key: key);

  @override
  State<First_pg_Tag_List> createState() => _First_pg_Tag_ListState();
}

class _First_pg_Tag_ListState extends State<First_pg_Tag_List> {
  final _tagList=<String>['Temperature 🤒',' Snuffle 🤧','Headache 😞','Temperature 🤒',' Snuffle 🤧','Headache 😞'];
  var selected=0;

  @override
  Widget build(BuildContext context) {


    return SafeArea(child:Expanded(flex: 3,
      child: Container(
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
            child: Container(padding: EdgeInsets.symmetric(horizontal:10,vertical:10),

              decoration: BoxDecoration(

                color: selected==i? Colors.deepPurpleAccent:Colors.grey.withOpacity(0.2),
                borderRadius:BorderRadius.circular(10.0),

              ),



              child: Text(_tagList[i],style:TextStyle(color:selected==i?Colors.white:Colors.black),
              ),
            ),

          ),
          separatorBuilder: (context, int index)=>
              SizedBox(width: 6.0,child:Container( margin: EdgeInsets.all( 2.0),
                  color:Colors.grey) ),
          itemCount: _tagList.length,
        ),


      ),
    ),);
  }
}
