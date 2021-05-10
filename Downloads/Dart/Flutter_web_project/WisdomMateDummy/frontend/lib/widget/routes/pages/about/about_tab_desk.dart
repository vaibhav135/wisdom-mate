import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:frontend/widget/navigation/navbar_screentypelayout.dart';
import 'package:frontend/widget/routes/pages/about/about_details.dart';

class AboutTabDesk extends StatelessWidget {
  
  const AboutTabDesk({Key key }):super(key:key);

  @override
  Widget build(BuildContext context) {
      return  Column(
           children: [
             NavBarScreenLayout(),
             Expanded(child: AboutDetails())
           ],
      );
  }
}