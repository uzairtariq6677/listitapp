import 'package:flutter/cupertino.dart';
import'package:flutter/material.dart';
import 'package:listitapp/screen/FavouriteScreen.dart';
import 'package:listitapp/screen/HomeScreen.dart';

import '../constant.dart';
import '../screen/Chat.dart';
import '../screen/Sidebar.dart';

class bottomnavigation extends StatefulWidget {
  const bottomnavigation({super.key});

  @override
  State<bottomnavigation> createState() => _bottomnavigationState();
}

class _bottomnavigationState extends State<bottomnavigation> {
  int currentindex=0;
  final tabs=[
    HomeScreen(),
    FavouriteScreen(),
    Chat(),
    Menu(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: tabs[currentindex],
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(

        onPressed: () {},
        child: Icon(Icons.add),
        backgroundColor: KPrimaryColor1,
        foregroundColor: KBackgroundColor,
        shape: CircleBorder(),
      ),
      bottomNavigationBar: BottomNavigationBar
        (

        type: BottomNavigationBarType.fixed,
        currentIndex: currentindex,
        backgroundColor:Colors.white,
        iconSize: 32,
        items: [
        BottomNavigationBarItem(
            icon:Icon(Icons.home),
          label: '',
        ),
        BottomNavigationBarItem(
          icon:Icon(Icons.heart_broken),
          label: '',
        ),
        BottomNavigationBarItem(
          icon:Icon(Icons.chat),
          label: '',
        ),
        BottomNavigationBarItem(
          icon:Icon(Icons.menu),
          label: '',
        ),
      ],
        onTap:(index){
          setState(() {
            currentindex=index;
          });
        },

      ),
    );
  }
}

