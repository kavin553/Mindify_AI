import 'package:flutter/material.dart';

Color moodColor(String mood) {
  switch (mood) {
    case 'Low':
      return Colors.blue.shade200;
    case 'Good':
      return Colors.green.shade300;
    default:
      return Colors.teal.shade300;
  }
}
