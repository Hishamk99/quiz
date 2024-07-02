import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quiz_app/features/quiz/data/questions_list.dart';
import 'package:quiz_app/features/quiz/models/quiz_model.dart';

part 'question_state.dart';

class QuestionCubit extends Cubit<QuestionState> {
  QuestionCubit() : super(QuestionInitial());
  int lenQuestion = QuestionList.questionList.length;
  int currentIndex = 0;
  QuizModel question = QuestionList.questionList[0];
  getQuestion() {
    currentIndex++;

    if (currentIndex == lenQuestion) {
      emit(QuestionEnded());
    } else {
      question = QuestionList.questionList[currentIndex];
      emit(QuestionQuestionIndex());
    }
  }
}
