import 'package:flutter/cupertino.dart';

import 'package:frontend/datamodels/nav_bar_model.dart';
import 'package:stacked/stacked.dart';


class NavBarItemTabletDesktop extends ViewModelWidget<NavBarModel>{
  @override
  Widget build(BuildContext context , NavBarModel model) {
    // TODO: implement build
    return Text(
      model.title,
      style: TextStyle(fontSize: 18),
    );
  }

}