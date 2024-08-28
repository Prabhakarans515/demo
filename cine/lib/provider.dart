import 'package:flutter/material.dart';

class ProviderClass with ChangeNotifier {
  bool mode = false;

  void toggle() {
    mode = !mode;
    notifyListeners();
  }
}
