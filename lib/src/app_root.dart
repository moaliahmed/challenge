import 'package:flutter/material.dart';
import 'package:challenge/view/page_view.dart';
class AppRoot extends StatelessWidget {
  const AppRoot({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(

      debugShowCheckedModeBanner: false,
      home: PageViewScreen(),
    );
  }
}
