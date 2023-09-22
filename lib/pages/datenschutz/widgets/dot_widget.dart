import 'package:flutter/material.dart';

class DotWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 6.0,
      height: 6.0,
      decoration: const BoxDecoration(
        color: Colors.black,
        shape: BoxShape.circle,
      ),
      margin: const EdgeInsets.only(right: 8.0),
    );
  }
}
