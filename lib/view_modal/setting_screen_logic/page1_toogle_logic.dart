import 'package:flutter/material.dart';

class Page_1_logic extends ChangeNotifier {
  bool is_switched = false;

 bool toogle_switch(newValue) {
  is_switched = newValue;
  notifyListeners();
  return is_switched;
   
  }

}
