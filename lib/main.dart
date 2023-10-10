import 'package:flutter/material.dart';
import 'package:propertyapp/view/logninScreen.dart';
import 'package:propertyapp/view/onboardScreen.dart';
import 'package:propertyapp/view/signupScreen.dart';


void main() {

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        // colorScheme: ColorScheme.fromSeed(seedColor: Color.fromARGB(255, 133, 85, 85)),
        useMaterial3: true,
      ),
      home: const OnboardScreen(),
    );
  }
}

