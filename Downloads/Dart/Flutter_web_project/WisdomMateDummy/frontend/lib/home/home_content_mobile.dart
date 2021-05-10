import 'package:flutter/material.dart';
import 'package:frontend/widget/call_to_action/call_to_action.dart';
import 'package:frontend/widget/navigation/custom_navbar.dart';
import 'package:frontend/home/carousel.dart';
import 'home_details.dart';

class HomeContentMobile extends StatelessWidget {
  const HomeContentMobile({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
            
      mainAxisAlignment: MainAxisAlignment.center,

      children: <Widget>[
        CarouselDemo(),
        HomeDetails(),
        SizedBox(height: 100,),
        Call_To_Action('Know more'),
      ],
    );
  }
}