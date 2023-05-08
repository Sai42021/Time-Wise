import 'package:flutter/material.dart';
import 'Screens/landing_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Word Wise',
      theme: ThemeData(
         primarySwatch: Colors.teal,
      scaffoldBackgroundColor: Colors.teal
      ),
      home: const LandingPage(),
    );
  }
}