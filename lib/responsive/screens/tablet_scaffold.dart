import 'package:flutter/material.dart';
import 'package:responsive/responsive/helper/constant.dart';
import 'package:responsive/utils/custom_box.dart';
import 'package:responsive/utils/custom_tile.dart';

class TabletScaffold extends StatefulWidget {
  const TabletScaffold({super.key});

  @override
  State<TabletScaffold> createState() => _TabletScaffoldState();
}

class _TabletScaffoldState extends State<TabletScaffold> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: globalColorBackground,
      appBar: myAppBar,
      drawer: myDrawer,
      body: Column(
        children: [
          AspectRatio(
            aspectRatio: 4,
            child: SizedBox(
              width: double.infinity,
              child: GridView.builder(
                itemCount: 4,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 4),
                itemBuilder: (context, index) {
                  return const CustomBox();
                },
              ),
            ),
          ),
          Expanded(
              child: ListView.builder(
            itemCount: 15,
            itemBuilder: (context, index) {
              return const CustomTile();
            },
          ))
        ],
      ),
    );
  }
}
