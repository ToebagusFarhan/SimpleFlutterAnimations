import 'package:flutter/material.dart';
import 'dart:math';

class otheranim extends StatefulWidget {
  const otheranim({Key? key}) : super(key: key);

  @override
  State<otheranim> createState() => _otheranimState();
}

class _otheranimState extends State<otheranim> {
  // Value awal
  double _width = 50;
  double _height = 50;
  Color _color = Colors.red;
  BorderRadiusGeometry _borderRadius = BorderRadius.circular(8);
  Alignment _alignment = Alignment.center; // aligmnent icon secara default

  bool _isSwitchOn = false; // keadaan switch secara default

  // fungsi untuk update container
  void updateContainerProperties(bool isPressed) {
    if (_isSwitchOn) {
      final random = Random();
      setState(() {
        _width = 300;
        _height = 300;
        _borderRadius = BorderRadius.circular(8);
        _color =Colors.red;
        _alignment = Alignment(
          random.nextDouble() * 2 - 1,
          random.nextDouble() * 2 - 1,
        );
      });

    }else{
      final random = Random();
      setState(() {
        _width = random.nextInt(300).toDouble();
        _height = random.nextInt(300).toDouble();
        _color = Color.fromRGBO(
          random.nextInt(256),
          random.nextInt(256),
          random.nextInt(256),
          1,
        );
        _borderRadius = BorderRadius.circular(random.nextInt(100).toDouble());

        // Generate random value untuk icon alignment
        _alignment = Alignment(
          random.nextDouble() * 2 - 1,
          random.nextDouble() * 2 - 1,
        );
      });

    }
  }

  // Function untuk menghandle state change si switch
  void _handleSwitchChanged(bool value) {
    setState(() {
      _isSwitchOn = value; // Update state si switch
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('Guess The Shape and Color'),
        centerTitle: true,
        backgroundColor: Colors.red,
        elevation: 0,
      ),
      body: Stack(
        children: [
          Center(
            child: AnimatedContainer(
              width: _width,
              height: _height,
              decoration: BoxDecoration(
                color: _color,
                borderRadius: _borderRadius,
              ),
              duration: const Duration(seconds: 1),
              curve: Curves.fastOutSlowIn,
              alignment: _alignment,
              child: const Icon(
                Icons.android_rounded,
                color: Colors.white,
              ),
            ),
          ),
          Positioned(
            child: Align(
              alignment: Alignment.topCenter,
              child: SwitchExample(
                onSwitchChanged: _handleSwitchChanged,
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.red,
        onPressed: () {
          updateContainerProperties(false);
        },
        child: const Icon(Icons.play_arrow),
      ),
    );
  }
}



class SwitchExample extends StatefulWidget {
  final Function(bool) onSwitchChanged;

  const SwitchExample({required this.onSwitchChanged, Key? key})
      : super(key: key);

  @override
  State<SwitchExample> createState() => _SwitchExampleState();
}

class _SwitchExampleState extends State<SwitchExample> {
  bool light = false;

  @override
  Widget build(BuildContext context) {
    return Switch(
      value: light,
      activeColor: Colors.red,
      onChanged: (bool value) {
        setState(() {
          light = value;
        });
        //memanggil callback function untuk update animated containe
        widget.onSwitchChanged(value);
      },
    );
  }
}
