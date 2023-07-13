import 'package:flutter/material.dart';



class ButtonCommonWidget extends StatefulWidget {
  final Function() fungsi;
  final String text;
  const ButtonCommonWidget({super.key, required this.text, required this.fungsi});

  @override
  State<ButtonCommonWidget> createState() => _ButtonCommonWidgetState();
}

class _ButtonCommonWidgetState extends State<ButtonCommonWidget> {
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
        onPressed: (){
          widget.fungsi();
        }, 
        child: Text(widget.text)
        ),
    );
  }
}