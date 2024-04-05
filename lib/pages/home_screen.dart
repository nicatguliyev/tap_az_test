import 'package:flutter/material.dart';
import 'package:tap_az_test/flutter_playground/test_search_textfield.dart';
import 'package:tap_az_test/flutter_playground/test_slider.dart';
import 'package:tap_az_test/items/home_category_item.dart';
import 'package:tap_az_test/model/CategoryItemModel.dart';

class HomeScreen extends StatefulWidget {
  final VoidCallback onPressed;
  const HomeScreen({super.key, required this.onPressed});

  @override
  State<HomeScreen> createState() {
    return HomeScreenState();
  }
}

class HomeScreenState extends State<HomeScreen> {
  List<CategoryItemModel> categories = [
    CategoryItemModel(categoryIcon: Icons.category, categoryName: "Kataloq"),
    CategoryItemModel(
        categoryIcon: Icons.car_repair,
        categoryName: "Ehtiyat hissələri və aksesuarlar"),
    CategoryItemModel(
        categoryIcon: Icons.child_care, categoryName: "Uşaq aləmi"),
    CategoryItemModel(categoryIcon: Icons.book, categoryName: "Şəxsi əşyalar"),
    CategoryItemModel(categoryIcon: Icons.home, categoryName: "Ev və bağ üçün"),
    CategoryItemModel(categoryIcon: Icons.phone, categoryName: "Elektronika"),
    CategoryItemModel(categoryIcon: Icons.pets, categoryName: "Heyvanlar")
  ];

  @override
  Widget build(Object context) {
    return Scaffold(
        extendBody: true,
        appBar: AppBar(
          bottom: PreferredSize(preferredSize: Size.fromHeight(50), child:  Container(
                height: 50,
                color: Colors.white,
                child: Row(
                  children: [
                     const Expanded(
                      child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: TextField(
                          cursorColor: Colors.grey,
                          style: TextStyle(fontSize: 14),
                          decoration: InputDecoration(
                              floatingLabelBehavior:
                                  FloatingLabelBehavior.never,
                              contentPadding: EdgeInsets.symmetric(
                                  vertical: 4, horizontal: 4),
                              labelText: "Enter Your Text",
                              filled: true,
                              fillColor: Color.fromARGB(74, 222, 222, 222),
                               enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Color.fromARGB(255, 222, 222, 222), width: 1)),
                               focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Color.fromARGB(255, 222, 222, 222), width: 1)),
                              border: OutlineInputBorder()),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 8),
                      child: Container(
                        height: 34,
                        width: 34,
                        decoration:  BoxDecoration(
                             color: const Color.fromARGB(74, 222, 222, 222),
                            borderRadius: const BorderRadius.all(Radius.circular(5)),
                            border: Border.all(color: const Color.fromARGB(255, 222, 222, 222), width:  1, )),
                      ),
                    )
                  ],
                ),
              ),),
          backgroundColor: Colors.white,
          toolbarHeight: 50,
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
              collapsedHeight: 110,
              expandedHeight: 110,
              flexibleSpace: Container(
                color: Colors.white,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return HomeCategoryItem(
                        categoryItemModel: categories[index]);
                  },
                  itemCount: categories.length,
                ),
              ),
              floating: true,
              // snap: false,
            ),
            SliverList.builder(
              itemBuilder: (context, index) {
                return Container(
                  color: const Color.fromARGB(255, 220, 220, 220),
                  child: Center(
                    child: Text("$index"),
                  ),
                );
              },
              itemCount: 200,
            )
          ],
        ));
  }
}
