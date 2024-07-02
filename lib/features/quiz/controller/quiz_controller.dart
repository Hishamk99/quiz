import 'dart:async';

import 'package:flutter/material.dart';
import 'package:quiz_app/features/answer/screens/answer_page.dart';
import 'package:quiz_app/features/quiz/data/questions_list.dart';

// import 'package:quiz_app/features/quiz/data/questions_list.dart';

class QuizController {
  late StreamController<int> streamIsActive;
  late Sink<int> inputStreamIsActive;
  late Stream<int> outputStreamIsActive;

  late StreamController<int> streamIndicator;
  late Sink<int> inputstreamIndicator;
  late Stream<int> outputstreamIndicator;

  late StreamController<int> streamQuestionAndAnswer;
  late Sink<int> inputQuestionAndAnswer;
  late Stream<int> outputQuestionAndAnswer;

  int index = -1;
  int currentQuestionIndex = 0;
  late Timer timer;
  QuizController() {
    streamIsActive = StreamController();
    inputStreamIsActive = streamIsActive.sink;
    outputStreamIsActive = streamIsActive.stream.asBroadcastStream();
    inputStreamIsActive.add(index);

    streamIndicator = StreamController();
    inputstreamIndicator = streamIndicator.sink;
    outputstreamIndicator = streamIndicator.stream.asBroadcastStream();

    streamQuestionAndAnswer = StreamController();
    inputQuestionAndAnswer = streamQuestionAndAnswer.sink;
    outputQuestionAndAnswer =
        streamQuestionAndAnswer.stream.asBroadcastStream();
    inputQuestionAndAnswer.add(0);
  }

  getNextIndexOfQuestion(BuildContext context) {
    currentQuestionIndex++;
    if (currentQuestionIndex == QuestionList.questionList.length) {
      Navigator.pushNamed(context, AnswersPage.id);
    } else {
      inputQuestionAndAnswer.add(currentQuestionIndex);
      makeCounter(context);
    }
  }

  void makeCounter(BuildContext context) {
    for (int i = 1; i <= 30; i++) {
      timer = Timer(Duration(seconds: i), () {
        inputstreamIndicator.add(i);
        if (i == 30) {
          getNextIndexOfQuestion(context);
        }
      });
    }
  }

  autoNextQuestion(BuildContext context) {
    if (currentQuestionIndex >= QuestionList.questionList.length - 1) {
    } else {
      currentQuestionIndex++;
      makeCounter(context);
    }
  }

  void onTapIndex(int ind) {
    index = ind;
    inputStreamIsActive.add(index);
  }

  void dispose() {
    streamIsActive.close();
    inputStreamIsActive.close();

    streamQuestionAndAnswer.close();
    inputQuestionAndAnswer.close();
  }
}
