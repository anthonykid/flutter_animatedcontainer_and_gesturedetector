import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
} 

class _MyAppState extends State<MyApp> {
  Random random = Random(); //we need to import dart:math to make the random

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Animated Container"),
        ),
        body: Center(
          child: GestureDetector( //wrap animatedcontainer with widget and turn this too Gesture detector
            onTap: () { //you can change what situation you want with the gesture detector like  ontap
              setState(() {}); //set stateso it would refresh the screen
            },
            child: AnimatedContainer(
              color: Color.fromARGB(255, //A for trasparancy so i would give definetly 255
                  random.nextInt(256), //this is for the red we use random <256
                  random.nextInt(256), //this is for the green we use random <256
                  random.nextInt(256)), //this is for the blue we use random <256
              duration: Duration(seconds: 1),
              width: 50.0 + random.nextInt(101), //we give the start 50 so it wouldnt come very small we add 101 random for max it means <101
              height: 50.0 + random.nextInt(101), //we give the start 50 so it wouldnt come very small we add 101 random for max it means <101
            ),
          ),
        ),
      ),
    );
  }
}
