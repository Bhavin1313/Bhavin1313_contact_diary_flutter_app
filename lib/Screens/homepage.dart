import 'dart:async';

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, 'add_contact_page');
        },
        child: const Icon(Icons.add),
      ),
      appBar: AppBar(
        title: AnimatedTextKit(
          repeatForever: true,
          animatedTexts: [
            RotateAnimatedText(
              "Home Page",
              textStyle: GoogleFonts.getFont("Tilt Prism").merge(
                const TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
        centerTitle: true,
      ),
      body: Center(
        child: AnimatedTextKit(
          repeatForever: true,
          animatedTexts: [
            TyperAnimatedText("No Contact Add Yet..",
                textStyle: GoogleFonts.getFont("Tilt Prism").merge(
                  TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Colors.red.withOpacity(.5),
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
