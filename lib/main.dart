import 'package:contact_diary_app_bhavin/Provider/theam_provider.dart';
import 'package:contact_diary_app_bhavin/Screens/homepage.dart';
import 'package:contact_diary_app_bhavin/Utils/mytheam.dart';
import 'package:contact_diary_app_bhavin/one_time_intro_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'Screens/add_contact.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SharedPreferences preferences = await SharedPreferences.getInstance();

  bool isVisitOnce = preferences.getBool("visited") ?? false;
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider<TheamProvider>(
          create: (context) => TheamProvider(),
        )
      ],
      builder: (context, child) => MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: myTheam.lightTheme,
        darkTheme: myTheam.darkTheme,
        themeMode:
            (Provider.of<TheamProvider>(context).myTheamModel.isDark == false)
                ? ThemeMode.light
                : ThemeMode.dark,
        initialRoute: (isVisitOnce == true) ? 'home' : '/',
        routes: {
          '/': (context) => const One_Time_Intro_Page(),
          'home': (context) => const HomePage(),
          'add_contact_page': (context) => const AddContactPage(),
        },
      ),
    ),
  );
}
