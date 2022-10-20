import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class IntroPage2 extends StatefulWidget {
  const IntroPage2({super.key});

  @override
  State<IntroPage2> createState() => _IntroPage2State();
}

class _IntroPage2State extends State<IntroPage2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple[300],
      body: Padding(
        padding: const EdgeInsets.fromLTRB(20, 40, 10, 0),
        child: Center(
          child: ListView(
            children: [
              SizedBox(
                height: 40,
              ),
              Lottie.asset('images/doctor3.json',
                  height: 400, width: 400, fit: BoxFit.fill),
              SizedBox(
                height: 20.0,
              ),
              Center(
                  child: Text(
                'Here for your Medical Assistant',
                style: TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              )),
            ],
          ),
        ),
      ),
    );
    ;
  }
}
