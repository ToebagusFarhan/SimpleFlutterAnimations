import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
class trueloading extends StatefulWidget {
  const trueloading({super.key});

  @override
  State<trueloading> createState() => _trueloadingState();
}

class _trueloadingState extends State<trueloading> 
      with SingleTickerProviderStateMixin {
  
  @override
  void initState() {
    super.initState();
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, 
    overlays: []);//hide status bar

    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushNamed(context, '/home');
    }); //delay * seconds

  }

@override
void dispose() {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
    overlays: SystemUiOverlay.values);
     super.dispose();
  }

@override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.white,
      body:Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [Colors.blue, Colors.pink]
          )
        ),
        child: Center(
          child: LoadingAnimationWidget.staggeredDotsWave(color: Colors.white, size: 50.0)
        ),
      )
    );
  }

 

}