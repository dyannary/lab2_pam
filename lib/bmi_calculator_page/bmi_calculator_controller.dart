import 'dart:math';

import 'package:get/get.dart';

class BMICalculatorController extends GetxController {

  RxInt height = RxInt(160);

  RxInt weight = RxInt(50);

  RxDouble bmi = RxDouble(0);

  String calculateBMI() {
    bmi.value = weight.value / pow(height.value / 100, 2);
    return bmi.toString();
  }

  String getResult() {
    if (bmi >= 25) {
      return 'Overweight';
    }
    else if (bmi > 18.5) {
      return 'Normal';
    }
    return 'Underweight';
  }
  void reset() {
    height.value = 160;
    weight.value = 50;
    bmi.value = 0;
  }
}