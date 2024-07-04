import 'package:quiz_app/features/quiz/models/quiz_model.dart';

class QuestionList {
  static List<QuizModel> questionList = [
    QuizModel(
      question: "what is your job as engineer ",
      correctAnswer: '0',
      answers: [
        "flutter developer",
        "doctor",
        "teacher",
      ],
    ),
    QuizModel(
      question: "what is make flutter ",
      correctAnswer: '2',
      answers: [
        "microsoft",
        "oracle",
        "google",
        "amazon",
      ],
    ),
    QuizModel(
      question: "What is the capital of France?",
      correctAnswer: '1',
      answers: [
        "Berlin",
        "Paris",
        "London"
            "Rome",
      ],
    ),
    QuizModel(
      question: "Who wrote the play \"Romeo and Juliet\"",
      correctAnswer: '0',
      answers: [
        "William Shakespeare",
        "me",
        "Charles",
        "Hisham",
      ],
    ),
  ];

  static List<String> correctAnswers = [
    "flutter developer",
    "google",
    "Paris",
    "William Shakespeare",
  ];
}
