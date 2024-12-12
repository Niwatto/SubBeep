import 'package:flutter/material.dart';

class CardBand extends StatelessWidget {
  final String image;

  const CardBand({super.key, required this.image});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(
          color: Colors.grey.shade300,
          width: 1.0,
        ),
        borderRadius: BorderRadius.circular(5.0),
      ),
      width: 300,
      height: 200,
      child: Image.asset(image),
    );
  }
}
