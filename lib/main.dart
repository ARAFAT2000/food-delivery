import 'package:flutter/material.dart';
import 'package:flutter_application_1/sign_in_screen.dart';
import 'introduction_screen.dart';


bool show = true;
void main(List<String> args) {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: show ? IntroScreen(): const SigninScreen(),
    );
  }
}
