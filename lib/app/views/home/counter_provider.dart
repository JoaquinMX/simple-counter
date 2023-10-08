import 'package:flutter/foundation.dart';
import 'package:simple_counter/app/repository/counter_repository.dart';

class CounterProvider extends ChangeNotifier {
  late int _counter = 0;

  int get counter => _counter;

  set counter(int value) {
    _counter = value;
  }

  final _counterRepository = CounterRepository();

  void incrementCounter() {

    counter = _counterRepository.incrementCounter(counter);
    notifyListeners();
  }

  void decrementCounter() {
    counter = _counterRepository.decrementCounter(counter);
    notifyListeners();
  }

  void setCounter() {
    _counterRepository.setCounter(counter);
  }

  void fetchCounter() {
    _counterRepository.getCounter().then((value) {
      _counter = value;
      notifyListeners();
    });
  }

}