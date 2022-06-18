import 'package:flutter/material.dart';
import 'package:untitled/globals.dart' as globals;

class ProductDetails extends StatefulWidget {
  final String product;
  final String size;
  const ProductDetails({
    required this.product,
    required this.size,
    Key? key,
  }) : super(key: key);

  @override
  State<ProductDetails> createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            widget.product,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 17,
              color: globals.textColor(),
            ),
          ),
          Text(
            widget.size,
            style: TextStyle(
              color: globals.subtextColor(),
              fontSize: 14,
            ),
          ),
        ],
      ),
    );
  }
}
