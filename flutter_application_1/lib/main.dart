import 'package:flutter/material.dart';
import 'package:flutter_application_1/success_rate_calculation/success_rate_calculation.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SuccessRateCalculationScreen(),
    );
  }
}
