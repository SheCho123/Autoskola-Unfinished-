import 'dart:io';
import 'package:applikacija1/instruktorPodaciScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'main.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
  runApp(const MaterialApp(home: HomeScreen()));
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    final statusBarHeight = MediaQuery.of(context).padding.top;
    double unitHeightValue = screenHeight * 0.01;
    double unitWidthValue = screenWidth * 0.01;
    double multiplier = 8;
    return Scaffold(
        body: Stack(
      children: [
        Container(
            height: screenHeight * 0.125,
            width: screenWidth,
            child: Container(
                margin: EdgeInsets.only(
                    left: screenWidth * 0.1659, top: screenHeight * 0.05),
                child: Text(
                  "HOME",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      fontSize: screenHeight * 0.06),
                )),
            color: const Color.fromARGB(255, 180, 182, 228)),
        Container(
          height: screenHeight,
          width: screenWidth * 0.125,
          color: const Color.fromARGB(255, 94, 97, 170),
          child: Column(children: [
            Container(
              child: Image.asset("assets/images/Bars.png"),
              margin: EdgeInsets.only(
                  top: screenHeight * 0.05, bottom: screenHeight * 0.03809),
            ),
            Divider(
              thickness: screenHeight * 0.004,
              color: Colors.grey,
            ),
            Container(
              height: screenHeight * 0.06666,
              width: screenWidth * 0.125,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(
                "assets/images/SidebarImg1.png",
              ))),
              child: TextButton(
                onPressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const InstruktorPodaci())),
                child: const Text(" "),
              ),
            ),
            Divider(
              thickness: screenHeight * 0.004,
              color: Colors.grey,
            ),
            Container(
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/images/SidebarImg2.png"))),
              child: TextButton(
                  onPressed: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const InstruktorPodaci())),
                  child: const Text(" ")),
            ),
            Divider(
              thickness: screenHeight * 0.004,
              color: Colors.grey,
            ),
            Container(
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/images/SidebarImg3.png"))),
              child: TextButton(
                  onPressed: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const InstruktorPodaci())),
                  child: const Text(" ")),
            ),
            Divider(
              thickness: screenHeight * 0.004,
              color: Colors.grey,
            ),
            Container(
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/images/SidebarImg4.png"))),
              child: TextButton(
                  onPressed: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const InstruktorPodaci())),
                  child: const Text(" ")),
            ),
            Divider(
              thickness: screenHeight * 0.004,
              color: Colors.grey,
            ),
            Container(
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/images/SidebarImg5.png"))),
              child: TextButton(
                  onPressed: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const InstruktorPodaci())),
                  child: const Text(" ")),
            ),
            Divider(
              thickness: screenHeight * 0.004,
              color: Colors.grey,
            ),
            Container(
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/images/SidebarImg6.png"))),
              child: TextButton(
                  onPressed: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const InstruktorPodaci())),
                  child: const Text(" ")),
            ),
            Divider(
              thickness: screenHeight * 0.004,
              color: Colors.grey,
            ),
            Container(
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/images/SidebarImg7.png"))),
              child: TextButton(
                  onPressed: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const InstruktorPodaci())),
                  child: const Text(" ")),
            ),
            Divider(
              thickness: screenHeight * 0.004,
              color: Colors.grey,
            ),
          ]),
        ),
        Column(
          children: [
            Container(
                margin: EdgeInsets.only(
                    top: (screenHeight + statusBarHeight) * 0.15095,
                    left: screenWidth * 0.1386),
                child: Container(
                    width: screenWidth * 0.83409,
                    height: screenHeight * 0.06595,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 255, 245, 162),
                      borderRadius: BorderRadius.circular(5),
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.grey,
                          blurRadius: 4,
                          offset: Offset(1, 2), // Shadow position
                        ),
                      ],
                    ),
                    child: Align(
                      alignment: Alignment.center,
                      child: Text(
                        "Nadolazeći Termini",
                        style: TextStyle(fontSize: screenHeight * 0.04),
                        textAlign: TextAlign.center,
                      ),
                    ))),
            Container(
                margin: EdgeInsets.only(
                    top: (screenHeight + statusBarHeight) * 0.03,
                    left: screenWidth * 0.1386),
                child: Container(
                    width: screenWidth * 0.83409,
                    height: screenHeight * 0.06595,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(5),
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.grey,
                          blurRadius: 4,
                          offset: Offset(1, 2), // Shadow position
                        ),
                      ],
                    ),
                    child: Align(
                      alignment: Alignment.center,
                      child: Text(
                        "Placeholder",
                        style: TextStyle(fontSize: screenHeight * 0.04),
                        textAlign: TextAlign.center,
                      ),
                    ))),
          ],
        ),
        Column(
          children: [
            Container(
                margin: EdgeInsets.only(
                    top: (screenHeight + statusBarHeight) * 0.35095,
                    left: screenWidth * 0.1386),
                child: Container(
                    width: screenWidth * 0.83409,
                    height: screenHeight * 0.06595,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 255, 245, 162),
                      borderRadius: BorderRadius.circular(5),
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.grey,
                          blurRadius: 4,
                          offset: Offset(1, 2), // Shadow position
                        ),
                      ],
                    ),
                    child: Align(
                      alignment: Alignment.center,
                      child: Text(
                        "Nadolazeće Uplate",
                        style: TextStyle(fontSize: screenHeight * 0.04),
                        textAlign: TextAlign.center,
                      ),
                    ))),
            Container(
                margin: EdgeInsets.only(
                    top: (screenHeight + statusBarHeight) * 0.03,
                    left: screenWidth * 0.1386),
                child: Container(
                    width: screenWidth * 0.83409,
                    height: screenHeight * 0.06595,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(5),
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.grey,
                          blurRadius: 4,
                          offset: Offset(1, 2), // Shadow position
                        ),
                      ],
                    ),
                    child: Align(
                      alignment: Alignment.center,
                      child: Text(
                        "Placeholder",
                        style: TextStyle(fontSize: screenHeight * 0.04),
                        textAlign: TextAlign.center,
                      ),
                    ))),
          ],
        ),
      ],
    ));
  }
}
