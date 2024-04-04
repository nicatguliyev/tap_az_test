import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class TestHomeScreen extends StatefulWidget {
  @override
  State<TestHomeScreen> createState() {
    return TestHomeScreenState();
  }
}

class TestHomeScreenState extends State<TestHomeScreen> {
  @override
  Widget build(BuildContext context) {
    var appBar = AppBar(
      title: const Text("Tap.az"),
      centerTitle: true,
    );
    return 
         Scaffold(body:     Container(
        color: Colors.red,
        child: Column(children: [
          AppBar(
            title: const Text("Tap.az"),
          ),
          Container(
            color: Colors.black,
            height: 200,
          ),
          Container(
            color: Colors.amber,
            height: 100,
          ),
          Expanded(child: HomeListView())
        ])),)
;
  }
}

class HomeListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.zero,
      itemBuilder: (context, index) {
        return Container(
          child: Center(
            child: Text("SOSOS"),
          ),
        );
      },
      itemCount: 50,
    );
  }
}
