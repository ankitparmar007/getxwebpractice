import 'package:flutter/material.dart';
import 'package:getxwebpractice/FirstPage.dart';
import 'package:getxwebpractice/SecondPage.dart';
import 'package:getxwebpractice/main.dart';

Map<String, Widget Function(BuildContext)> routes = <String, WidgetBuilder>{
  '/': (_) => MyHomePage(),
  '/first': (_) => FirstPage(),
  '/second': (_) => SecondPage(),
};
