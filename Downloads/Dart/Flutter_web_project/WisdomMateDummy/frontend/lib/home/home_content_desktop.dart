import 'package:flutter/material.dart';
import 'package:frontend/home/home_details.dart';
import 'package:frontend/widget/call_to_action/call_to_action.dart';
import 'package:frontend/home/carousel.dart';

class HomeContentDesktop extends StatelessWidget {
  const HomeContentDesktop({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        CarouselDemo(),
        HomeDetails(),
        Expanded(
          child: Center(
            child: Call_To_Action('Know more'),
          ),
        )
      ],
    );
  }
}