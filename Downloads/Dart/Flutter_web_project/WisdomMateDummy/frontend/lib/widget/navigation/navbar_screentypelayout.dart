import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'navbar_mobile.dart';
import 'navbar_tablet_dektop.dart';

class NavBarScreenLayout extends StatelessWidget{
  
  const NavBarScreenLayout({Key key}) : super(key : key);
  
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: NavigationBarMobile(),
      tablet: NavigationBarTabletDesktop(),
    );
  }

}