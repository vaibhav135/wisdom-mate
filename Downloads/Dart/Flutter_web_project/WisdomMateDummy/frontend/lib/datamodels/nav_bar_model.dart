import 'package:flutter/material.dart';

class NavBarModel {
  final String title;
  final String navigationPath;
  final String passingMessage;
  final IconData iconData;

  NavBarModel(
    {
      this.title,
      this.navigationPath,
      this.passingMessage,
      this.iconData,
    }
  );
}