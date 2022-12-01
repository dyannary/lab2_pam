import 'package:flutter/material.dart';
import 'package:pam_lab2/bmi_calculator_page/bmi_calculator_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const BMICalculatorPage();
  }
}
