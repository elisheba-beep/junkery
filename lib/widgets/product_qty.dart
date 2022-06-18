import 'package:flutter/material.dart';

class ProductQty extends StatelessWidget {
  final String url;
  final String quantity;
  const ProductQty({
    required this.quantity,
    required this.url,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(url),
        Positioned(
          left: 60,
          child: Container(
            width: 25,
            height: 25,
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(
                Radius.circular(50),
              ),
              color: const Color(0xff061737).withOpacity(0.75),
            ),
            child: Text(
              quantity,
              style:
                  const TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ],
    );
  }
}
