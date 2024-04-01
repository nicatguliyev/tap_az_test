import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() {
    return HomeScreenState();
  }
}

class HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(Object context) {
    return Column(
      children: [
        Container(height: 40, color: Colors.green),
        SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 80,
                color: Colors.grey,
              )
            ],
          ),
        )
      ],
    );
  }
}
