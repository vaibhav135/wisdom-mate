import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:frontend/nav_drawer/nav_drawer_body.dart';
import 'package:frontend/widget/navigation/navbar_screentypelayout.dart';
import 'package:frontend/widget/routes/pages/about/about_details.dart';
import 'package:responsive_builder/responsive_builder.dart';

class AboutMobile extends StatelessWidget {
  
  const AboutMobile({Key key }):super(key:key);

  @override
  Widget build(BuildContext context) {
      return ResponsiveBuilder(
         builder: (context , sizingInformation) => Scaffold(
         drawer: NavigationDrawer(),
         body: Column(
           children: [
             NavBarScreenLayout(),
             Expanded(child: AboutDetails())
           ],
         ),
      )
      ); 
  }
}