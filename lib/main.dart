import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:untitled1/account.dart';
import 'package:untitled1/highlights.dart';
import 'account.dart';
import 'home.dart';
import 'search.dart';
import 'highlights.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Book room",
      home: const MyHomePage(),
      debugShowCheckedModeBanner: false,

    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});



  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedindex = 0;
 static const List<Widget>_widgetoption = <Widget>
 [
   home(),
   Search(),
   highlights(),
   Account(),
 ];


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Color(0xff222831),
      body: Center(
        child: _widgetoption.elementAt(_selectedindex),
      ),

      bottomNavigationBar:Container(

        child: Padding(
          padding: EdgeInsets.fromLTRB(3.0, 10.0, 10.0, 3.0),
          child: GNav(
            gap: 8,
            iconSize: 25,
            backgroundColor: Color(0xff222831),
            color: Colors.white,
            activeColor: Colors.white,
            tabBackgroundColor: Color(0xff393E46),
            selectedIndex: _selectedindex,

            onTabChange: (index){
              setState(() {
                _selectedindex = index;
              });
            },
            tabs: [
              GButton(icon: Icons.home ,text: "Home",),
              GButton(icon: Icons.search_rounded,text: "Search",),
              GButton(icon: Icons.edit,text: "highlights",),
              GButton(icon: Icons.person_rounded,text: "Account",),
            ],
          ),
        ),
      )

    );
  }
}






/***************************************************************************************************************/
