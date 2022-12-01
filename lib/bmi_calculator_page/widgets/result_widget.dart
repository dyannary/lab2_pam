import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../bmi_calculator_controller.dart';

class ResultWidget extends StatefulWidget {

  @override
  State<ResultWidget> createState() => _ResultWidgetState();
}

class _ResultWidgetState extends State<ResultWidget> {
  @override
  Widget build(BuildContext context) {

    BMICalculatorController controller = Get.find();

    return Container(
      height: 50,
      decoration: BoxDecoration(border: Border.all(color:Colors.green, width: 2)),
      child: Obx(() {
        if (controller.bmi.value == 0) {
          return Container();
        }
        else {
          return Text(
            "BMI:${controller.bmi.toStringAsFixed(2)}  ${controller
                .getResult()}",
            style: const TextStyle(color: Colors.white, fontSize: 24),
          );
        }
      }),
    );
  }
}
