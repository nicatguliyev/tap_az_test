import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:tap_az_test/flutter_playground/scrollview_example.dart';

class GestureDetectorExample extends StatefulWidget {
  const GestureDetectorExample({super.key});

  @override
  State<GestureDetectorExample> createState() {
    return GestureDetectorExampleState();
  }
}

class GestureDetectorExampleState extends State<GestureDetectorExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onHorizontalDragStart: (details) {
          print("started");
        },
        onHorizontalDragEnd: (details) {
          print("ended");
        },
        onHorizontalDragUpdate: (details) => {
          if (details.globalPosition.dx < 20) {print("Open Drawer")}
        },

        //child: ScrollViewExample(),
      ),
    );
  }
}

class ContainerRow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            Container(
              width: 200,
              color: Colors.green,
            ),
            Container(
              width: 400,
              color: Colors.red,
            )
          ],
        ),
      ),
    );
  }
}

class AnimatedRow extends StatefulWidget {
  @override
  State<AnimatedRow> createState() {
    return AnimatedRowState();
  }
}

class AnimatedRowState extends State<AnimatedRow>
    with SingleTickerProviderStateMixin {
  late AnimationController controller;
  late Animation<double> animation;

  @override
  void initState() {
    super.initState();
    controller =
        AnimationController(vsync: this, duration: Duration(seconds: 1));
    animation = Tween(begin: 0.0, end: 1.0).animate(controller);
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          Container(
            width: 200,
            color: Colors.green,
            child: Center(
              child: ElevatedButton(
                child: Text("Animate to second screen"),
                onPressed: () {
                  controller.forward();
                },
              ),
            ),
          ),
          AnimatedBuilder(
            animation: animation,
            builder: (context, child) {
              return Transform.translate(
                offset: Offset(100 * animation.value, 0),
                child: Container(
                  width: 300,
                  color: Colors.red,
                ),
              );
            },
          )
        ],
      ),
    );
  }
}

class PointerTest extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Listener(
        onPointerUp: (event) => {print("Pointer Up")},
        //onPointerMove: (event) => {print("Pointer moved")},
        child: Container(
          width: 200,
          height: 200,
          color: Colors.green,
        ),
      ),
    );
  }
}

class HandleHorozontalMoving extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      physics: const AlwaysScrollableScrollPhysics(),
      child: Listener(
        onPointerDown: (event) => {print(event.position)},
        //onPointerUp: (event) => {print("Pointer Up")},
        //behavior: HitTestBehavior.opaque,
        //onHorizontalDragStart: (details) => {print("Started")},
        //nHorizontalDragUpdate: (details) => {print(details.globalPosition)},
        child: Row(
          children: [
            Container(
              width: 300,
              color: Colors.green,
            ),
            Container(
              width: 400,
              color: Colors.red,
            )
          ],
        ),
      ),
    );
  }
}

class HandleHorizontalMoving extends StatefulWidget {
  @override
  State<HandleHorizontalMoving> createState() {
    return HandleHorizontalMovingState();
  }
}

class HandleHorizontalMovingState extends State<HandleHorizontalMoving> {
  ScrollPhysics physics = const NeverScrollableScrollPhysics();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      physics: physics,
      child: Listener(
        onPointerDown: (event) {
          setState(() {
            physics = const AlwaysScrollableScrollPhysics();
          });
        },
        //onPointerUp: (event) => {print("Pointer Up")},
        //behavior: HitTestBehavior.opaque,
        //onHorizontalDragStart: (details) => {print("Started")},
        //nHorizontalDragUpdate: (details) => {print(details.globalPosition)},
        child: Row(
          children: [
            Container(
              width: 300,
              color: Colors.green,
            ),
            Container(
              width: 400,
              color: Colors.red,
            )
          ],
        ),
      ),
    );
  }
}
