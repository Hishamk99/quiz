import 'dart:async';

class HomeController {
  late StreamController<int> indicatorStream;
  late Sink<int> inputIndicator;
  late Stream<int> outputIndicator;
  HomeController() {
    indicatorStream = StreamController<int>();
    inputIndicator = indicatorStream.sink;
    outputIndicator = indicatorStream.stream;
    inputIndicator.add(0);
  }
}
