import 'package:flutter/material.dart';
import 'pages/home.dart';
import 'pages/heroanimation.dart';
import 'pages/Implicit.dart';
import 'pages/loading.dart';
import 'pages/trueloading.dart';

void main() => runApp(MaterialApp(
  debugShowCheckedModeBanner: false,
  // initialRoute: '/home',
  routes: {
    '/': (context) => const trueloading(),
    '/home' : (context) => const Home(),
    '/heroanimation' : (context) => const heroanim(),
    '/implicit' : (context) => const implicit(),
    '/loading' : (context) => const Loading(),
  }
));

