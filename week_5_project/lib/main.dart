import 'package:flutter/material.dart';
import 'package:week_5_project/screens/intro_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of  application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Auth',
      theme: ThemeData(
         scaffoldBackgroundColor: Color(0xffF2D1FF),
        useMaterial3: true,
      ),
      home: SigninOrSignupScreen(),
    );
  }
}

 