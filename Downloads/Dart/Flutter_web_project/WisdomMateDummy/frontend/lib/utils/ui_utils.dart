import 'package:flutter/cupertino.dart';
import 'package:frontend/enums/device_screen_type.dart';


DeviceScreentype getDeviceType(MediaQueryData mediaQuery) {
  var orientation = mediaQuery.orientation;
  double deviceWidth = 0;

  if( orientation == Orientation.landscape) {
    deviceWidth = mediaQuery.size.width;
  }
  else{
    deviceWidth = mediaQuery.size.height;
  }

  if(deviceWidth > 950){
    return DeviceScreentype.Desktop;
  }

  if(deviceWidth > 600){
    return DeviceScreentype.Tablet;
  }

  return DeviceScreentype.Mobile;
}