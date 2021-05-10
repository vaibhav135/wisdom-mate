import 'package:flutter/widgets.dart';
import 'package:frontend/enums/device_screen_type.dart';



class SizingInformation {
  final Orientation orientation;
  final DeviceScreentype devicetype;
  final Size screenSize;
  final Size localWidgetSize;

  SizingInformation({
    this.orientation,
    this.devicetype,
    this.screenSize,
    this.localWidgetSize,
  });

  @override
  String toString() {
    // TODO: implement toString
    return 'Orientation:$orientation DeviceType:$devicetype ScreenSize:$screenSize LocalWidgetSize:$localWidgetSize';
  }
  
}

