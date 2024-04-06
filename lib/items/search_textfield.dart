import 'package:flutter/material.dart';

class SearchTextField extends StatelessWidget {
  const SearchTextField({super.key});

  @override
  Widget build(BuildContext context) {
    const String labelText = "Əşya və ya xidmət axtar";
    const Color greyColor = Colors.grey;
    const Color textFieldBackgroundColor = Color.fromARGB(74, 222, 222, 222);
    const OutlineInputBorder textFieldBorder = OutlineInputBorder(
        borderSide: BorderSide(color: textFieldBackgroundColor, width: 1),
        borderRadius: BorderRadius.all(Radius.circular(10)));

    return const TextField(
      cursorColor: greyColor,
      style: TextStyle(fontSize: 14),
      decoration: InputDecoration(
          prefixIcon: Icon(Icons.search),
          prefixIconColor: greyColor,
          floatingLabelBehavior: FloatingLabelBehavior.never,
          contentPadding: EdgeInsets.symmetric(vertical: 4, horizontal: 4),
          labelText: labelText,
          labelStyle: TextStyle(color: greyColor),
          filled: true,
          fillColor: textFieldBackgroundColor,
          enabledBorder: textFieldBorder,
          focusedBorder: textFieldBorder,
          border: OutlineInputBorder()),
    );
  }
}
