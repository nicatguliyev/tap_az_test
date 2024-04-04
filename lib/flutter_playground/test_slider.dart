import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class TestSlider extends StatefulWidget {
  @override
  State<TestSlider> createState() {
    return TestSliderState();
  }
}

class TestSliderState extends State<TestSlider> {
  var selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          CarouselSlider(
              items: [
                Container(
                  color: Colors.green,
                ),
                Container(
                  color: Colors.red,
                ),
                Container(
                  color: Colors.blue,
                )
              ],
              options: CarouselOptions(
                height: 300,
                //aspectRatio: 16 / 9,
                viewportFraction: 1,
                initialPage: 0,
                enableInfiniteScroll: true,
                reverse: false,
                autoPlay: true,
                autoPlayInterval: const Duration(seconds: 2),
                autoPlayAnimationDuration: const Duration(milliseconds: 800),
                autoPlayCurve: Curves.fastOutSlowIn,
                enlargeCenterPage: false,
                enlargeFactor: 2,
                padEnds: true,

                pageSnapping: true,
                onPageChanged: (index, reason) {
                  setState(() {
                    selectedIndex = index;
                  });
                },
                scrollDirection: Axis.horizontal,
              )),
          Positioned(
            bottom: 0,
            left: 0,
            height: 30,
            right: 0,
            child: Container(
              color: Colors.transparent,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  for (int i = 0; i < 3; i++)
                    dotIndicator(
                        i == selectedIndex ? Colors.white : const Color.fromARGB(114, 255, 255, 255))
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  Padding dotIndicator(Color color) {
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: Container(
        height: 6,
        width: 6,
        decoration: BoxDecoration(
            color: color,
            borderRadius: const BorderRadius.all(Radius.circular(3))),
      ),
    );
  }
}
