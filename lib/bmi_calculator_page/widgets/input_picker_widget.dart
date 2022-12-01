import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:numberpicker/numberpicker.dart';

class InputPickerWidget extends StatefulWidget {
  const InputPickerWidget({Key? key, required this.nameWidget, required this.input}) : super(key: key);

  final String nameWidget;

  final RxInt input;

  @override
  State<InputPickerWidget> createState() => _InputPickerWidgetState();
}

class _InputPickerWidgetState extends State<InputPickerWidget> {

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Obx(() => NumberPicker(
          minValue: 0,
          maxValue: 300,
          value: widget.input.value,
          textStyle: const TextStyle(color: Colors.white38),
          selectedTextStyle: const TextStyle(color: Colors.lightGreen, fontSize: 34),
          onChanged: (value) {
            setState(() {
              widget.input.value = value;
            });
          },
        )),
        const SizedBox(height: 10),
        Text(
          widget.nameWidget,
          style: const TextStyle(fontSize: 25),
        ),
      ],
    );
  }
}
