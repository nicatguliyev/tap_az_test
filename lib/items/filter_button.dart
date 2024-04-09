import 'package:flutter/material.dart';

class FilterButton extends StatelessWidget {
  const FilterButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        splashColor: const Color.fromARGB(97, 222, 222, 222),
        borderRadius: const BorderRadius.all(Radius.circular(10)) ,
        onTap: () {
          print("Tapped");
        },
        child: Container(
          height: 44,
          width: 44,
          decoration: BoxDecoration(
              color: const Color.fromARGB(74, 222, 222, 222),
              borderRadius: const BorderRadius.all(Radius.circular(10)),
              border: Border.all(
                color: const Color.fromARGB(255, 222, 222, 222),
                width: 1,
              )),
          child: const Center(
            child: Icon(
              Icons.equalizer,
              color: Colors.blue,
            ),
          ),
        ),
      ),
    );
  }
}
