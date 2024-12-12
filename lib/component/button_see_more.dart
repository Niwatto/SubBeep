import 'package:flutter/material.dart';

class ButtonSeeMore extends StatelessWidget {
  final Function() onPressed;

  const ButtonSeeMore({super.key, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(
          color: Colors.black,
          width: 2.0,
        ),
        borderRadius: BorderRadius.circular(5.0),
      ),
      margin: const EdgeInsets.all(10),
      child: TextButton(
        onPressed: onPressed,
        child: const Text(
          'See more',
          style: TextStyle(color: Colors.black),
        ),
      ),
    );
  }
}
