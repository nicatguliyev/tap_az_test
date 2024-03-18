import 'package:flutter/material.dart';

class DrawerExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Tap.az"),
        ),
        body: PageView.builder(
          itemCount: 2,
          itemBuilder: (context, index) {
            return Transform.scale(
              scale: 1,
              child: Container(
                child: Center(
                  child: Text("SJBASJKBD"),
                ),
              ),
            );
          },
        ));
  }
}

class DrawerExample2 extends StatelessWidget {
  PageController controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Tap.az"),
        ),
        body: PageView(
          
          children: [
            FractionallySizedBox(
              widthFactor: 200,
              child: Container(
                color: Colors.green,
              ),
            ),
            FractionallySizedBox(
              child: Container(
                color: Colors.red,
              ),
            )
          ],
        ));
  }
}
