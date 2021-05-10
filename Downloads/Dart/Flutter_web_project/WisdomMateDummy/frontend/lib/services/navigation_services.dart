import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';

class NavigationService {
  final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

  Future<dynamic> navigateTo( String routeName , String passingMessage) {
    return navigatorKey.currentState.pushNamed(routeName , arguments: passingMessage);
  }

  bool goBack(){
    navigatorKey.currentState.pop();
  }
}