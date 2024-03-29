import 'package:flutter/material.dart';
import 'package:tap_az_test/pages/menu_screen.dart';

class Animation3 extends StatefulWidget {
  const Animation3({super.key});

  @override
  State<Animation3> createState() {
    return Animation3State();
  }
}

class Animation3State extends State<Animation3> {
  var updatedX = 0.0;
  var startedX = 0.0;
  var endX = 0.0;
  var isOpened = false;
  var delta = 0.0;
  var isVertialScrolled = false;

  var duration = const Duration(milliseconds: 100);
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: GestureDetector(
        onVerticalDragUpdate: (details) => {},
        onTap: () => {},
        onHorizontalDragStart: (details) {
          setState(() {
            startedX = details.globalPosition.dx;
          });
        },
        onHorizontalDragEnd: (details) {
          setState(() {
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
          });
        },
        onHorizontalDragUpdate: (details) {
          setState(() {
            if (details.globalPosition.dx <= 0.75 * width) {
              if (startedX <= 30 ||
                  (isOpened == true &&
                      (details.primaryDelta! < -0.5 ||
                          details.primaryDelta! > 0.5))) {
                updatedX = details.globalPosition.dx + details.primaryDelta!;
              }
            }
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
                      child:  MenuScreen(),),
                  Container(
                      height: height,
                      width: width,
                      color: Colors.red,
                      child: SingleChildScrollView(
                        child: Column(
                          children: [
                            AppBar(
                                title: const Text("Tap.az"),
                                centerTitle: true,
                                leading: IconButton(
                                  icon: const Icon(Icons.menu),
                                  onPressed: () {
                                    setState(() {
                                      if (isOpened) {
                                        updatedX = 0.0;
                                        isOpened = false;
                                      } else {
                                        updatedX = 0.75 * width;
                                        isOpened = true;
                                      }
                                    });
                                  },
                                ))
                          ],
                        ),
                      ))
                ],
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
