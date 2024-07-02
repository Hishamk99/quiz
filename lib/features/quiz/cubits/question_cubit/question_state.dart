part of 'question_cubit.dart';

@immutable
sealed class QuestionState {}

final class QuestionInitial extends QuestionState {}
final class QuestionEnded extends QuestionState {}
final class QuestionQuestionIndex extends QuestionState {}
