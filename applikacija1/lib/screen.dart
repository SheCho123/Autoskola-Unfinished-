import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'main.dart';

/*void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
  runApp(const MaterialApp(home: Screen1()));
} */

class Screen1 extends StatelessWidget {
  const Screen1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenheight = MediaQuery.of(context).size.height;
    final screenwidth = MediaQuery.of(context).size.width;
    double unitHeightValue = screenheight * 0.01;
    double multiplier = 8;
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(screenheight * 0.1147),
          child: AppBar(
            backgroundColor: const Color.fromARGB(255, 180, 182, 228),
            title: const FittedBox(
              fit: BoxFit.scaleDown,
              child: Text("Nazad"),
            ),
            toolbarHeight: screenheight * 0.5119,
            //titleSpacing: screenWidth * 0.1184,
            titleTextStyle: TextStyle(
                fontSize: (multiplier * unitHeightValue) * 0.8,
                color: Colors.black),
            leading: IconButton(
              icon: Image.asset('assets/images/Left_Arrow.png'),
              onPressed: () => Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const Screen1())),
            ),
          )),
      body: Container(
          color: const Color.fromRGBO(94, 97, 170, 1.0),
          width: screenwidth,
          height: screenheight * 0.8853,
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(
                  left: screenwidth * 0.05681,
                  right: screenwidth * 0.08636,
                  bottom: screenheight * 0.4,
                ),
                child: Row(
                  children: [
                    Container(
                      child: Image.asset(
                        'assets/images/Vector.png',
                        width: screenwidth * 0.1136,
                        height: screenheight * 0.04761,
                      ),
                    ),
                    Text(
                      "Pitanja",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: (multiplier * unitHeightValue) * 0.6),
                    )
                  ],
                ),
              )
            ],
          )),
    );
  }
}
