import 'package:elgato/pages/explicit.dart';
import 'package:flutter/material.dart';
import 'pages/home.dart';
import 'pages/Implicit.dart';
import 'pages/loading.dart';
import 'pages/trueloading.dart';
import 'pages/physicbased.dart';

void main() => runApp(MaterialApp(
  debugShowCheckedModeBanner: false,
  // initialRoute: '/home',
  routes: {
    '/': (context) => const trueloading(),
    '/home' : (context) => const Home(),
    '/implicit' : (context) => const implicit(),
    '/explicit' :(context) => const explicit(),
    '/loading' : (context) => const Loading(),
    '/physics' : (context) => const PhysicsCardDragDemo(),
  }
));

