import 'package:flutter/material.dart';

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
          slivers: [
            SliverAppBar(
              expandedHeight: 100,
              flexibleSpace: Container(
                color: Colors.green,
              ),
              floating: false,
            ),
            SliverAppBar(
              expandedHeight: 50,
              flexibleSpace: Container(
                color: Colors.black,
              ),
              floating: true,
            ),
            SliverToBoxAdapter(
              child: Container(
                height: 1000,
                color: Colors.red,
              ),
            )
          ],
        ));
  }
}
