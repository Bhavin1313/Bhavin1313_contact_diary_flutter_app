import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';

class One_Time_Intro_Page extends StatefulWidget {
  const One_Time_Intro_Page({super.key});

  @override
  State<One_Time_Intro_Page> createState() => _One_Time_Intro_PageState();
}

class _One_Time_Intro_PageState extends State<One_Time_Intro_Page> {
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 0,
      ),
      body: IntroductionScreen(
        pages: [
          PageViewModel(
            titleWidget: Text(
              "Contant Diary App",
              style: TextStyle(
                  color: Colors.blueAccent,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
            bodyWidget: Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: h * .5,
                    width: w,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage(
                            "https://apkmodo.net/wp-content/uploads/2022/01/CallApp-MOD-APK1.jpg"),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Always Know",
                    style: TextStyle(
                      color: Colors.blueAccent,
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "Who's Calling!",
                    style: TextStyle(
                      color: Colors.blueAccent,
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Enjoyed by over 220 million users",
                    style: TextStyle(
                      color: Colors.blueAccent,
                      fontSize: 15,
                    ),
                  ),
                ],
              ),
            ),
          ),
          PageViewModel(
            titleWidget: Text(
              "Contant Diary App",
              style: TextStyle(
                  color: Colors.blueAccent,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
            bodyWidget: Column(
              children: [
                Text(
                  "Know who is calling before you",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "answer",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                Container(
                  height: h * .50,
                  width: w * .5,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(
                          "https://www.tapsmart.com/wp-content/uploads/2022/02/IMG_1163-scaled.jpg"),
                      fit: BoxFit.cover,
                    ),
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ],
            ),
          ),
          PageViewModel(
            titleWidget: Text(
              "Contant Diary App",
              style: TextStyle(
                  color: Colors.blueAccent,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
            bodyWidget: Column(
              children: [
                Text(
                  "Protect yourself from spam",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                Container(
                  height: h * .50,
                  width: w * .5,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(
                          "https://images.prismic.io/tc-blog/cbe41949-cd71-4a38-8a15-1acaf0dffef6_Blog+-+Colors+of+Caller+ID+-+2.png?auto=compress,format"),
                      fit: BoxFit.cover,
                    ),
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ],
            ),
          ),
          PageViewModel(
            titleWidget: Text(
              "Contant Diary App",
              style: TextStyle(
                  color: Colors.blueAccent,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
            bodyWidget: Column(
              children: [
                Text(
                  "Your SMS inbox categorized into",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "highlights, spam and more",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                Container(
                  height: h * .50,
                  width: w * .5,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(
                          "https://media.istockphoto.com/id/1204778488/vector/chat-interface-application-with-dialogue-window-clean-mobile-ui-design-concept-sms-messenger.jpg?s=612x612&w=0&k=20&c=LaCe1SmcMPqHV2FXDKukpCqpWRZvaFKp9VY0U9aBH5E="),
                      fit: BoxFit.cover,
                    ),
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ],
            ),
          ),
          PageViewModel(
            title: "Title of custom body page",
            bodyWidget: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text("Click on "),
                Icon(Icons.edit),
                Text(" to edit a post"),
              ],
            ),
            image: const Center(child: Icon(Icons.android)),
          ),
        ],
        showNextButton: true,
        next: Text("Next"),
        done: const Text("Done"),
        onDone: () {
          Navigator.pushReplacementNamed(context, 'home');
        },
      ),
    );
  }
}
