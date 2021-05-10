import 'package:flutter/material.dart';
import 'package:frontend/widget/navigation/custom_navbar.dart';

class Tutorspage extends StatelessWidget {
  final String data;
  Tutorspage({this.data});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Custom_navbar(),
          Expanded(
            child: Container(
              // width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'This is a tutors page here I will fetch data from the api',
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
