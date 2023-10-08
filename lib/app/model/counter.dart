class Counter {
  Counter(this.counter, {required this.maxLimit, required this.minLimit});
  int counter = 0;
  int maxLimit = 10;
  int minLimit = 0;

  Counter.fromJson(Map<String, dynamic> json) {
    counter = json['counter'];
    maxLimit = json['maxLimit'];
    minLimit = json['minLimit'];
  }

  Map<String, dynamic> toJson() {
    return {
      'counter': counter,
      'maxLimit': maxLimit,
      'minLimit': minLimit
    };
  }
}