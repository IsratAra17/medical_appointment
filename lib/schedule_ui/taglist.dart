import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Tag_List extends StatefulWidget {
  const Tag_List({Key? key}) : super(key: key);

  @override
  State<Tag_List> createState() => _Tag_ListState();
}

class _Tag_ListState extends State<Tag_List> {
  final _tagList=<String>['UpComing',' Completed','Canceled'];
  var selected=0;

  @override
  Widget build(BuildContext context) {


    return SafeArea(child: Container(
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


    ));
  }
}
