import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../bmi_calculator_controller.dart';
import 'input_picker_widget.dart';

class InputsWidget extends StatelessWidget {
  const InputsWidget({super.key});

  @override
  Widget build(BuildContext context) {

    BMICalculatorController controller = Get.find();

    return Container(
      decoration: BoxDecoration(border: Border.all(color:Colors.green, width: 2)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          InputPickerWidget(nameWidget: "Weight", input: controller.weight),

          const SizedBox(width: 60),

          InputPickerWidget(nameWidget: "Height", input: controller.height),
        ],
      ),
    );
  }
}
