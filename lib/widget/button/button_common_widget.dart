import 'package:flutter/material.dart';



class ButtonCommonWidget extends StatelessWidget {
  final String text;
  const ButtonCommonWidget({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 15),
      height: 50,
      width: MediaQuery.of(context).size.width,
      child: ElevatedButton(
        style: ButtonStyle(
    shape: MaterialStateProperty.all<OutlinedBorder>(
      RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0), // Adjust the value as needed
      ),
    ),
  ),
        onPressed: (){}, 
        child: Text(text)
        ),
    );
  }
}