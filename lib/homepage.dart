import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final currentWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: currentWidth < 600
          ? Colors.deepPurple.shade400
          : Colors.green.shade300,
      body: Center(
        child: Text(currentWidth.toString()),
      ),
    );
  }
}
