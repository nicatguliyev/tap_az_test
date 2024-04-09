// import 'package:flutter/material.dart';
// import 'package:http/http.dart' as http;

// class TestHttpRequest extends StatefulWidget {
//   const TestHttpRequest({super.key});

//   @override
//   State<TestHttpRequest> createState() {
//     return TestHttpeRequestState();
//   }
// }

// class TestHttpeRequestState extends State<TestHttpRequest> {
//   Future<void> fetchData() async {
//     final reponse =
//         await http.get(Uri.parse("http://localhost:3000/categories"));
//     if (reponse.statusCode == 200) {
//       print(reponse.body);
//     } else {
//       print("There is problem");
//     }
//   }

//   @override
//   void initState() {
//     super.initState();
//     fetchData();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Container();
//   }
// }

import 'package:http/http.dart' as http;

class TestRequest {
  Future<void> getRequest() async {
    try {
      final response =
          await http.get(Uri.parse("http://localhost:3000/categoriess"));
      if (response.statusCode == 200) {
        print("Everything is okay");
      } else {
        print(response.statusCode);
      }
    } catch (error) {
      print(error);
    }
  }
}
