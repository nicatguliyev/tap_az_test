import 'package:flutter/material.dart';
import 'package:tap_az_test/model/CategoryItemModel.dart';

class HomeCategoryItem extends StatelessWidget {
  final CategoryItemModel categoryItemModel;

  const HomeCategoryItem(
      {super.key, required this.categoryItemModel});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 8, left: 8, right: 8, bottom: 4),
          child: Container(
            height: 60,
            width: 60,
            decoration: const BoxDecoration(
                color: Color.fromARGB(255, 237, 237, 237),
                borderRadius: BorderRadius.all(Radius.circular(15))),
            child:  Center(child: Icon(categoryItemModel.categoryIcon)),
          ),
        ),
         SizedBox(
          width: 100,
          child: Text(
             categoryItemModel.categoryName,
            style: const TextStyle(fontSize: 12, height: 1),
            maxLines: 2,
            textAlign: TextAlign.center,
          ),
        )
      ],
    );
  }
}
