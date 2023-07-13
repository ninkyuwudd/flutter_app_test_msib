import 'package:flutter/material.dart';

class TextFieldCommonWidget extends StatelessWidget {
  final String text;
  final TextEditingController controller;
  const TextFieldCommonWidget({super.key, required this.text, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 15),
      child: TextFormField(
        controller: controller,
        decoration: InputDecoration(
            border: const OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(18))),
            filled: true,
            fillColor: Colors.white,
            hintText: text
            ),
      ),
    );
  }
}
