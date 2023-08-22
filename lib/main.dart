import 'package:contact_diary_app_bhavin/Screens/homepage.dart';
import 'package:contact_diary_app_bhavin/Utils/mytheam.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Screens/add_contact.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: myTheam.lightTheme,
      darkTheme: myTheam.darkTheme,
      themeMode: ThemeMode.system,
      routes: {
        '/': (context) => HomePage(),
        'add_contact_page': (context) => AddContactPage(),
      },
    ),
  );
}
