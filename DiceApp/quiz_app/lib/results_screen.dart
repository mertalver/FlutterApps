import 'package:flutter/material.dart';
import 'package:quizapp/data/questions.dart';
import 'package:quizapp/quiz_summary.dart';
import 'package:google_fonts/google_fonts.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen({super.key, required this.chosenAnswers, required this.restartQuiz});

  final List <String> chosenAnswers;
  final void Function() restartQuiz;

  List<Map<String, Object>> getQuestionDatas() {
    final List<Map<String, Object>> data = [];

    for (var i = 0; i < chosenAnswers.length; i++) {
      data.add(
        {
          'question_index': i, 
          'question': questions[i].text,
          'question_answer': questions[i].answers[0],
          'user_answer': chosenAnswers[i],
        },
      );
    }
    return data;
  }

  void resetChosenAnswers() {
    chosenAnswers.clear();
  }

  @override
  Widget build(BuildContext context) {
    final totalQuestions = questions.length;
    final numCorrectQuestions = getQuestionDatas().where((data) {
      return data['user_answer'] == data['question_answer'];
    }).length;

    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(50),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              textAlign: TextAlign.center,
              'You answered $numCorrectQuestions out of $totalQuestions questions correctly!',
              style: GoogleFonts.robotoSlab(
                  color: Colors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 30,
            ),
            QuizSummary(getQuestionDatas()),
            const SizedBox(
              height: 30,
            ),
            TextButton.icon(
              onPressed: restartQuiz,
              style: TextButton.styleFrom(
                iconColor: Colors.white,
              ),
              icon: const Icon(
                Icons.restart_alt_rounded,
                size: 40,
              ),
              label: const Text(
                'Restart Quiz!',
                style: TextStyle(color: Colors.white, fontSize: 25),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
