

import 'package:flutter/cupertino.dart';

class ServicesVM with ChangeNotifier {
  List cartList = [];
  double totalCost = 0;

  void add(item) {
    cartList.add(item);
    notifyListeners();
  }
}