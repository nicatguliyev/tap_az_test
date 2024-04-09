import 'package:flutter/material.dart';

class TestImage extends StatelessWidget {
  const TestImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          color: Colors.green,
          height: 300,
          width: 300,
          child: Center(
            child: Image.asset("assets/tire.png", width: 100, height: 100, fit: BoxFit.cover,)
          
          ),
        ),
      ),
    );
  }
}
