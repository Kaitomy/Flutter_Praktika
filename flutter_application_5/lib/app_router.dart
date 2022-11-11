import 'package:flutter/material.dart';
import 'package:flutter_application_5/main.dart';
import 'package:flutter_application_5/TabBarDemo.dart';
import 'package:flutter_application_5/welcome.dart';

const String namePageTest = 'test';
const String namePageTest1 = 'test1';

class AppRouter {
  Route<dynamic>? generateRouter(RouteSettings settings) {
    switch (settings.name) {
      case namePageTest:
        {
          return MaterialPageRoute(builder: (_) => MyApp());
        }
      case namePageTest1:
        {
          return MaterialPageRoute(builder: (_) => Welcome());
        }
    }
  }
}
