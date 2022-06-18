import 'package:flutter/material.dart';
import 'package:untitled/widgets/price.dart';
import 'package:untitled/widgets/round_button.dart';
import "package:untitled/widgets/details.dart";
import 'package:untitled/widgets/cta_button.dart';
import 'package:untitled/globals.dart' as globals;

class BurgerScreen extends StatefulWidget {
  const BurgerScreen({Key? key}) : super(key: key);

  @override
  State<BurgerScreen> createState() => _BurgerScreenState();
}

class _BurgerScreenState extends State<BurgerScreen> {
 

  int _count = 0;
  bool favouritepressed = false;
  bool mediumpressed = false;
  bool largepressed = false;
  bool xlargepressed = false;
  double totalprice = 12.50;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: globals.backgroundColor(),
          leading: Padding(
            padding: const EdgeInsets.only(left: 15.0),
            child: IconButton(
              onPressed: () {
                Navigator.pushReplacementNamed(context, '/');
              },
              icon:  Icon(
                Icons.arrow_back_ios,
                color: globals.textColor(),
              ),
            ),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 15.0),
              child: IconButton(
                onPressed: () {
                  setState(() {
                    favouritepressed = !favouritepressed;
                  });
                },
                icon: Icon(
                  favouritepressed ? Icons.favorite : Icons.favorite_border,
                  color: globals.textColor(),
                ),
              ),
            ),
          ],
        ),
        body: Container(
          color: globals.backgroundColor(),
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Image.asset(globals.darkmode
                          ? "assets/images/Burger.png"
                          : "assets/images/burger-product.png"),
                      Padding(
                        padding: const EdgeInsets.only(top: 180),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            RoundButton(
                              fontsize: 20,
                              text: "M",
                              onPressed: () {
                                setState(() {
                                  mediumpressed = !mediumpressed;
                                  largepressed = false;
                                  xlargepressed = false;
                                });
                              },
                              textColor: mediumpressed
                                  ? Colors.white
                                  : const Color(0xff061737),
                              backgroundColor: mediumpressed
                                  ? const Color(0xff4E60FF)
                                  : Colors.white,
                            ),
                            RoundButton(
                              fontsize: 20,
                              text: "L",
                              onPressed: () {
                                setState(() {
                                  mediumpressed = false;
                                  largepressed = !largepressed;
                                  xlargepressed = false;
                                });
                              },
                              textColor: largepressed
                                  ? Colors.white
                                  : const Color(0xff061737),
                              backgroundColor: largepressed
                                  ? const Color(0xff4E60FF)
                                  : Colors.white,
                            ),
                            RoundButton(
                              fontsize: 20,
                              text: "XL",
                              onPressed: () {
                                setState(() {
                                  mediumpressed = false;
                                  largepressed = false;
                                  xlargepressed = !xlargepressed;
                                });
                              },
                              textColor: xlargepressed
                                  ? Colors.white
                                  : const Color(0xff061737),
                              backgroundColor: xlargepressed
                                  ? const Color(0xff4E60FF)
                                  : Colors.white,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Text(
                    "Beef Burger",
                    style: TextStyle(
                      color: globals.textColor(),
                      fontSize: 26,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  Price(
                    price: totalprice.toString(),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      RoundButton(
                        fontsize: 30,
                        text: "-",
                        textColor: const Color(0xff061737),
                        backgroundColor: Colors.white,
                        onPressed: () {
                          _count != 0 ? setState(() => _count--) : _count;
                        },
                      ),
                      Text(
                        _count.toString(),
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: globals.textColor(),
                        ),
                      ),
                      RoundButton(
                        fontsize: 30,
                        text: "+",
                        textColor: Colors.white,
                        backgroundColor: const Color(0xff4E60FF),
                        onPressed: () {
                          setState(() {
                            _count++;
                          });
                        },
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Details(url: "assets/images/star.png", text: "4.9"),
                      Details(url: "assets/images/fire.png", text: "250 kcal"),
                      Details(
                        url: "assets/images/clock.png",
                        text: "30 mins",
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Text(
                      "This beef burger use 100% quality beef with sliced tomatoes, cucumbers, vegetables and onions...",
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w400,
                        color: globals.textColor(),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            RichText(
                              text: TextSpan(
                                children: [
                                  const TextSpan(
                                    text: "Total",
                                    style: TextStyle(
                                      color: Color(0xff898EBC),
                                    ),
                                  ),
                                  const TextSpan(
                                    text: "x",
                                    style: TextStyle(
                                      color: Color(0xff898EBC),
                                    ),
                                  ),
                                  TextSpan(
                                    text: _count.toString(),
                                    style: const TextStyle(
                                      color: Color(0xff898EBC),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Price(
                              price: (totalprice * _count).toString(),
                            ),
                          ],
                        ),
                        CTAButton(
                          text: "Add to Cart",
                          onPressed: () {
                            Navigator.pushNamed(context, '/third');
                          },
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
