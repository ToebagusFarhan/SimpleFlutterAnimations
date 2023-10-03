import 'package:flutter/material.dart';


class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
  
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
    backgroundColor: Colors.white,
    body: 
    Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: Text(
            'Simple Animation Flutter',
            style: TextStyle(
              fontSize:20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
    
        ElevatedButton.icon(
          onPressed: () {Navigator.pushNamed(context, '/containeranimation');}, 
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.red,
            padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
          ), 
          icon: Icon(
            Icons.dashboard), 
          label: Text('Container')
          ),
        ElevatedButton.icon(
          onPressed: () {Navigator.pushNamed(context, '/heroanimation');},
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.red,
            padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
          ), 
          icon: Icon(
            Icons.animation), 
          label: Text('Hero')
          ),
        ElevatedButton.icon(
          onPressed: () {Navigator.pushNamed(context, '/loading');}, 
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.red,
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          ), 
          icon: Icon(
            Icons.history), 
          label: Text('Loading')
          )
        ],
      ),
    ),
    
    );
  }
}

