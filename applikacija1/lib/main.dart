import 'dart:io';
import 'package:applikacija1/homeScreen1.dart';
import 'package:applikacija1/passChanged.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
  runApp(const MaterialApp(home: MyApp()));
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
          // AppBar START
          leading: IconButton(
            icon: Image.asset('assets/images/Left_Arrow.png'),
            onPressed: () => Navigator.push(context,
                MaterialPageRoute(builder: (context) => const HomeScreen())),
          ),
          /*actions: [
            IconButton(
              icon: Image.asset('assets/images/Left_Arrow.png'),
              onPressed: () => exit(0),
            ), 
          ],*/
          backgroundColor: const Color.fromARGB(255, 180, 182, 228),
          title: const FittedBox(
            fit: BoxFit.scaleDown,
            child: Text("Nazad"),
          ),
          toolbarHeight: screenHeight * 0.5119,
          //titleSpacing: screenWidth * 0.1184,
          titleTextStyle: TextStyle(
              fontSize: (multiplier * unitHeightValue) * 0.8,
              color: Colors.white),
        ), // AppBar END
      ),
      body: Container(
        child: Column(
          children: [
            Container(
              child: FittedBox(
                  fit: BoxFit.contain,
                  child: Container(
                      height: screenHeight * 0.03214,
                      width: screenWidth * 0.5512,
                      child: FittedBox(
                        fit: BoxFit.none,
                        child: Text(
                          "Mijenjanje passworda",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: (multiplier * unitHeightValue) * 0.4,
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
              height: screenHeight * 0.05,
              child: Text(
                "Mijenjanje passworda na ovoj aplikaciji će promijeniti password i na web stranici!",
                style: TextStyle(
                    fontStyle: FontStyle.italic,
                    color: Colors.white,
                    fontSize: (multiplier * unitHeightValue) * 0.25),
              ),
              margin: EdgeInsets.only(
                  top: screenHeight * 0.010,
                  bottom: screenHeight * 0.08452,
                  left: screenWidth * 0.15,
                  right: screenWidth * 0.15),
            ),
            Container(
              constraints: const BoxConstraints(maxWidth: 500),
              width: screenWidth * 0.7477,
              height: screenHeight * 0.05476,
              margin: EdgeInsets.only(
                left: screenWidth * 0.125,
                right: screenWidth * 0.125,
              ),
              child: TextField(
                style: TextStyle(
                    fontSize: (multiplier * unitHeightValue) * 0.25,
                    color: Colors.white),
                decoration: InputDecoration(
                    border: const OutlineInputBorder(),
                    enabledBorder: const OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white, width: 2.0),
                    ),
                    focusedBorder: const OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white, width: 2.0),
                    ),
                    hintText: 'Stari password',
                    hintStyle: TextStyle(
                        color: Colors.white,
                        fontSize: (multiplier * unitHeightValue) * 0.25)),
                obscureText: true,
              ),
            ),
            Container(
              constraints: const BoxConstraints(maxWidth: 500),
              width: screenWidth * 0.7477,
              height: screenHeight * 0.05476,
              margin: EdgeInsets.only(
                top: screenHeight * 0.04642,
                left: screenWidth * 0.125,
                right: screenWidth * 0.125,
              ),
              child: TextField(
                style: TextStyle(
                    fontSize: (multiplier * unitHeightValue) * 0.25,
                    color: Colors.white),
                decoration: InputDecoration(
                    border: const OutlineInputBorder(),
                    enabledBorder: const OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white, width: 2.0),
                    ),
                    focusedBorder: const OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white, width: 2.0),
                    ),
                    hintText: 'Novi password',
                    hintStyle: TextStyle(
                        color: Colors.white,
                        fontSize: (multiplier * unitHeightValue) * 0.25)),
                obscureText: true,
              ),
            ),
            Container(
              constraints: const BoxConstraints(maxWidth: 500),
              width: screenWidth * 0.7477,
              height: screenHeight * 0.05476,
              margin: EdgeInsets.only(
                top: screenHeight * 0.04642,
                left: screenWidth * 0.125,
                right: screenWidth * 0.125,
              ),
              child: TextField(
                style: TextStyle(
                    fontSize: (multiplier * unitHeightValue) * 0.25,
                    color: Colors.white),
                decoration: InputDecoration(
                    border: const OutlineInputBorder(),
                    enabledBorder: const OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white, width: 2.0),
                    ),
                    focusedBorder: const OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white, width: 2.0),
                    ),
                    hintText: 'Potvrdite novi password',
                    hintStyle: TextStyle(
                        color: Colors.white,
                        fontSize: (multiplier * unitHeightValue) * 0.25)),
                obscureText: true,
              ),
            ),
            Container(
              child: Image.asset('assets/images/Lock.png'),
              margin: EdgeInsets.only(top: screenHeight * 0.04166),
            ),
            Row(
              children: [
                // ignore: avoid_unnecessary_containers
                Container(
                  margin: EdgeInsets.only(
                    left: screenWidth * 0.1477,
                  ),
                  height: screenHeight * 0.06428,
                  width: screenWidth * 0.3159,
                  child: TextButton(
                    onPressed: (() => exit(0)),
                    child: const Text("Odustani"),
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all<Color>(Colors.white)),
                  ),
                ),
                // ignore: avoid_unnecessary_containers
                Container(
                  margin: EdgeInsets.only(
                    left: screenWidth * 0.07045,
                  ),
                  height: screenHeight * 0.06428,
                  width: screenWidth * 0.3159,
                  child: TextButton(
                    onPressed: (() => Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const PassChanged()))),
                    child: const Text("Promijeni"),
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Colors.white),
                    ),
                  ),
                )
              ],
            )
          ],
        ),
        height: screenHeight * 0.8853,
        width: screenWidth,
        color: const Color.fromRGBO(94, 97, 170, 1.0),
      ),
      resizeToAvoidBottomInset: false,
    ));
  }
}

/*class AppInput extends StatefulWidget {  //REUSABLE WIDGET TEMPLATE
  final Widget child;

  const AppInput({Key? key, required this.child}) : super(key: key);

  @override
  State<AppInput> createState() => _AppInputState();
}

class _AppInputState extends State<AppInput> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
} */

