import 'package:flutter/material.dart';
import 'package:frontend/datamodels/nav_bar_model.dart';
import 'package:frontend/services/navigation_services.dart';
import 'package:frontend/widget/navigation/navbar_item/navbaritem.mobile.dart';
import 'package:frontend/widget/navigation/navbar_item/navbaritem_tab_desk.dart';
import 'package:provider/provider.dart';
import 'package:responsive_builder/responsive_builder.dart';

class NavBarItem extends StatelessWidget {
  final String title;
  final String navigationPath;
  final String passingMessage;
  final IconData icon;
  const NavBarItem(
    this.title,
    this.navigationPath,
    this.passingMessage,
    {this.icon}
  );
  @override
  Widget build(BuildContext context) {
 
    var model =  NavBarModel(
      title: title,
      navigationPath: navigationPath,
      passingMessage: passingMessage,
      iconData: icon,
    );  
    
    return GestureDetector(
      onTap: () {
        // DON'T EVER USE A SERVICE DIRECTLY IN THE UI TO CHANGE ANY KIND OF STATE
        // SERVICES SHOULD ONLY BE USED FROM A VIEWMODEL
         Navigator.pushNamed(context, navigationPath , arguments: passingMessage);
      },
      child: Provider.value(
        value: model,
        child: ScreenTypeLayout(
          tablet: NavBarItemTabletDesktop(),
          mobile: NavBarItemMobile(),
        ),
      ),
    );
  }
}
//This class is used to pass specific title to our navbar