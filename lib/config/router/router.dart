
import 'package:flutter/material.dart';
import 'package:newsapikey/view/home_page.dart';
import 'package:newsapikey/view/info_page.dart';



class RouteGenerator {
  static final RouteGenerator _generator = RouteGenerator._init();
  static RouteGenerator get router => _generator;

  RouteGenerator._init();
  Route? onGenerate(RouteSettings settings) {
    switch (settings.name) {
      case "/":
        return _navigator(const HomePage());
    
      
    }
    return null;
  }

  MaterialPageRoute _navigator(Widget widget) {
    return MaterialPageRoute(
      builder: (context) => widget,
    );
  }
}
