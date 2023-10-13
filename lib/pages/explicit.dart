import 'package:flutter/material.dart';

class explicit extends StatefulWidget {
  const explicit({super.key});

  @override
  State<explicit> createState() => _explicitState();
}

class _explicitState extends State<explicit> 
    with SingleTickerProviderStateMixin{
  late final AnimationController _controller;
  bool ispaused = false;
  bool status = true;

  @override
  void initState() {
    //AnimationController berfungsi untuk membantu mengontrol animasi
    _controller = AnimationController(
      duration: const Duration(seconds: 2),
      vsync: this
    );

    _controller.repeat(reverse: status);

    super.initState();
  }

@override
  void dispose() {

    _controller.dispose();

    super.dispose();
  }

void toggleStatus() {

  if(ispaused){
    _controller.repeat(reverse: status);
  }
  else{
    _controller.stop();
  }
  setState(() {
    ispaused = !ispaused;
  });
}

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text('Explicit Animation'),
        centerTitle: true,
        backgroundColor: Colors.red,
        elevation: 0,
      ),

      //animatedbuilder berfungsi untuk membangun widget yang bergantung pada animationcontroller
      //animation: object yang menjalakan animasi
      //builder: setiap kali value berubah maka widget akan di rebuild
      body: AnimatedBuilder(
        animation: _controller,
        builder:(context, child) {
          return Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(height: 30,),
                  Transform.scale(
                    scale: _controller.value,
                    child: const Icon(
                      Icons.android_rounded,
                      color: Colors.red,
                      size: 100,
                    ),
                  ),
                ],
              ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: toggleStatus,
        child: ispaused? Icon(Icons.play_arrow) : Icon(Icons.pause),
        backgroundColor: ispaused? Colors.blue : Colors.red,
      ),
    );
  }
}