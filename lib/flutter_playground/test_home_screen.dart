import 'package:flutter/material.dart';

class HomeScreenTest extends StatefulWidget {
  const HomeScreenTest({super.key});

  @override
  State<HomeScreenTest> createState() {
    return HomeScreenTestState();
  }
}

class HomeScreenTestState extends State<HomeScreenTest> {
  @override
  Widget build(BuildContext context) {
    return Container(
       color: Colors.green,
      child: Column(children: [AppBar(title: const Text("Tap.az"), centerTitle: true,)],),
    );
  }
}
