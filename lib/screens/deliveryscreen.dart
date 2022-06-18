import 'package:flutter/material.dart';

import 'package:untitled/globals.dart' as globals;

class DeliveryScreen extends StatefulWidget {
  const DeliveryScreen({Key? key}) : super(key: key);

  @override
  State<DeliveryScreen> createState() => _DeliveryScreenState();
}

class _DeliveryScreenState extends State<DeliveryScreen> {
 

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor:
            globals.backgroundColor(),
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          leading: Padding(
            padding: const EdgeInsets.only(left: 15.0),
            child: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon:Icon(
                Icons.arrow_back_ios,
                color: globals.textColor(),
              ),
            ),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 15.0),
              child: Builder(
                builder: (context) => IconButton(
                  icon:  Icon(
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
        body: SingleChildScrollView(
          child: Container(
            height: MediaQuery.of(context).size.height,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  "assets/images/map.png",
                ),
                fit: BoxFit.cover,
              ),
            ),
            child: Column(mainAxisAlignment: MainAxisAlignment.end, children: [
              Row(
                children: [
                  Image.asset("assets/images/delivery-guy.png"),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "David Morel",
                        style: TextStyle(
                          color: globals.textColor(),
                          fontSize: 17,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Text(
                        "4.9 based on 100 ratings",
                        style: TextStyle(
                          color: globals.subtextColor(),
                          fontWeight: FontWeight.w600,
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20.0, vertical: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Image.asset("assets/images/delivery-icons.png"),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Your delivery time",
                                    style: TextStyle(
                                      color: globals.subtextColor(),
                                      fontWeight: FontWeight.w600,
                                      fontSize: 14,
                                    ),
                                  ),
                                  Text(
                                    "15 minutes",
                                    style: TextStyle(
                                      color: globals.textColor(),
                                      fontSize: 17,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 30,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Your address",
                                    style: TextStyle(
                                      color: globals.subtextColor(),
                                      fontWeight: FontWeight.w600,
                                      fontSize: 14,
                                    ),
                                  ),
                                  Text(
                                    "Wisteria st 30, Houston, TX",
                                    style: TextStyle(
                                      color: globals.textColor(),
                                      fontSize: 17,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 65,
                      height: 65,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          shape: const CircleBorder(),
                          primary: const Color(0xff4E60FF),
                        ),
                        onPressed: () {
                         
                        },
                        child: Icon(
                          Icons.phone_outlined,
                          color:globals.backgroundColor(),
                          size: 35,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
