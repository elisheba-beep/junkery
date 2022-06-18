import 'dart:async';
import 'package:untitled/globals.dart' as globals;
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState(){
    super.initState();
    Timer(
        const Duration(seconds: 3),
            ()=> Navigator.pushReplacementNamed(context, '/second')
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:  globals.backgroundColor(),
      body: Center(
        child: Image.asset("assets/images/Burger.png"),
      ),
    );
  }
}
