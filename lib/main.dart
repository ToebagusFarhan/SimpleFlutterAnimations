import 'package:flutter/material.dart';
import 'pages/home.dart';
import 'pages/heroanimation.dart';
import 'pages/containeranimation.dart';
import 'pages/loading.dart';

void main() => runApp(MaterialApp(
  debugShowCheckedModeBanner: false,
  initialRoute: '/home',
  routes: {
    '/home' : (context) => Home(),
    '/heroanimation' : (context) => heroanim(),
    '/containeranimation' : (context) => otheranim(),
    '/loading' : (context) => Loading(),
  }
));