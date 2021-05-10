import 'package:flutter/material.dart';
import 'package:frontend/nav_drawer/nav_header_drawer.dart';
import 'package:frontend/widget/navigation/navbar_item/navigation_item.dart';

class NavigationDrawer extends StatelessWidget {
  const NavigationDrawer({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 16)]),
      child: Column(
        children: <Widget>[
          NavigationDrawerHeader(),
          NavBarItem('Home', '/' , 'home Successful', icon: Icons.computer),
          NavBarItem('Tutors', '/tutors' , 'home Successful', icon: Icons.person),
          NavBarItem('Coachings', '/coachings' ,'coaching Successful',  icon: Icons.book),
          NavBarItem('Login', '/login' ,'login Successful',  icon:Icons.add),
          NavBarItem('About', '/about' ,'about Successful',  icon:Icons.help),
        ],
      ),
    );
  }
}