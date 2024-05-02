import 'package:flutter/material.dart';
import 'package:tap_az_test/flutter_playground/animations_example.dart';
import 'package:tap_az_test/flutter_playground/custom_scrollview_example.dart';
import 'package:tap_az_test/flutter_playground/drawer_example.dart';
import 'package:tap_az_test/flutter_playground/gesture_detector.dart';
import 'package:tap_az_test/flutter_playground/listview_example.dart';
import 'package:tap_az_test/flutter_playground/scrollview_example.dart';
import 'package:tap_az_test/flutter_playground/test_app_bar.dart';
import 'package:tap_az_test/flutter_playground/test_home_screen.dart';
import 'package:tap_az_test/flutter_playground/test_http_request.dart';
import 'package:tap_az_test/flutter_playground/test_image.dart';
import 'package:tap_az_test/flutter_playground/test_product_gridview.dart';
import 'package:tap_az_test/flutter_playground/test_slider.dart';
import 'package:tap_az_test/items/product_card_item.dart';
import 'package:tap_az_test/pages/home_screen.dart';
import 'package:tap_az_test/pages/main_screen.dart';
import 'package:tap_az_test/pages/menu_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return      MaterialApp(
      home:  TestProductGridview(),
    );
  }
}

