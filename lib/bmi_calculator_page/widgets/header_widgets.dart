import 'package:flutter/material.dart';

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
      //    decoration: BoxDecoration(border: Border.all(color:Colors.red, width: 2)),
          child: const Text(
            "BMI Calculator",
            style: TextStyle(fontSize: 40, color: Colors.white),
          ),
        )
      ],
    );
  }
}
