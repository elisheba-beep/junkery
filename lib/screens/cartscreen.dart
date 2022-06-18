import 'package:flutter/material.dart';
import 'package:untitled/widgets/cta_button.dart';
import 'package:untitled/widgets/product_qty.dart';
import 'package:untitled/widgets/price.dart';
import 'package:untitled/widgets/product_details.dart';
import 'package:untitled/globals.dart' as globals;

class CartScreen extends StatefulWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor:
              globals.backgroundColor(),
          leading: Padding(
            padding: const EdgeInsets.only(left: 15.0),
            child: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(
                Icons.arrow_back_ios,
                color: globals.textColor(),
              ),
            ),
          ),
          title: Text(
            "Cart",
            style: TextStyle(
              color: globals.textColor(),
              fontWeight: FontWeight.bold,
            ),
          ),
          centerTitle: true,
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 15.0),
              child: Builder(
                builder: (context) => IconButton(
                  icon: Icon(
                    Icons.drag_handle,
                    color: globals.textColor(),
                    size: 40,
                  ),
                  onPressed: () => Scaffold.of(context).openEndDrawer(),
                ),
              ),
            ),
          ],
        ),
        endDrawer: Drawer(
          backgroundColor:
              globals.backgroundColor(),
          child: ListView(
            children: [
              DrawerHeader(
                decoration: BoxDecoration(
                  color: globals.containerColor(),
                ),
                child: Image.asset("assets/images/Burger.png"),
              ),
              ListTile(
                title: Text(
                  "Change mode",
                  style: TextStyle(
                    color: globals.textColor(),
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                onTap: () {
                  setState(() {
                    globals.darkmode = !globals.darkmode;
                  });
                },
              ),
            ],
          ),
        ),
        body: Container(
          color: globals.backgroundColor(),
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20.0, vertical: 10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Delivery time",
                          style: TextStyle(
                            color: globals.textColor(),
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Today 11.00AM",
                              style: TextStyle(
                                color: globals.subtextColor(),
                              ),
                            ),
                            Icon(
                              Icons.arrow_forward_ios,
                              color: globals.subtextColor(),
                              size: 15,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.only(
                        topRight: Radius.circular(30),
                        topLeft: Radius.circular(30),
                      ),
                      color: globals.containerColor(),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                            Icon(
                                Icons.location_on_outlined,
                                color: globals.cardButtonColor(),
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 10.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Wisteria st 30, Houston, TX",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: globals.textColor(),
                                      ),
                                    ),
                                    Text(
                                      "Mr. Smith +555 9867 4321",
                                      textAlign: TextAlign.start,
                                      style: TextStyle(
                                        color: globals.subtextColor(),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          Icon(
                            Icons.arrow_forward_ios_sharp,
                            color: globals.cardButtonColor(),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    color: globals.containerColor(),
                    height: 350,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: const BorderRadius.only(
                          topRight: Radius.circular(30),
                          topLeft: Radius.circular(30),
                        ),
                        color: globals.backgroundColor(),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Column(children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: const [
                                  ProductQty(
                                    url: "assets/images/burger-small.png",
                                    quantity: "2",
                                  ),
                                  ProductDetails(
                                    product: "Beef Burger",
                                    size: "250g - Size L",
                                  ),
                                ],
                              ),
                              const Price(
                                price: "25",
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: const [
                                  ProductQty(
                                      quantity: "1",
                                      url: "assets/images/hot-wings.png"),
                                  ProductDetails(
                                      product: "Hot Wings",
                                      size: "300g - Size L"),
                                ],
                              ),
                              const Price(price: "10"),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: const [
                                  ProductQty(
                                      quantity: "1",
                                      url: "assets/images/coca-cola.png"),
                                  ProductDetails(
                                      product: "Coca Cola", size: "50 cl"),
                                ],
                              ),
                              const Price(price: "2.50"),
                            ],
                          ),
                        ]),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Payment Details",
                          style: TextStyle(
                            color: globals.textColor(),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Image.asset(
                              "assets/images/mastercard-logo.png",
                              scale: 1,
                            ),
                            const Text(
                              "**** **** **** 3095",
                              style: TextStyle(
                                color: Color(0xff898EBC),
                                fontSize: 16,
                              ),
                            ),
                            OutlinedButton(
                              style: OutlinedButton.styleFrom(
                                side: BorderSide(
                                    color: globals.cardButtonColor(),),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30),
                                ),
                              ),
                              onPressed: () {},
                              child: Text(
                                "Change",
                                style: TextStyle(
                                  color: globals.cardButtonColor(),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20.0, vertical: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            RichText(
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: "Total:",
                                    style: TextStyle(
                                      color: globals.textColor(),
                                      fontSize: 17,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  TextSpan(
                                    text: "\$37,50",
                                    style: TextStyle(
                                      color:globals.textColor(),
                                      fontSize: 21,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const Text(
                              "4 items",
                              style: TextStyle(
                                color: Color(0xff898EBC),
                                fontSize: 16,
                              ),
                            ),
                          ],
                        ),
                        CTAButton(
                            onPressed: () {
                              Navigator.pushNamed(context, '/fourth');
                            },
                            text: "Pay"),
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
