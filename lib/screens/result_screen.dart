import 'package:flutter/material.dart';

class ResultScreen extends StatelessWidget {
  final String mood;

  const ResultScreen({super.key, required this.mood});

  @override
  Widget build(BuildContext context) {
    String message;

    if (mood == "Low") {
      message = "It’s okay to rest today 🌧️";
    } else if (mood == "Good") {
      message = "Capture this energy! ✨";
    } else {
      message = "Small steps still count 🌱";
    }

    return Scaffold(
      appBar: AppBar(title: const Text("Reflection 🌟")),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                message,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(height: 40),
              ElevatedButton(
                onPressed: () {
                  Navigator.popUntil(context, (route) => route.isFirst);
                },
                child: const Text("Back Home 🏠"),
              )
            ],
          ),
        ),
      ),
    );
  }
}
