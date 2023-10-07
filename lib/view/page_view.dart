import 'package:challenge/view/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:challenge/data/local_data.dart';

class PageViewScreen extends StatelessWidget {
  PageViewScreen({super.key});

  PageController controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: controller,
        scrollDirection: Axis.vertical,
        children: [
          HomeScreen(
            videoDate: data[0],
          ),
          HomeScreen(videoDate: data[1]),
          HomeScreen(videoDate: data[2],),
          HomeScreen(videoDate: data[3])
        ],
      ),
    );
  }
}
