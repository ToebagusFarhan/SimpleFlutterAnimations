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
    Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [Colors.blue, Colors.pink]
        )
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          const Text(
            'Simple Animation on Flutter',
            style: TextStyle(
              fontSize:20,
              fontWeight: FontWeight.bold,
              color: Colors.white
            ),
          ),
          const SizedBox(height: 30,),
          ElevatedButton.icon(
            onPressed: () {Navigator.pushNamed(context, '/implicit');}, 
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.red,
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
            ), 
            icon: const Icon(
              Icons.dashboard), 
            label: const Text('Implicit')
            ),
          const SizedBox(height: 5,),
          ElevatedButton.icon(
            onPressed: () {Navigator.pushNamed(context, '/explicit');}, 
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.red,
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
            ), 
            icon: const Icon(
              Icons.build), 
            label: const Text('Explicit')
            ),
          const SizedBox(height: 5,),
          ElevatedButton.icon(
            onPressed: () {Navigator.pushNamed(context, '/loading');}, 
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.red,
              padding: const EdgeInsets.symmetric(horizontal: 28, vertical: 10),
            ), 
            icon: const Icon(
              Icons.history), 
            label: const Text('Loading')
            ),
          const SizedBox(height: 5,),
          ElevatedButton.icon(
            onPressed: () {Navigator.pushNamed(context, '/heroanimation');},
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.red,
              padding: const EdgeInsets.symmetric(horizontal: 38, vertical: 10),
            ), 
            icon: const Icon(
              Icons.animation), 
            label: const Text('Hero')
            )
          ],
        ),
      ),
    ),
    
    );
  }
}

