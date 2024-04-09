import 'package:flutter/material.dart';
import 'package:tap_az_test/flutter_playground/test_http_request.dart';
import 'package:tap_az_test/flutter_playground/test_search_textfield.dart';
import 'package:tap_az_test/flutter_playground/test_slider.dart';
import 'package:tap_az_test/items/filter_button.dart';
import 'package:tap_az_test/items/home_category_item.dart';
import 'package:tap_az_test/items/search_textfield.dart';
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
  void initState() {
    super.initState();
    TestRequest request = TestRequest();
    request.getRequest();
  }

  @override
  Widget build(Object context) {
    return Scaffold(
        extendBody: true,
        appBar: AppBar(
          scrolledUnderElevation: 0,
          bottom: PreferredSize(
            preferredSize: const Size.fromHeight(60),
            child: Container(
              height: 60,
              color: Colors.white,
              child: const Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.only(
                          left: 16, right: 8, top: 8, bottom: 8),
                      child: SearchTextField(),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 16),
                    child: FilterButton(),
                  )
                ],
              ),
            ),
          ),
          backgroundColor: Colors.white,
          toolbarHeight: 50,
          leading: IconButton(
            icon: const Icon(
              Icons.menu,
              size: 32,
              color: Color.fromARGB(255, 255, 123, 0),
            ),
            onPressed: widget.onPressed,
          ),
          title: const Text(
            "tap.az",
            style: TextStyle(
                color: Color.fromARGB(255, 255, 123, 0),
                fontSize: 26,
                fontWeight: FontWeight.bold),
          ),
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
