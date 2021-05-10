import 'package:flutter/material.dart';
import 'package:frontend/widget/routes/pages/about/about_mobile.dart';
import 'package:frontend/widget/routes/pages/about/about_tab_desk.dart';

import 'package:responsive_builder/responsive_builder.dart';

class Aboutpage extends StatelessWidget {
  final String data;
  Aboutpage({this.data});

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: AboutMobile(),
      desktop: AboutTabDesk(),
    );
  }
}
