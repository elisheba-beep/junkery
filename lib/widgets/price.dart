import 'package:flutter/material.dart';
import 'package:untitled/globals.dart' as globals;

class Price extends StatefulWidget {
  final String price;

  const Price({
    required this.price,
    Key? key,
  }) : super(key: key);

  @override
  State<Price> createState() => _PriceState();
}

class _PriceState extends State<Price> {
  final double? fontsize = 21;

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        children: [
          TextSpan(
            text: "\$",
            style: TextStyle(
              color: const Color(0xff4E60FF),
              fontSize: fontsize,
            ),
          ),
          TextSpan(
            text: widget.price,
            style: TextStyle(
              fontSize: fontsize,
              fontWeight: FontWeight.bold,
              color: globals.textColor(),
            ),
          ),
        ],
      ),
    );
  }
}
