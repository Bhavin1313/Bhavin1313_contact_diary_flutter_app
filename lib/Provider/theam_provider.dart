import 'package:contact_diary_app_bhavin/Model/theam_moddel.dart';
import 'package:flutter/cupertino.dart';

class TheamProvider extends ChangeNotifier {
  TheamChange myTheamModel = TheamChange(isDark: false);

  void ChangeTheam() {
    myTheamModel.isDark = !myTheamModel.isDark;
    notifyListeners();
  }
}
