import 'package:flutter/material.dart';
import 'package:untitled3/Screens/tuneAppPLayerScreen.dart';
import 'package:untitled3/Second/LogIN.dart';
import 'package:untitled3/Second/messenger_Screen.dart';

import 'First_Sec/bmiScreen.dart';
import 'testcode/LOgtest.dart';

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
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: TuneScreen(),
    );
  }
}

