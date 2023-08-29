import 'package:contact_diary_app_bhavin/Model/theam_moddel.dart';
import 'package:flutter/cupertino.dart';
import 'package:shared_preferences/shared_preferences.dart';

class TheamProvider extends ChangeNotifier {
  TheamChange myTheamModel;

  TheamProvider({required this.myTheamModel});

  void ChangeTheam() async {
    myTheamModel.isDark = !myTheamModel.isDark;
    SharedPreferences save_my_theam = await SharedPreferences.getInstance();
    save_my_theam.setBool("save_theam", myTheamModel.isDark);
    notifyListeners();
  }
}
