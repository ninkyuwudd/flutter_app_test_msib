import 'package:flutter/material.dart';

class CustomAlertDialogWidget extends StatelessWidget {
  final String titleText;
  final String content;
  const CustomAlertDialogWidget({super.key, required this.titleText, required this.content});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(titleText),
      content: Text(content),
      actions: [
        ElevatedButton(
          child: const Text('Close'),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ],
    );;
  }
}