import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:contact_diary_app_bhavin/Model/contact_model.dart';
import 'package:contact_diary_app_bhavin/Provider/contact_provider.dart';
import 'package:contact_diary_app_bhavin/Provider/theam_provider.dart';
import 'package:contact_diary_app_bhavin/Utils/mytheam.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

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
        leading: const Text(""),
        actions: [
          IconButton(
            onPressed: () {
              Provider.of<TheamProvider>(context, listen: false).ChangeTheam();
            },
            icon: Icon((Provider.of<TheamProvider>(context, listen: false)
                        .myTheamModel
                        .isDark ==
                    false)
                ? Icons.sunny
                : Icons.wb_sunny_outlined),
          )
        ],
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
      body: ListView.builder(
        itemCount: ContactProvider.ContactList.length,
        itemBuilder: (ctx, i) {
          return Container(
            margin: EdgeInsets.all(10),
            height: 50,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20), color: Colors.white),
            child: Row(
              children: [
                Expanded(
                  flex: 3,
                  child: Container(
                    height: 40,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.grey,
                    ),
                    child: Icon(
                      Icons.person,
                      size: 35,
                      color: Colors.white,
                    ),
                  ),
                ),
                Expanded(
                  flex: 10,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text("${ContactProvider.ContactList[i].firstname}"),
                          SizedBox(
                            width: 5,
                          ),
                          Text("${ContactProvider.ContactList[i].lastname}"),
                        ],
                      ),
                      Text("+91 ${ContactProvider.ContactList[i].phonenumber}"),
                    ],
                  ),
                ),
                Expanded(
                  flex: 3,
                  child: Icon(
                    Icons.call,
                    color: Colors.green,
                    size: 35,
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
