import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:manajemen_waktu/firebase_options.dart';

import 'screens/welcome_screens.dart';

void main() async {
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: WelcomeScreen(),
    );
  }
}
