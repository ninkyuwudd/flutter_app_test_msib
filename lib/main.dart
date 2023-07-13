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
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // primaryColor: const Color.fromARGB(255, 43, 99, 123),
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color.fromARGB(255, 43, 99, 123)),
      ),
      home: const FirstScreen(),
    );
  }
}

