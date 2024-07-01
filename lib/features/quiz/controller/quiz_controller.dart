import 'dart:async';

class QuizController {
  late StreamController<int> streamIsActive;
  late Sink<int> inputStreamIsActive;
  late Stream<int> outputStreamIsActive;

  int index = -1;
  QuizController() {
    streamIsActive = StreamController();
    inputStreamIsActive = streamIsActive.sink;
    outputStreamIsActive = streamIsActive.stream.asBroadcastStream();
    inputStreamIsActive.add(index);
  }
  void onTapIndex(int ind) {
    index = ind;
    inputStreamIsActive.add(index);
  }

  void dispose() {
    streamIsActive.close();
    inputStreamIsActive.close();
  }
}
