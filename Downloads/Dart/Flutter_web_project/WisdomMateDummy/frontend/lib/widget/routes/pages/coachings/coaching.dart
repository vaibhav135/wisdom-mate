import 'package:flutter/material.dart';
import 'package:frontend/widget/navigation/navbar_tablet_dektop.dart';

class Coachingpage extends StatelessWidget {
  final String data;
  Coachingpage({this.data});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          NavigationBarTabletDesktop(),
          Expanded(
            child: Container(
              width: 600,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'Here you will find all the list of all the coachings avaiable near you',
                    style: TextStyle(
                      fontWeight: FontWeight.w800,
                      fontSize: 74,
                      height: 1.1,
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Text(
                    "hello this text is passed as arguement $data",
                    style: TextStyle(
                      fontSize: 21,
                      height: 1.7,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
