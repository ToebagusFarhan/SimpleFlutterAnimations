import 'package:flutter/material.dart';


class heroanim extends StatefulWidget {
  const heroanim({super.key});

  @override
  State<heroanim> createState() => _heroanimState();
}

class _heroanimState extends State<heroanim> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text('Hero Animation'),
        centerTitle: true,
        backgroundColor: Colors.red,
        elevation: 0,
      ),
      body: Text('heroanim'),
    );
  }
}