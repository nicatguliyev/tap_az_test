import 'package:flutter/material.dart';
import 'package:tap_az_test/model/MenuItemModel.dart';

class MenuListItem extends StatelessWidget {
  final MenuItemModel menuItemModel;
  const MenuListItem({super.key, required this.menuItemModel});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.only(left: 8, top: 20, bottom: 20),
      child: Row(
        children: [
          menuItemModel.icon,
          const SizedBox(
            width: 15,
          ),
          Text(menuItemModel.name, style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w400),)
        ],
      ),
    );
  }
}
