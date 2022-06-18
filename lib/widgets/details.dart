import 'package:flutter/material.dart';

class Details extends StatelessWidget {
  final String url;
  final String text;
  const Details({
    Key? key,
    required this.url,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 5.0),
            child: Image.asset(url),
          ),
          Text(
            text,
            style: const TextStyle(
              fontSize: 15,
              color: Color(0xff898EBC),
            ),
          ),
        ],
      ),
    );
  }
}

