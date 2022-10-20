import 'package:flutter/material.dart';
import 'package:mydoctor/pages/login_page.dart';
import 'package:mydoctor/screens/intro_page1.dart';
import 'package:mydoctor/screens/intro_page2.dart';
import 'package:mydoctor/screens/intro_page3.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  //Controller to keep Track of what screen we are on
  PageController _controller = PageController();

  //Keep Track of Whether we are on the Last Page or not.
  bool onLastPage = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: _controller,
            onPageChanged: (index) {
              setState(() {
                onLastPage = (index == 2);
              });
            },
            children: [
              IntroPage1(),
              IntroPage2(),
              IntroPage3(),
            ],
          ),
          //Adding the dot Controller.
          Container(
            alignment: Alignment(0, 0.75),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                //The Skip Text or Button
                GestureDetector(
                  onTap: () {
                    _controller.jumpToPage(2);
                  },
                  child: Text('Skip'),
                ),
                // FloatingActionButton(
                //   backgroundColor: Colors.pink[300],
                //   shape: RoundedRectangleBorder(
                //       borderRadius: BorderRadius.circular(8.0)),
                //   focusColor: Colors.pink[300],
                //   onPressed: () {},
                //   child: Padding(
                //     padding: const EdgeInsets.all(8.0),
                //     child: Text(
                //       'Skip',
                //       style: TextStyle(fontWeight: FontWeight.bold),
                //     ),
                //   ),
                // ),

                //Dot Indicator For skip and next
                SmoothPageIndicator(controller: _controller, count: 3),
                //If on Last Page, Change next to Done
                onLastPage
                    ? GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => LoginPage()));
                        },
                        child: Text('Done'),
                      )
                    : GestureDetector(
                        onTap: () {
                          _controller.nextPage(
                              duration: Duration(milliseconds: 500),
                              curve: Curves.easeIn);
                        },
                        child: Text('Next'),
                      ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
