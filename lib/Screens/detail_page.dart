import 'package:flutter/material.dart';

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
        title: Text("Detail Page"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            Text("${data.firstname} ${data.lastname} "),
            Text("${data.phonenumber}"),
            Text("${data.email}"),
          ],
        ),
      ),
    );
  }
}
