import 'package:flutter/material.dart';
import 'dart:ui';

void main() {
  runApp(MaterialApp(home: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    final statusBarHeight = MediaQuery.of(context).padding.top;
    double unitHeightValue = screenHeight * 0.01;
    double unitWidthValue = screenWidth * 0.01;
    double multiplier = 8;

    return MaterialApp(
        home: Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(screenHeight * 0.1147),
        child: AppBar(
          backgroundColor: const Color.fromARGB(255, 180, 182, 228),
          title: const FittedBox(
            fit: BoxFit.scaleDown,
            child: Text("Nazad"),
          ),
          toolbarHeight: screenHeight * 0.5119,
          titleSpacing: screenWidth * 0.1184,
          titleTextStyle: TextStyle(
              fontSize: (multiplier * unitHeightValue), color: Colors.white),
        ),
      ),
      body: Container(
        child: Column(
          children: [
            Container(
              child: FittedBox(
                  fit: BoxFit.contain,
                  child: Container(
                      // height: screenHeight * 0.05,
                      // width: screenWidth * 0.7289,
                      height: screenHeight * 0.03214,
                      width: screenWidth * 0.5512,
                      child: const FittedBox(
                        fit: BoxFit.scaleDown,
                        child: Text(
                          "Mijenjanje passworda",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              //fontSize: (multiplier * unitHeightValue) * 0.4,
                              color: Colors.white),
                        ),
                      ))),
              margin: EdgeInsets.only(
                  top: screenHeight * 0.035,
                  bottom: screenHeight * 0.025,
                  left: screenWidth * 0.1232,
                  right: screenWidth * 0.1232),
            ),
            Container(
              child: Text(
                "Mijenjanje passworda na ovoj aplikaciji će promijeniti password i na web stranici!",
                style: TextStyle(
                    fontStyle: FontStyle.italic,
                    color: Colors.white,
                    fontSize: (multiplier * unitWidthValue) * 0.3),
              ),
              margin: EdgeInsets.only(
                  top: screenHeight * 0.010,
                  bottom: screenHeight * 0.025,
                  left: screenWidth * 0.08232,
                  right: screenWidth * 0.08232),
            )
          ],
        ),
        height: screenHeight * 0.8853,
        width: screenWidth,
        color: Color.fromRGBO(94, 97, 170, 1.0),
      ),
    ));
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      //MediaQuery methods in use
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * 0.4,
    ));
  }
}
