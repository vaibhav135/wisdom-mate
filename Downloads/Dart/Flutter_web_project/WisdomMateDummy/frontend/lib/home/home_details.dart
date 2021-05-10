import 'package:flutter/material.dart';

import 'package:frontend/styles/text_styles.dart';
import 'package:responsive_builder/responsive_builder.dart';

class HomeDetails extends StatefulWidget {
  @override
  _HomeDetailsState createState() => _HomeDetailsState();
}

class _HomeDetailsState extends State<HomeDetails> {
 

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(builder: (context, sizingInformation) {
      var textAlignment =
          sizingInformation.deviceScreenType == DeviceScreenType.desktop
              ? TextAlign.left
              : TextAlign.center;

      return Container(
        width: 600,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            
            // Card(
            //   semanticContainer: true,
            //   clipBehavior: Clip.antiAliasWithSaveLayer,
            //   child: Image.asset(images[]),
            //   shape: RoundedRectangleBorder(
            //     borderRadius: BorderRadius.circular(10.0),
            //   ),
            //   elevation: 5,
            //   margin: EdgeInsets.all(10),
            // ),
            
            Text(
              'THIS IS MY WEBSITE \n HOMEPAGE',
              style: titleTextStyle(sizingInformation.deviceScreenType),
              textAlign: textAlignment,
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              'Trying to figure this out',
              style: descriptionTextStyle(sizingInformation.deviceScreenType),
              textAlign: textAlignment,
            )
          ],
        ),
      );
    });
  }

  // void _addImage() {
  //   setState((){
  //     _images.add(_images[_count % 3]); //divided by the no. of images
  //     ++_count;
  //   }
  //   );
  // }
}
