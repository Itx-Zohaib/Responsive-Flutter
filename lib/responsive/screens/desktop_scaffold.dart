import 'package:flutter/material.dart';
import 'package:responsive/responsive/helper/constant.dart';
import 'package:responsive/utils/custom_box.dart';
import 'package:responsive/utils/custom_tile.dart';

class DesktopScaffold extends StatefulWidget {
  const DesktopScaffold({super.key});

  @override
  State<DesktopScaffold> createState() => _DesktopScaffoldState();
}

class _DesktopScaffoldState extends State<DesktopScaffold> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: globalColorBackground,
      drawer: myDrawer,
      body: Row(
        children: [
          myDrawer,
          Expanded(
            flex: 2,
            child: Column(
              children: [
                AspectRatio(
                  aspectRatio: 4,
                  child: SizedBox(
                    width: double.infinity,
                    child: GridView.builder(
                      itemCount: 4,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
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
          ),
          Expanded(
              child: Column(
            children: [
              Expanded(
                  child: Padding(
                padding:
                    const EdgeInsets.only(top: 8.0, bottom: 8.0, right: 8.0),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Colors.deepPurpleAccent.shade200,
                  ),
                ),
              ))
            ],
          ))
        ],
      ),
    );
  }
}
