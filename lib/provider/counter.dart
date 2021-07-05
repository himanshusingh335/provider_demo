import 'package:flutter/material.dart';

class Counter extends ChangeNotifier {
  int counter = 0;

  int increment() {
    counter += 1;
    notifyListeners();
    return counter;
  }
}
