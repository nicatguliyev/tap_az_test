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
  final menuItems1 = [
    MenuItemModel(
        icon: const Icon(Icons.account_circle_rounded), name: "Giriş"),
    MenuItemModel(
        icon: const Icon(Icons.my_library_books_rounded),
        name: "Mənim elanlarım"),
    MenuItemModel(
        icon: const Icon(Icons.add_circle_rounded), name: "Elan Yerləşdir")
  ];

  final menuItems2 = [
    MenuItemModel(
        icon: const Icon(Icons.brightness_3_outlined), name: "Tətbiq rejimi"),
    MenuItemModel(
        icon: const Icon(Icons.language_outlined), name: "Azərbaycan"),
    MenuItemModel(icon: const Icon(Icons.phone_android_outlined), name: "Əlaqə")
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16, right: 16, top: 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ListView.separated(
              padding: const EdgeInsets.only(top: 50),
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    print(index);
                  },
                  child: MenuListItem(
                    menuItemModel: menuItems1[index],
                  ),
                );
              },
              separatorBuilder: (context, index) {
                return Container(
                  color: const Color.fromARGB(255, 206, 206, 206),
                  height: 0.5,
                );
              },
              itemCount: menuItems1.length),
          Container(
            color: const Color.fromARGB(255, 206, 206, 206),
            height: 0.5,
          ),
          const SizedBox(
            height: 40,
          ),
          const Text(
            "Yardım",
            style:
                TextStyle(fontSize: 18, color: Color.fromARGB(255, 98, 98, 98)),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            color: const Color.fromARGB(255, 206, 206, 206),
            height: 0.5,
          ),
          ListView.separated(
              padding: EdgeInsets.zero,
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return GestureDetector(
                  
                  onTap: () {
                    print(menuItems2[index].name);
                  },
                  child: MenuListItem(
                    menuItemModel: menuItems2[index],
                  ),
                );
              },
              separatorBuilder: (context, index) {
                return Container(
                  color: const Color.fromARGB(255, 206, 206, 206),
                  height: 0.5,
                );
              },
              itemCount: menuItems2.length),
        ],
      ),
    );
  }
}
