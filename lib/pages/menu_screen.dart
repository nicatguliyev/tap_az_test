import 'package:flutter/material.dart';
import 'package:tap_az_test/items/menu_list_item.dart';
import 'package:tap_az_test/model/MenuItemModel.dart';

class MenuScreen extends StatefulWidget {
  const MenuScreen({super.key});

  @override
  State<MenuScreen> createState() {
    return MenuScreenState();
  }
}

class MenuScreenState extends State<MenuScreen> {
  final menuItems = [
    MenuItemModel(icon: const Icon(Icons.favorite_outline), name: "Favorites"),
    MenuItemModel(icon: const Icon(Icons.access_alarm), name: "Access"),
    MenuItemModel(icon: const Icon(Icons.add), name: "Elan Yerləşdir")
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16, right: 16, top: 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ListView.separated(
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return MenuListItem(
                  menuItemModel: menuItems[index],
                );
              },
              separatorBuilder: (context, index) {
                return Container(
                  color: const Color.fromARGB(255, 206, 206, 206),
                  height: 0.5,
                );
              },
              itemCount: menuItems.length),
          Container(
            color: const Color.fromARGB(255, 206, 206, 206),
            height: 0.5,
          ),
          const SizedBox(
            height: 40,
          ),
          const Text(
            "Yardım",
            style: TextStyle(fontSize: 18, color: Color.fromARGB(255, 98, 98, 98)),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            color: const Color.fromARGB(255, 206, 206, 206),
            height: 0.5,
          ),
          ListView.separated(
            padding:  EdgeInsets.zero,
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return MenuListItem(
                  menuItemModel: menuItems[index],
                );
              },
              separatorBuilder: (context, index) {
                return Container(
                  color: const Color.fromARGB(255, 206, 206, 206),
                  height: 0.5,
                );
              },
              itemCount: menuItems.length),
        ],
      ),
    );
  }
}

