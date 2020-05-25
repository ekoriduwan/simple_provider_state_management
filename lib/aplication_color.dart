import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';

class AplicationColor with ChangeNotifier {
  bool _isLightBlue = true;

  bool get isLightBlue => _isLightBlue;

  set isLightBlue(bool value) {
    _isLightBlue = value;
    notifyListeners();
  }

  Color get color => isLightBlue ? Colors.lightBlue : Colors.amber;
}
