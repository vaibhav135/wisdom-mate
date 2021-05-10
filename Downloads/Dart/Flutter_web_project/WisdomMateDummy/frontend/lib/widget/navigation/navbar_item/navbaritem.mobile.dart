 
import 'package:flutter/material.dart';
import 'package:frontend/datamodels/nav_bar_model.dart';
import 'package:stacked/stacked.dart';


class NavBarItemMobile extends ViewModelWidget<NavBarModel> {
  @override
  Widget build(BuildContext context, NavBarModel model) {
    return Padding(
      padding: const EdgeInsets.only(left: 30, top: 60),
      child: Row(
        children: <Widget>[
          Icon(model.iconData),
          SizedBox(
            width: 30,
          ),
          Text(
            model.title,
            style: TextStyle(fontSize: 18),
          )
        ],
      ),
    );
  }
}