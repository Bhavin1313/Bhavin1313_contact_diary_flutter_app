import 'package:flutter/material.dart';
import 'package:share_extend/share_extend.dart';
import 'package:url_launcher/url_launcher.dart';

import '../Model/contact_model.dart';

class Detail_Page extends StatefulWidget {
  const Detail_Page({super.key});

  @override
  State<Detail_Page> createState() => _Detail_PageState();
}

class _Detail_PageState extends State<Detail_Page> {
  @override
  Widget build(BuildContext context) {
    Contact data = ModalRoute.of(context)!.settings.arguments as Contact;
    return Scaffold(
      appBar: AppBar(
        title: Text("Contacts"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: 50,
              ),
              Container(
                height: 130,
                width: 130,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.grey,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "${data.firstname} ${data.lastname} ",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
              ),
              SizedBox(
                height: 20,
              ),
              Divider(
                thickness: 2,
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  FloatingActionButton(
                    onPressed: () async {
                      await launchUrl(
                        Uri.parse("tel:+91${data.phonenumber}"),
                      );
                    },
                    child: Icon(Icons.phone),
                    heroTag: null,
                  ),
                  FloatingActionButton(
                    onPressed: () async {
                      await launchUrl(
                        Uri.parse("sms:+91${data.phonenumber}"),
                      );
                    },
                    child: Icon(Icons.chat),
                    heroTag: null,
                  ),
                  FloatingActionButton(
                    onPressed: () async {
                      await launchUrl(
                        Uri.parse("mailto:${data.email}"),
                      );
                    },
                    child: Icon(Icons.email),
                    heroTag: null,
                  ),
                  FloatingActionButton(
                    onPressed: () {
                      ShareExtend.share(
                          "${data.firstname} ${data.phonenumber}", "Text");
                    },
                    child: Icon(Icons.share),
                    heroTag: null,
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Divider(
                thickness: 2,
              ),
              SizedBox(
                height: 20,
              ),
              Card(
                margin: EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 25, top: 10),
                      child: Text(
                        "Contact info",
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    ListTile(
                      leading: IconButton(
                        onPressed: () async {
                          await launchUrl(
                            Uri.parse("tel:+91${data.phonenumber}"),
                          );
                        },
                        icon: Icon(Icons.call),
                      ),
                      title: Text("${data.phonenumber}"),
                      trailing: IconButton(
                        onPressed: () async {
                          await launchUrl(
                            Uri.parse("sms:+91${data.phonenumber}"),
                          );
                        },
                        icon: Icon(
                          Icons.chat,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
