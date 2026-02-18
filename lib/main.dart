import 'package:flutter/material.dart';
import 'screens/login_screen.dart';

void main() {
  runApp(const MindifyApp());
}

class MindifyApp extends StatelessWidget {
  const MindifyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Mindify AI',
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.teal,
        ),
        scaffoldBackgroundColor: const Color(0xFFF3FAF8),
        fontFamily: 'Roboto',
      ),
      home: const LoginScreen(),
    );
  }
}
