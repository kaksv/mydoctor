import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:mydoctor/pages/login_page.dart';

import '../home_page.dart';
import '../reusable_widgets/reusable_widget.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  TextEditingController _passwordTextController = TextEditingController();
  TextEditingController _emailTextController = TextEditingController();
  TextEditingController _userNameTextController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(10, 40, 10, 0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.05,
                ),
                appIcon(Icons.local_hospital_rounded),
                majorText('My Doctor'),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.05,
                ),
                descriptionText('Your No1 Medical Assistant'),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.1,
                ),
                reusableTextField('Enter Your Name', Icons.verified_user, false,
                    _userNameTextController),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.02,
                ),

                reusableTextField('Enter Email', Icons.verified_user, false,
                    _emailTextController),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.02,
                ),
                reusableTextField("Enter Password", Icons.lock_outline, true,
                    _passwordTextController),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.03,
                ),
                //Email Box

                //Personal Phone Number
                // Padding(
                //   padding: const EdgeInsets.symmetric(horizontal: 20.0),
                //   child: Container(
                //     decoration: BoxDecoration(
                //       color: Colors.grey[200],
                //       // border: Border.all(
                //       //   color: Colors.white,
                //       // ),
                //       borderRadius: BorderRadius.circular(10.0),
                //     ),
                //     child: IntlPhoneField(
                //       decoration: const InputDecoration(
                //         border: InputBorder.none,
                //         hintText: 'Phone Number',
                //       ),
                //       initialCountryCode: 'UG',
                //       onChanged: (phone) {
                //         print(phone.completeNumber);
                //       },
                //     ),
                //   ),
                // ),

                //Password Box

                signInSignUpButton(context, false, () {
                  FirebaseAuth.instance
                      .createUserWithEmailAndPassword(
                          email: _emailTextController.text,
                          password: _passwordTextController.text)
                      .then((value) {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => HomePage()));
                  }).onError((error, stackTrace) {
                    print('Error : ${error.toString()}');
                  });
                }),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.03,
                ),
                //Forgot Password        //Register

                signInOption(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Row signInOption() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'You have an account?',
          style: TextStyle(
              color: Colors.black45, fontWeight: FontWeight.bold, fontSize: 18),
        ),
        GestureDetector(
          onTap: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => LoginPage()));
          },
          child: Text(
            '  Login',
            style: TextStyle(
                color: Colors.blue, fontWeight: FontWeight.bold, fontSize: 18),
          ),
        )
      ],
    );
  }
}
