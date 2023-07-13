import 'package:flutter/material.dart';

class CustomTile extends StatelessWidget {
  const CustomTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: Colors.blueAccent.shade100),
        height: 80,
      ),
    );
  }
}
