import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ListViewExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body: ListView(
      padding: EdgeInsets.zero,
      children: [Container(color: Colors.green, height:  50,), Container(color: Colors.black, height: 100,)],)
      //body: Container(color: Colors.red, height: 100,),
    );
  }
}
