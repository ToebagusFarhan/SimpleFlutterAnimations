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
    // TODO: implement initState
    super.initState();
    print('Working initstate');
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);//hide status bar

    Future.delayed(const Duration(seconds: 5), () {
      Navigator.pushNamed(context, '/home');
    }); //delay 3 seconds

  }

  @override
  void dispose() {
    // TODO: implement dispose
    print('Dispose is working');
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge);
    super.dispose();
  }


@override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.white,
      body:Center(
        child: LoadingAnimationWidget.staggeredDotsWave(color: Colors.red, size: 50.0)
      )
    );
  }
}