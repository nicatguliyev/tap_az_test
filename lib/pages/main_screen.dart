import 'package:flutter/material.dart';
import 'package:tap_az_test/pages/home_screen.dart';
import 'package:tap_az_test/pages/menu_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() {
    return MainScreenState();
  }
}

class MainScreenState extends State<MainScreen> {
  var updatedX = 0.0;
  var startedX = 0.0;
  var endX = 0.0;
  var isOpened = false;
  var delta = 0.0;
  var isVertialScrolled = false;
  var duration = const Duration(milliseconds: 100);

  void toogleMenu(double width) {
    setState(() {
      if (isOpened) {
        updatedX = 0.0;
        isOpened = false;
      } else {
        updatedX = 0.75 * width;
        isOpened = true;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: GestureDetector(
        onVerticalDragUpdate: (details) => {},
        onHorizontalDragStart: (details) {
          setState(() {
            startedX = details.globalPosition.dx;
          });
        },
        onHorizontalDragEnd: (details) {
          setState(() {
            _handleHorizontalDragEnd(details, width);
          });
        },
        onHorizontalDragUpdate: (details) {
          setState(() {
            _handleHorizontalDragUpdate(details, width);
          });
        },
        child: Stack(children: [
          Positioned(
            top: 0,
            left: -0.75 * width,
            child: AnimatedContainer(
              duration: duration,
              transform: Matrix4.translationValues(updatedX, 0, 0),
              child: Row(
                children: [
                  Container(
                    height: height,
                    width: 0.75 * width,
                    color: Colors.white,
                    child: const MenuScreen(),
                  ),
                  Container(
                    width: width,
                    height: height,
                    color: Colors.red,
                    child: HomeScreen(
                      onPressed: () => {
                        toogleMenu(width)
                      },
                    ),
                  )
                ],
              ),
            ),
          ),
        ]),
      ),
    );
  }

  void _handleHorizontalDragUpdate(DragUpdateDetails details, double width) {
    if (details.globalPosition.dx <= 0.75 * width) {
      if (startedX <=
              30 || // Eger menu baglidirsa drag  yalniz ekranin dibinden isleyecek. Ekranin ortasindan yox
          (isOpened == true &&
              (details.primaryDelta! < -0.5 || details.primaryDelta! > 0.5))) {
        updatedX = details.globalPosition.dx + details.primaryDelta!;
      }
    }
  }

  void _handleHorizontalDragEnd(DragEndDetails details, double width) {
    if (updatedX < 0.35 * width) {
      updatedX = 0.0;
    } else {
      updatedX = 0.75 * width;
    }
    if (updatedX == 0.75 * width) {
      isOpened = true;
    }
    if (updatedX == 0.0) {
      isOpened = false;
    }
  }
}
