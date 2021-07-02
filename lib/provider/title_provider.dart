
import 'package:flutter/material.dart';

class TitleProvider extends ChangeNotifier {
  String _title = 'Home';
  String get title => _title;

  TitleProvider() {}

  void changeTitle(int selectedTabIndex){
    switch(selectedTabIndex){
      case 0:
        _title= 'Home';
        break;
      case 1:
        _title= 'News';
        break;
      case 2:
        _title= 'Services';
        break;
      case 3:
        _title= 'Project';
        break;
      case 4:
        _title= 'Success Stories';
        break;
    }
    notifyListeners();
  }
}