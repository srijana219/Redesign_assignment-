import 'package:flutter/material.dart';

class Boost extends StatelessWidget {
  final double? height;
  final Widget? child;

  const Boost({super.key, this.height, this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height ?? 150,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.deepPurple,
        borderRadius: BorderRadius.circular(12),
      ),
      child: child ??
          const Center(
            child: Text(
              'Boost Component',
              style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
    );
  }
}