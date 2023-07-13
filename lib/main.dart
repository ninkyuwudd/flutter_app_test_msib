import 'package:flutter/material.dart';
import 'package:flutter_apps_msib/screen/first_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          primary: Color.fromARGB(255, 250, 187, 0),
          seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const FirstScreen(),
    );
  }
}

