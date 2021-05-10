import 'package:flutter/material.dart';
import 'package:frontend/ui/sizing_information.dart';
import 'package:frontend/utils/ui_utils.dart';



class BaseWidget extends StatelessWidget{
  
    final Widget Function(
       BuildContext context,
       SizingInformation sizingInformation 
    )builder;

    const BaseWidget({Key key , this.builder}) : super(key : key);

    @override
    Widget build(BuildContext context) {
      var mediaQuery = MediaQuery.of(context);
       
      return LayoutBuilder(builder: (context , boxSizing) {
        var sizingInformation = SizingInformation(
          orientation: mediaQuery.orientation,
          devicetype: getDeviceType(mediaQuery),
          screenSize: mediaQuery.size,
          localWidgetSize: Size(boxSizing.maxWidth, boxSizing.maxHeight),
        );
        return builder(context , sizingInformation);
      });
    } 

}