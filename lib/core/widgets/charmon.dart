import 'package:flutter/material.dart';

class CharMon extends StatelessWidget {
  const CharMon({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 20,
      decoration: BoxDecoration(
        color: Colors.black,
        border: Border.all(
          width: 0.5,
        ),
        borderRadius: const BorderRadius.all(
          Radius.circular(30),
        ),
      ),
      child: const Center(
        child: Text(
          r'$',
          style: TextStyle(color: Colors.white, fontSize: 13),
        ),
      ),
    );
  }
}
