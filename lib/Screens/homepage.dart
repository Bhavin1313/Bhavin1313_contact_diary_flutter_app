import 'package:flutter/material.dart';

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
        child: Icon(Icons.add),
      ),
      appBar: AppBar(
        title: Text("Home Page"),
      ),
      body: Center(
        child: Text("No Contact Add Yet.."),
      ),
    );
  }
}
