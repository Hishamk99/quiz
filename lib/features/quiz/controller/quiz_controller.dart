import 'dart:async';

class QuizController {
  late StreamController<int> streamIsActive;
  late Sink<int> inputStreamIsActive;
  late Stream<int> outputStreamIsActive;

  late StreamController<int> streamIndicator;
  late Sink<int> inputstreamIndicator;
  late Stream<int> outputstreamIndicator;

  int index = -1;

  int numOfQuestion = 0;
  QuizController() {
    streamIsActive = StreamController();
    inputStreamIsActive = streamIsActive.sink;
    outputStreamIsActive = streamIsActive.stream.asBroadcastStream();
    inputStreamIsActive.add(index);

    streamIndicator = StreamController();
    inputstreamIndicator = streamIndicator.sink;
    outputstreamIndicator = streamIndicator.stream.asBroadcastStream();
  }
  void onTapIndex(int ind) {
    index = ind;
    inputStreamIsActive.add(index);
  }

  void dispose() {
    streamIsActive.close();
    inputStreamIsActive.close();
    streamIndicator.close();
    inputstreamIndicator.close();
  }
}
