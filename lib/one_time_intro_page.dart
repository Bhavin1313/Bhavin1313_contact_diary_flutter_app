import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

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
            titleWidget: const Text(
              "Content Diary App",
              style: TextStyle(
                  color: Colors.blueAccent,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
            bodyWidget: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: h * .5,
                  width: w,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(
                          "https://apkmodo.net/wp-content/uploads/2022/01/CallApp-MOD-APK1.jpg"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  "Always Know",
                  style: TextStyle(
                    color: Colors.blueAccent,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Text(
                  "Who's Calling!",
                  style: TextStyle(
                    color: Colors.blueAccent,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  "Enjoyed by over 220 million users",
                  style: TextStyle(
                    color: Colors.blueAccent,
                    fontSize: 15,
                  ),
                ),
              ],
            ),
          ),
          PageViewModel(
            titleWidget: const Text(
              "Content Diary App",
              style: TextStyle(
                  color: Colors.blueAccent,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
            bodyWidget: Column(
              children: [
                const Text(
                  "Know who is calling before you",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Text(
                  "answer",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
                Container(
                  height: h * .50,
                  width: w * .5,
                  decoration: BoxDecoration(
                    image: const DecorationImage(
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
            titleWidget: const Text(
              "Content Diary App",
              style: TextStyle(
                  color: Colors.blueAccent,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
            bodyWidget: Column(
              children: [
                const Text(
                  "Protect yourself from spam",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Text(
                  "",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
                Container(
                  height: h * .50,
                  width: w * .5,
                  decoration: BoxDecoration(
                    image: const DecorationImage(
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
            titleWidget: const Text(
              "Content Diary App",
              style: TextStyle(
                  color: Colors.blueAccent,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
            bodyWidget: Column(
              children: [
                const Text(
                  "Your SMS inbox categorized into",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Text(
                  "highlights, spam and more",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
                Container(
                  height: h * .50,
                  width: w * .5,
                  decoration: BoxDecoration(
                    image: const DecorationImage(
                      image: NetworkImage(
                          "https://www.truecaller.com/cms/9bcad967e3b812c12162e854f259cd56.png"),
                      fit: BoxFit.cover,
                    ),
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ],
            ),
          ),
          PageViewModel(
            titleWidget: const Text(
              "Content Diary App",
              style: TextStyle(
                  color: Colors.blueAccent,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
            bodyWidget: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: h * .3,
                  width: w,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(
                          "https://as2.ftcdn.net/v2/jpg/04/81/37/69/1000_F_481376965_nqo8KhkCPe48nCFtEFDIAZ0msf9ocJym.jpg"),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: const Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "We need your",
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        "permission to",
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        "continue",
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 100,
                ),
                Container(
                  height: h * .3,
                  width: w,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(
                        "https://mindxmaster.s3.amazonaws.com/wp-content/uploads/2020/06/mobile-smartphone-apps-ss-1920-800x450-1.jpg",
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
        showNextButton: true,
        next: const Text("Next"),
        done: const Text("Done"),
        onDone: () async {
          Navigator.pushReplacementNamed(context, 'home');
          SharedPreferences preferences = await SharedPreferences.getInstance();
          preferences.setBool("visited", true);
        },
      ),
    );
  }
}
