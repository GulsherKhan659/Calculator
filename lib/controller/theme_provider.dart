import 'package:flutter/widgets.dart';

class ThemeProvider with ChangeNotifier {
  bool _isDark = false;

  isdark({required bool onChanged}) {
    this._isDark = onChanged;
    notifyListeners();
  }

  bool get isDark => _isDark;
}
