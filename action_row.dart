import 'package:flutter/material.dart';

class ActionRow extends StatelessWidget {
  const ActionRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          ElevatedButton(onPressed: () {}, child: const Text('Action 1')),
          ElevatedButton(onPressed: () {}, child: const Text('Action 2')),
        ],
      ),
    );
  }
}