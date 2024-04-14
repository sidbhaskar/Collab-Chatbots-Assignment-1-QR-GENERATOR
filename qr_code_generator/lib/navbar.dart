import 'package:flutter/material.dart';

class MyNavigationBar extends StatelessWidget {
  const MyNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      width: double.infinity,
      height: 60,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Icon(
            Icons.home_outlined,
            color: Colors.white70,
            size: 35,
          ),
          Icon(
            Icons.qr_code,
            color: Colors.green,
            size: 35,
          ),
          Icon(
            Icons.person_outline_outlined,
            color: Colors.white70,
            size: 35,
          ),
        ],
      ),
    );
  }
}
