import 'package:flutter/material.dart';
import 'package:tap_az_test/flutter_playground/animations_example.dart';
import 'package:tap_az_test/flutter_playground/drawer_example.dart';
import 'package:tap_az_test/flutter_playground/gesture_detector.dart';
import 'package:tap_az_test/flutter_playground/listview_example.dart';
import 'package:tap_az_test/pages/menu_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  const  MaterialApp(
      home:  Animation3(),
    );
  }
}

