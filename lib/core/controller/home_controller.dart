import 'dart:async';

class HomeController {
  late StreamController<int> indicatorStream;
  late Sink<int> inputIndicator;
  late Stream<int> outputIndicator;

  static int currentINdexPage = 0;
  HomeController() {
    indicatorStream = StreamController<int>();
    inputIndicator = indicatorStream.sink;
    outputIndicator = indicatorStream.stream;
    inputIndicator.add(currentINdexPage);
    currentINdexPage++;
  }
  void tapNextPage() {
    currentINdexPage++;
    if (currentINdexPage == 3) {
      currentINdexPage = 0;
    }
    inputIndicator.add(currentINdexPage);
  }
}
