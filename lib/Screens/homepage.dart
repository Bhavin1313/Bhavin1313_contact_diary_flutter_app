import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:contact_diary_app_bhavin/Provider/theam_provider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';

import '../Provider/contact_provider.dart';

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
            margin: EdgeInsets.all(5),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.white,
            ),
            child: ListTile(
              onTap: () {
                Navigator.pushNamed(context, 'detail',
                    arguments: ContactProvider.ContactList[i]);
              },
              leading: CircleAvatar(
                backgroundColor: Colors.lightBlue.withOpacity(.5),
                child: Text(
                  "${ContactProvider.ContactList[i].firstname[0]}",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              title: Text(
                  "${ContactProvider.ContactList[i].firstname} ${ContactProvider.ContactList[i].lastname}"),
              subtitle: Text("${ContactProvider.ContactList[i].phonenumber}"),
              trailing: IconButton(
                onPressed: () async {
                  await launchUrl(
                    Uri.parse(
                        "tel:+91${ContactProvider.ContactList[i].phonenumber}"),
                  );
                },
                icon: Icon(
                  Icons.phone,
                  color: Colors.green,
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
