import 'dart:io';
import 'package:applikacija1/homeScreen1.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

/*void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
  runApp(const MaterialApp(home: InstruktorPodaci()));
} */

class InstruktorPodaci extends StatelessWidget {
  const InstruktorPodaci({Key? key}) : super(key: key);

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
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(screenHeight * 0.1147),
          child: AppBar(
            // AppBar START
            leading: IconButton(
              icon: Image.asset('assets/images/Left_Arrow.png'),
              onPressed: () => Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const HomeScreen())),
            ),
            backgroundColor: const Color.fromARGB(255, 180, 182, 228),
            title: const FittedBox(
              fit: BoxFit.scaleDown,
              child: Text("Nazad"),
            ),
            toolbarHeight: screenHeight * 0.5119,
            titleTextStyle: TextStyle(
                fontSize: (multiplier * unitHeightValue) * 0.8,
                color: Colors.black),
          ),
        ),
        body: Container(
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(top: screenHeight * 0.03243),
                child: Text(
                  "Podaci o Instruktoru",
                  style: TextStyle(
                    fontSize: screenHeight * 0.04,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
              SizedBox(
                child: const Divider(
                  color: Colors.white,
                  thickness: 3,
                ),
                width: screenWidth * 0.27,
              ),
              Container(
                  height: screenHeight * 0.6238,
                  width: screenWidth * 0.8909,
                  constraints: const BoxConstraints(maxWidth: 500),
                  margin: EdgeInsets.only(top: screenHeight * 0.05238),
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(30)),
                    color: Color.fromRGBO(180, 182, 228, 1.0),
                  ),
                  child: FractionallySizedBox(
                    widthFactor: 1.0,
                    heightFactor: 1.0,
                    child: Column(children: [
                      Container(
                        margin: EdgeInsets.only(top: screenHeight * 0.05476),
                        child: Image.asset(
                          "assets/images/Placeholder.png",
                          height: screenHeight * 0.17857,
                          width: screenWidth * 0.3590,
                        ),
                      ),
                      Align(
                          alignment: const Alignment(-0.9, 0.0),
                          child: Container(
                            margin: EdgeInsets.only(
                              top: screenHeight * 0.0438,
                            ),
                            child: Text(
                              'Ime:',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: screenHeight * 0.035),
                            ),
                          )),
                      Divider(
                        color: Colors.black,
                        thickness: screenHeight * 0.003,
                      ),
                      Align(
                        alignment: const Alignment(-0.9, 0.0),
                        child: Container(
                          margin: EdgeInsets.only(
                            top: screenHeight * 0.01838,
                          ),
                          child: Text(
                            'Prezime:',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: screenHeight * 0.035),
                          ),
                        ),
                      ),
                      Divider(
                        color: Colors.black,
                        thickness: screenHeight * 0.003,
                      ),
                      Align(
                        alignment: const Alignment(-0.9, 0.0),
                        child: Container(
                          margin: EdgeInsets.only(
                            top: screenHeight * 0.01838,
                          ),
                          child: Text(
                            'Broj telefona:',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: screenHeight * 0.035),
                          ),
                        ),
                      ),
                      Divider(
                        color: Colors.black,
                        thickness: screenHeight * 0.003,
                      ),
                      Align(
                        alignment: const Alignment(-0.9, 0.0),
                        child: Container(
                          margin: EdgeInsets.only(
                            top: screenHeight * 0.01838,
                          ),
                          child: Text(
                            'E-mail:',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: screenHeight * 0.035),
                          ),
                        ),
                      ),
                    ]),
                  ))
            ],
          ),
          height: screenHeight * 0.8853,
          width: screenWidth,
          color: const Color.fromRGBO(94, 97, 170, 1.0),
        ));
  }
}
