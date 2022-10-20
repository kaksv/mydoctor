import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class IntroPage1 extends StatefulWidget {
  const IntroPage1({super.key});

  @override
  State<IntroPage1> createState() => _IntroPage1State();
}

class _IntroPage1State extends State<IntroPage1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.redAccent,
      body: Padding(
        padding: const EdgeInsets.fromLTRB(20, 40, 10, 0),
        child: Center(
          child: ListView(
            children: [
              SizedBox(
                height: 40,
              ),
              Lottie.asset('images/heart1.json',
                  height: 300, width: 300, fit: BoxFit.fill),
              SizedBox(
                height: 20.0,
              ),
              Center(child: Text('Here for your Medical Assistant')),
            ],
          ),
        ),
      ),
    );
  }
}
