import 'package:flutter/material.dart';
import 'package:frontend/styles/text_styles.dart';
import 'package:responsive_builder/responsive_builder.dart';

class AboutDetails extends StatelessWidget {
  AboutDetails({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(builder: (context, sizingInformation) {
      var textAlignment =
          sizingInformation.deviceScreenType == DeviceScreenType.desktop
              ? TextAlign.right
              : TextAlign.center;

      return Container(
        width: 600,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'This is an About Page for our Website \n which is wisdommate',
              style: titleTextStyle(sizingInformation.deviceScreenType),
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              'Hii I am vaibhav the developer who is currently incharge of this site So I hope you guys will like my site',
              style: descriptionTextStyle(sizingInformation.deviceScreenType),
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              "hello this text is passed as arguement ",
              style: descriptionTextStyle(sizingInformation.deviceScreenType),
            ),
          ],
        ),
      );
    });
  }
}
