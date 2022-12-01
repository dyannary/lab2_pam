import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pam_lab2/bmi_calculator_page/bmi_calculator_controller.dart';
import 'package:pam_lab2/bmi_calculator_page/widgets/buttons_widget.dart';
import 'package:pam_lab2/bmi_calculator_page/widgets/header_widgets.dart';
import 'package:pam_lab2/bmi_calculator_page/widgets/result_widget.dart';

import 'widgets/inputs_widget.dart';

class BMICalculatorPage extends StatefulWidget {
  const BMICalculatorPage({Key? key}) : super(key: key);

  @override
  State<BMICalculatorPage> createState() => _BMICalculatorPageState();
}

class _BMICalculatorPageState extends State<BMICalculatorPage> {

  static const String _title = 'BMI Calculator';

  @override
  void initState() {

    Get.put(BMICalculatorController());

    super.initState();
  }

  @override
  Widget build(BuildContext context) {

    BMICalculatorController controller = Get.find();

    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark().copyWith(
          primaryColor: const Color(0xFF0A0E21),
          scaffoldBackgroundColor: const Color(0xFF0A0E21),
        ),
        home: Scaffold(
          body: Container(
            margin: const EdgeInsets.only(top: 25),
            //decoration: BoxDecoration(border: Border.all(color:Colors.red, width: 2)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                HeaderWidget(),

                InputsWidget(),

                ButtonsWidget(),

                ResultWidget(),
              ],
            ),
          ),
        ),
    );
  }
}
