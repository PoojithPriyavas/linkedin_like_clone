import 'package:flutter/material.dart';

class SignUpProvider extends ChangeNotifier {
  int _currentCarousalIndex = 0;
  int get currentCarousalIndex => _currentCarousalIndex;

  void setCarausalIndex(int index) {
    _currentCarousalIndex = index;
    notifyListeners();
  }
}
