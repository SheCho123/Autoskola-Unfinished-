import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'main.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
  runApp(const MaterialApp(home: PassChanged()));
}

class PassChanged extends StatelessWidget {
  const PassChanged({Key? key}) : super(key: key);

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
            preferredSize: Size.fromHeight(screenHeight * 0.2369),
            child: AppBar(
                toolbarHeight: screenHeight * 0.5119,
                backgroundColor: const Color.fromARGB(255, 180, 182, 228),
                centerTitle: true,
                actions: [
                  Container(
                    margin: EdgeInsets.only(
                      right: screenWidth * 0.05227,
                      bottom: screenHeight * 0.08509,
                    ),
                    child: IconButton(
                      icon: Container(
                        width: screenWidth * 0.06136,
                        height: screenHeight * 0.03214,
                        child: Image.asset(
                          "assets/images/Iksic.png",
                        ),
                      ),
                      onPressed: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const MyApp())),
                    ),
                  )
                ],
                title: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(bottom: screenHeight * 0.01904),
                      child: Text(
                        "Uspješno!",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: (multiplier * unitHeightValue) * 0.60),
                      ),
                    ),
                    Container(
                      child: Text(
                        "Vaš password je promijenjen!",
                        style: TextStyle(
                            color: Colors.black,
                            fontStyle: FontStyle.italic,
                            fontWeight: FontWeight.bold,
                            fontSize: (multiplier * unitHeightValue) * 0.40),
                      ),
                    )
                  ],
                )),
          ),
          body: Container(
            width: screenWidth * 0.2909,
            height: screenHeight * 0.1523,
            child: Image.asset(
              "assets/images/Check.png",
            ),
            margin: EdgeInsets.only(
              left: screenWidth * 0.3545,
              right: screenWidth * 0.3545,
              top: screenHeight * 0.3047,
            ),
          )),
    );
  }
}
