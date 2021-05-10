import 'package:flutter/material.dart';
import 'package:frontend/main.dart';
import 'package:frontend/widget/routes/pages/about/about.dart';
import 'package:frontend/widget/routes/pages/tutors/tutors.dart';
import 'package:frontend/widget/routes/pages/coachings/coaching.dart';
import 'package:frontend/widget/routes/pages/login/login.dart';

class RouteGenerator {

  static Route<dynamic> generateRoute(RouteSettings settings) {
    //Getting arguements passed while in calling Navigator.pushNamed
    
    final args = settings.arguments;

    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => HomeView());
      case '/about':
        //validation of correct data type
        if (args is String) {
          return MaterialPageRoute(
            builder: (_) => Aboutpage(
              data: args
            ),
          );
        }
        return _errorRoute();

      case '/tutors':
        if (args is String) {
          return MaterialPageRoute(
            builder: (_) => Tutorspage(
              data: args
            ),
          );
        }
        return _errorRoute();

      case '/coachings':
        if (args is String) {
          return MaterialPageRoute(
            builder: (_) => Coachingpage(
              data: args
            ),
          );
        }
        return _errorRoute();

      case '/login':
        if (args is String) {
          return MaterialPageRoute(
            builder: (_) => Loginpage(),
          );
        }
        return _errorRoute();

      default:
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(
      builder: (_) {
        return Scaffold(
          appBar: AppBar(
            title: Text('Error _some kind of error'),
          ),
          body: Center(
            child: Text("error some kind of error"),
          ),
        );
      },
    );
  }
}
