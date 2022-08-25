import 'package:flutter/material.dart';
import 'package:plant_app_zero/constants.dart';
import 'screens/home/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Plan App',
      theme: ThemeData(
        colorScheme: const ColorScheme.light(primary: kPrimaryColor),
        scaffoldBackgroundColor: kBackgroundColor,
      ),
      home: const HomeScreen(),
    );
  }
}
