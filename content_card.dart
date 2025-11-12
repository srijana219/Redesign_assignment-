import 'package:flutter/material.dart';

class ContentCard extends StatelessWidget {
  const ContentCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(16),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      elevation: 3,
      child: const Padding(
        padding: EdgeInsets.all(16.0),
        child: Text('This is a redesigned content card.'),
      ),
    );
  }
}