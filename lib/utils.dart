import 'package:flutter/material.dart';

final Map<String, String> circularPercentMap = {
  'Energy': 'assets/images/energy.PNG',
  'Range': 'assets/images/range.PNG',
  'Break fluid': 'assets/images/break.PNG',
  'Tire Wear': 'assets/images/tire.PNG'
};

final Map<Color, Color> progressMap = {
  Colors.white: const Color.fromARGB(255, 122, 29, 143),
  Colors.red: Colors.grey.shade200,
  Colors.purple: Colors.grey.shade200,
  Colors.yellow: Colors.grey.shade200
};

List<double> progressPercent = [45, 57, 9, 25];

List<Color> recommendedCarsColors = [
  const Color(0xffE0DFA4),
  const Color(0xffE3ECF1),
  const Color(0xffF3E3E4)
];

Map<String, String> recommendedCarsImages = {
  'Mini Cooper': 'assets/images/car_2.PNG',
  'Porsche 911 Carrera': 'assets/images/car_3.PNG',
  'Porsche 911 Carrera ': 'assets/images/car_4.PNG'
};

Map<String, String> recommendedCarsSpeed = {
  '132K': '\$32/h',
  '130K': '\$28/h',
  '130K ': '\$28/h'
};
