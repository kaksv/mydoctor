import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:mydoctor/home_page.dart';

import 'pages/login_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  // Initialising the Firebase App
// Future<FirebaseApp> _initialiesFirebase() async {
//   FirebaseApp firebaseApp = await Firebase.initializeApp();
//   return firebaseApp;
// }
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
