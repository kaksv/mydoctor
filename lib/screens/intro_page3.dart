import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class IntroPage3 extends StatefulWidget {
  const IntroPage3({super.key});

  @override
  State<IntroPage3> createState() => _IntroPage3State();
}

class _IntroPage3State extends State<IntroPage3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Padding(
        padding: const EdgeInsets.fromLTRB(20, 40, 10, 0),
        child: Center(
          child: ListView(
            children: [
              SizedBox(
                height: 40,
              ),
              Lottie.asset('images/pregnant2.json',
                  height: 400, width: 400, fit: BoxFit.fill),
              SizedBox(
                height: 20.0,
              ),
              Center(
                  child: Text(
                'All you need to Know in one place',
                style: TextStyle(
                    fontSize: 18,
                    color: Colors.black,
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
