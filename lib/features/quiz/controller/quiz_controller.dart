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

  late StreamController<double> streamAnimationController;
  late Sink<double> inputStreamAnimationController;
  late Stream<double> outputStreamAnimationController;

  late AnimationController animationController;
  double animationProgressPercent = 0.0;
  Tween<double> tween = Tween(begin: 0.0, end: 1.0);

  int index = -1;
  int currentQuestionIndex = 0;

  String name = '';
  QuizController(SingleTickerProviderStateMixin vsync) {
    animationController = AnimationController(
      vsync: vsync,
      duration: const Duration(
        seconds: 31,
      ),
    );
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

    streamAnimationController = StreamController();
    inputStreamAnimationController = streamAnimationController.sink;
    outputStreamAnimationController =
        streamAnimationController.stream.asBroadcastStream();
    inputStreamAnimationController.add(animationProgressPercent);
    forwardAnimation();
  }
  // pass name to answer page
  void addName(String yourName) {
    name = yourName;
  }

  getNextIndexOfQuestion(BuildContext context) {
    inputStreamIsActive.add(-1);
    currentQuestionIndex++;
    if (currentQuestionIndex == QuestionList.questionList.length) {
      Navigator.pushNamed(context, AnswersPage.id, arguments: {
        "name": name,
        "answers": choichedAnswer,
      });
    } else {
      inputQuestionAndAnswer.add(currentQuestionIndex);
      makeCounter();
    }
  }

  void forwardAnimation() {
    animationController.reset();
    animationController.forward();
    animationController.addListener(() {
      animationProgressPercent = tween.evaluate(animationController);
      inputstreamIndicator.add((animationProgressPercent * 31).toInt());
      inputStreamAnimationController.add(animationProgressPercent);
    });
  }

  restartAnimation(BuildContext context) {
    animationController.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        getNextIndexOfQuestion(context);
      }
    });
  }

  void makeCounter() {
    forwardAnimation();
    inputstreamIndicator.add((animationProgressPercent * 31).toInt());
  }

  List<int> choichedAnswer = List<int>.filled(QuestionList.questionList.length , -1);
  void onTapIndex(int ind) {
    // if (choichedAnswer.length == currentQuestionIndex) {
    //   choichedAnswer.add(ind);
    // } else {
      choichedAnswer[currentQuestionIndex] = ind;
    //}
    index = ind;
    inputStreamIsActive.add(index);
  }

  void dispose() {
    streamIsActive.close();
    inputStreamIsActive.close();

    streamQuestionAndAnswer.close();
    inputQuestionAndAnswer.close();

    streamIndicator.close();
    inputstreamIndicator.close();

    streamAnimationController.close();
    inputStreamAnimationController.close();
  }
}
