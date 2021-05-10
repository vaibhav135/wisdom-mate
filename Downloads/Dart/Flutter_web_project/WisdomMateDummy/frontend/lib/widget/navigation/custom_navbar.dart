import 'package:flutter/material.dart';
import 'package:frontend/widget/navigation/navbar_tablet_dektop.dart';
//import 'package:frontend/widget/navigation/navigation_item.dart';

class Custom_navbar extends StatelessWidget implements PreferredSizeWidget {
  final double height = 50;

  const Custom_navbar({Key key}) : super(key: key);

  Size displaySize(BuildContext context) {
    debugPrint('Size = ' + MediaQuery.of(context).size.toString());
    return MediaQuery.of(context).size;
  }

  double displayHeight(BuildContext context) {
    debugPrint('Height = ' + displaySize(context).height.toString());
    return displaySize(context).height;
  }

  double displayWidth(BuildContext context) {
    debugPrint('Width = ' + displaySize(context).width.toString());
    return displaySize(context).width;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: displayHeight(context)/9,
      //width: displayWidth(context),
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 60, 103, 124),
      ),
      child: Column(
        children: <Widget>[
          NavigationBarTabletDesktop(),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(height);
}
