import 'package:flutter/material.dart';
import 'package:frontend/widget/call_to_action/call_to_action_mobile.dart';
import 'package:frontend/widget/call_to_action/call_to_action_tablet_desktop.dart';
import 'package:responsive_builder/responsive_builder.dart';

class Call_To_Action extends StatelessWidget{
  
  final String title;
  const Call_To_Action(this.title);

  @override
  Widget build(BuildContext context) {
     return ScreenTypeLayout(
        mobile: CallToActionMobile(title),
        desktop: CallToActionTabletDesktop(title),
     );
  }
     
}
//00C49A