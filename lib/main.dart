// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:reviews_slider/reviews_slider.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage()
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  int? selectedValue1;
  int? selectedValue2;

  void onChange1(int value) {
    setState(() {
      selectedValue1 = value;
    });
  }

  // void onChange2(int value) {
  //   setState(() {
  //     selectedValue2 = value;
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: const Text("Review Slider",style: TextStyle(fontWeight: FontWeight.normal,fontSize: 15),),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'How was the help you received?',
              style: TextStyle(color: Color(0xFF6f7478), fontSize: 18),
            ),
            const SizedBox(height: 20),
            ReviewSlider(
              onChange: onChange1,
              options: const ['Terrible', 'Bad', 'Okay', 'Good', 'Great'],
              optionStyle: const TextStyle(
                fontSize: 15
              ),
            ),
            Text(
              selectedValue1.toString(),
              style: const TextStyle(
                fontSize: 20
              ),
            ),
            // const SizedBox(height: 20),
            // const Text(
            //   '¿Cómo fue la ayuda que recibiste?',
            //   style: TextStyle(color: Color(0xFF6f7478), fontSize: 18),
            // ),
            // const SizedBox(height: 20),
            // ReviewSlider(
            //     optionStyle: const TextStyle(
            //       color: Colors.red,
            //       fontWeight: FontWeight.bold,
            //     ),
            //     onChange: onChange2,
            //     initialValue: 1,
            //     options: ['Terrible', 'Malo', 'Bien', 'Vale', 'Genial']),
            // Text(selectedValue2.toString()),
          ],
        ),
      ),
    );
  }
}