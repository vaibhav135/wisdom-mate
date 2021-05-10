import 'package:flutter/material.dart';
import 'package:frontend/widget/navigation/navbar_item/navigation_item.dart';
import 'navbar_logo.dart';

class NavigationBarTabletDesktop extends StatelessWidget {
  const NavigationBarTabletDesktop({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          
          NavBarLogo(),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              NavBarItem('Home', '/', 'successful'),
    
              SizedBox(
                width: 30,
              ),
              NavBarItem('Tutors', '/tutors', 'successful'),
            
              SizedBox(
                width: 30,
              ),
              NavBarItem('Coachings', '/coachings', 'coaching page successful'),
              
              SizedBox(
                width: 30,
              ),
              NavBarItem('about', '/about', 'about page successful'),
           
              SizedBox(
                width: 30,
              ),
              NavBarItem('login', '/login', 'login page successful'),
              
            ],
          )
        ],
      ),
    );
  }
}
