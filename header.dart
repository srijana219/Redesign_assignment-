import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(16.0),
      child: Text(
        'Redesigned Screen Header',
        style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold, color: Colors.deepPurple),
      ),
    );
  }
}