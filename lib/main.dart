import 'package:flutter/material.dart';
import 'package:kuytrip/screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'KuyTrip Flutter App',
      theme: ThemeData(fontFamily: 'Inter'),
      home: const HomeScreen(),
    );
  }
}
