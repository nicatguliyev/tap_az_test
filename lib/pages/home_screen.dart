import 'package:flutter/material.dart';
import 'package:tap_az_test/flutter_playground/test_slider.dart';

class HomeScreen extends StatefulWidget {
  final VoidCallback onPressed;
  const HomeScreen({super.key, required this.onPressed});

  @override
  State<HomeScreen> createState() {
    return HomeScreenState();
  }
}

class HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(Object context) {
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: const Icon(Icons.menu),
            onPressed: widget.onPressed,
          ),
          title: const Text("Tap.az"),
          centerTitle: true,
        ),
        body: CustomScrollView(
          physics: const ClampingScrollPhysics(),
          slivers: [
            SliverAppBar(
              expandedHeight: 150,
              flexibleSpace: TestSlider(),
              floating: false,
            ),
            SliverAppBar(
              expandedHeight: 50,
              flexibleSpace: Container(
                color: Colors.black,
              ),
              floating: true,
            ),
            SliverList.builder(itemBuilder: (context, index) {
              return Center(child: Text("$index"),);
            },
            itemCount: 200,)
          ],
        ));
  }
}
