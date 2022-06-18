import 'package:flutter/material.dart';
import 'package:untitled/screens/burgerscreen.dart';
import 'package:untitled/screens/cartscreen.dart';
import 'package:untitled/screens/deliveryscreen.dart';
import 'package:untitled/screens/splashscreen.dart';



void main() {
  runApp(const MyFood());
}
class MyFood extends StatelessWidget {
  const MyFood({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: "OpenSans",
      ),
      debugShowCheckedModeBanner: false,
      title: "My Food",
      initialRoute: '/',
      routes: {
        '/':(context) => const SplashScreen(),
        '/second':(context)=> const BurgerScreen(),
        '/third': (context)=>const CartScreen(),
        '/fourth':(context) => const DeliveryScreen(),
      },
    );
  }
}

