import 'package:flutter/material.dart';
import 'package:tap_az_test/items/product_card_item.dart';

class TestProductGridview extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.count(crossAxisCount: 2, 
         childAspectRatio: 0.65,
       children: [
        ProductCardItem(), 
        ProductCardItem(),
        ProductCardItem(),
        ProductCardItem(),
        ProductCardItem(), 
        ProductCardItem(), 
        ProductCardItem(), 
        ProductCardItem(), 
        ProductCardItem(), 
        ProductCardItem(), 
        ProductCardItem(), 
        ProductCardItem()],),
    );
  }
}
