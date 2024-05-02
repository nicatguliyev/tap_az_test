import 'package:flutter/material.dart';
import 'package:http/http.dart';

class ProductCardItem extends StatefulWidget {
  const ProductCardItem({super.key});

  @override
  State<ProductCardItem> createState() {
    return ProductCarditemState();
  }
}

class ProductCarditemState extends State<ProductCardItem> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Card(
          elevation: 3,
          color: Colors.white,
           surfaceTintColor: Colors.white,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  Image.asset("assets/sweater.png"),
                  Positioned(
                      bottom: 0,
                      right: 0,
                      child: Container(
                        height: 50,
                        width: 50,
                        decoration: const BoxDecoration(color: Colors.green),
                      ))
                ],
              ),
              const Padding(
                padding: EdgeInsets.only(left: 8),
                child: Text(
                  "130 AZN",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 8),
                child: Text(
                  
                  "Dondurma aparatı ehtiyat ",
                  style: TextStyle(color: Color.fromARGB(255, 53, 53, 53), fontSize: 17, fontWeight: FontWeight.w400),
                ),
              ),
              const Spacer(),

              const Padding(
                padding:  EdgeInsets.only(left: 8, bottom: 8),
                child: Text("Bakı, bugün, 19:15", style: TextStyle(color: Color.fromARGB(255, 139, 139, 139)),),
              )
            ],
          )),
    );
  }
}
