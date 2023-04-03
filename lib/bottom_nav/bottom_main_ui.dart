import 'package:flutter/material.dart';
import 'package:medical_appointment/first_page_ui/first_pg_UI.dart';
import 'package:medical_appointment/second_page_ui/second_page_ui.dart';
import 'package:medical_appointment/schedule_ui/schedule_ui.dart';
class Bottom_main_UI extends StatefulWidget {
  const Bottom_main_UI({Key? key}) : super(key: key);

  MySnackbar(messege,context)
  {
    return ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content:Text(messege))
    );
  }

  @override
  State<Bottom_main_UI> createState() => _Bottom_main_UIState();
}

class _Bottom_main_UIState extends State<Bottom_main_UI> {

  @override
  List<Widget>page = [First_pg_UI(), Second_pg_UI(), Scedule_UI()];

  Widget build(BuildContext context) {
    var currentIn = 0;
    return SafeArea(
      child: Scaffold(
        body: page[currentIn = 0],
        bottomNavigationBar: BottomNavigationBar(
          iconSize: 25,
          selectedItemColor: Colors.deepPurpleAccent,
          unselectedItemColor: Colors.grey.withOpacity(0.8),

          onTap: (val) {
            setState(() {
              currentIn = val;
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => page[currentIn],
                ),
              );
            });
          },
          selectedFontSize: 20,
          unselectedFontSize: 15,
            showUnselectedLabels: true,

          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
            BottomNavigationBarItem(
                icon: Icon(Icons.messenger), label: "Messege"),
            BottomNavigationBarItem(
                icon: Icon(Icons.date_range), label: "Schedule"),
            BottomNavigationBarItem(
                icon: Icon(Icons.settings), label: "Setting"),
          ],


        ),),

    );
  }
}

