import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../bmi_calculator_controller.dart';

class ButtonsWidget extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    BMICalculatorController controller = Get.find();

    double buttonWeight = 130;
    double buttonHeight = 45;

    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            width: buttonWeight,
            height: buttonHeight,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.deepPurpleAccent,
              ),
              onPressed:() {
                controller.calculateBMI();
              },
              child: Text("Calculate"),
            ),
          ),
          const SizedBox(width: 20),
          SizedBox(
            width: buttonWeight,
            height: buttonHeight,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.deepPurpleAccent,
              ),
              onPressed:() {
                controller.reset();
              },
              child: Text("Reset"),
            ),
          ),
        ],
      ),
    );
  }
}
