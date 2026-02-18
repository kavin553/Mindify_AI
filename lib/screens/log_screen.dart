import 'package:flutter/material.dart';
import 'result_screen.dart';

class LogScreen extends StatefulWidget {
  const LogScreen({super.key});

  @override
  State<LogScreen> createState() => _LogScreenState();
}

class _LogScreenState extends State<LogScreen> {
  String selectedMood = '';

  Widget moodButton(String emoji, String text, Color color) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedMood = text;
        });
      },
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 300),
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: selectedMood == text ? color : color.withOpacity(0.3),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          children: [
            Text(emoji, style: const TextStyle(fontSize: 40)),
            const SizedBox(height: 10),
            Text(text),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Mood Check ✨")),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            const SizedBox(height: 30),
            const Text(
              "How are you feeling?",
              style: TextStyle(fontSize: 20),
            ),
            const SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                moodButton("😔", "Low", Colors.red),
                moodButton("😌", "Neutral", Colors.orange),
                moodButton("😊", "Good", Colors.green),
              ],
            ),
            const Spacer(),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.teal,
                padding:
                    const EdgeInsets.symmetric(horizontal: 40, vertical: 16),
              ),
              onPressed: selectedMood.isEmpty
                  ? null
                  : () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) => ResultScreen(mood: selectedMood),
                        ),
                      );
                    },
              child: const Text("Continue ➡️"),
            ),
          ],
        ),
      ),
    );
  }
}
