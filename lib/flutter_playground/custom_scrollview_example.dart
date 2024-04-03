import 'package:flutter/material.dart';



class CustomScrollViewExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SliverList with Floating SliverAppBar',
      home: Scaffold(
        body: CustomScrollView(
          slivers: <Widget>[
            SliverAppBar(
              expandedHeight: 100,
              backgroundColor: Colors.green,
              // title: Text('Floating SliverAppBar'),
              flexibleSpace: Container(child: Center(child: Text("TEST"),),) ,
              
            ),
                 SliverAppBar(
              expandedHeight: 50,
              backgroundColor: Colors.red,
              title: Text('Floating SliverAppBar'),
              floating: true,
              
            ),
            SliverList(
              delegate: SliverChildBuilderDelegate(
                (BuildContext context, int index) {
                  return ListTile(
                    title: Text('Item $index'),
                  );
                },
                childCount: 50, // Adjust as needed
              ),
            ),
          ],
        ),
      ),
    );
  }
}
