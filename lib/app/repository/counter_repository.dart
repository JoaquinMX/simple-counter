import 'package:shared_preferences/shared_preferences.dart';

class CounterRepository {
  int incrementCounter(int counter) {
    if (counter < 10) {
      return counter + 1;
    }
    return counter;
  }

  int decrementCounter(int counter)  {
    if (counter > 0) {
      return counter - 1;
    }
    return counter;
  }

  void setCounter(int counter) async {
    final prefs = await SharedPreferences.getInstance();
    prefs.setInt('counter', counter);
  }

  Future<int> getCounter() async {
    final prefs = await SharedPreferences.getInstance();
    final counter = prefs.getInt('counter') ?? 0;
    return counter;
  }
}