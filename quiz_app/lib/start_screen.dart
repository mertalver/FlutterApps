import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz, {super.key});

  final void Function() startQuiz;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(),
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset('images/quiz-logo.png', height: 400, width: 300, color: const Color.fromARGB(125, 255, 255, 255)),
            Text(
              'Welcome to the Quiz App!',
              style: GoogleFonts.robotoSlab(
                color: Colors.white,
                fontSize: 30,
                fontWeight: FontWeight.bold
              ),
            ),
            const SizedBox(height: 20),
            OutlinedButton.icon(
              onPressed:
                startQuiz,
              style: OutlinedButton.styleFrom(
                backgroundColor :const Color.fromARGB(142, 19, 117, 52),
                foregroundColor: Colors.white,
              ),
              icon: const Icon(Icons.arrow_forward_outlined),
              label: const Text(
                'Start Quiz',
                style: TextStyle(fontSize: 25),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
