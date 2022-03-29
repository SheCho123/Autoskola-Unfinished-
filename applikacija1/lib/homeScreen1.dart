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
    final GlobalKey<ScaffoldState> _keyPrvi = GlobalKey<ScaffoldState>();

    return Scaffold(
      key: _keyPrvi,
      appBar: PreferredSize(preferredSize: Size.fromHeight(screenHeight * 0.125),
      child: AppBar(
      leading: Builder(
      builder: (BuildContext context) {
        return IconButton(
          icon: Icon(
            Icons.menu_rounded,
            size: screenHeight * 0.1
          ),
          onPressed: () => _keyPrvi.currentState?.openDrawer(), 
          tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
        );
      },
    ),
    title: Container(
      margin: EdgeInsets.only(
        left: screenWidth * 0.05,
      ),
      child: Text(
          "HOME",
          style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      fontSize: screenHeight * 0.06),
                )
                ,),
    toolbarHeight: screenHeight * 0.5119,
    backgroundColor: const Color.fromARGB(255, 180, 182, 228),
      ),
      ),
    //----------------------------------------------------------------------------------------------------------------
    //----------------------------------------------------------------------------------------------------------------
    //----------------------------------------------------------------------------------------------------------------
    //----------------------------------------------------------------------------------------------------------------
    body: 
    Column(children: [
    Column(
          children: [
            Container(
                margin: EdgeInsets.only(
                    top: (screenHeight + statusBarHeight) * 0.04,
                    left: screenWidth * 0.0829),
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
                        style: TextStyle(fontSize: screenHeight * 0.04, fontWeight: FontWeight.bold),
                        textAlign: TextAlign.center,
                      ),
                    ))),
            Container(
                margin: EdgeInsets.only(
                    top: (screenHeight + statusBarHeight) * 0.018,
                    left: screenWidth * 0.0829),
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
                        style: TextStyle(fontSize: screenHeight * 0.03),
                        textAlign: TextAlign.center,
                      ),
                    ))),
          ],
        ),
        Column(
          children: [
            Container(
                margin: EdgeInsets.only(
                    top: (screenHeight + statusBarHeight) * 0.055095,
                    left: screenWidth * 0.0829),
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
                        style: TextStyle(fontSize: screenHeight * 0.04,
                        fontWeight: FontWeight.bold),
                        textAlign: TextAlign.center,
                      ),
                    ))),
            Container(
                margin: EdgeInsets.only(
                    top: (screenHeight + statusBarHeight) * 0.03,
                    left: screenWidth * 0.0829),
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
                        style: TextStyle(fontSize: screenHeight * 0.03),
                        textAlign: TextAlign.center,
                      ),
                    ))),
          ],
        ),
      ],
    ),
  
        drawer: Drawer(
          backgroundColor: const Color.fromRGBO(94, 97, 170, 1.0),
          child: Column(children: [
            Align(
              alignment: const Alignment(-0.6, 0.0),
              child: Container(
              margin: EdgeInsets.only(
                top: screenHeight * 0.04,
                bottom: screenHeight * 0.02
              ),
              child: Text("Navigation:",
              style: TextStyle(fontWeight: FontWeight.bold,
              color: Colors.white,
              fontSize: screenHeight * 0.05),),
            ),
            ),
            Divider(
              thickness: screenHeight * 0.005,
              color: Colors.grey,
            ),
            Row( 
              children: [
                Container(
                margin: EdgeInsets.only(top: screenHeight * 0.02,
                left: screenWidth * 0.06,
                bottom: screenHeight * 0.02),
                child: Align(
                alignment: const Alignment(-0.01, -0.8),
                child: Transform.scale(
                scale: screenHeight * 0.002,
                child: Image.asset("assets/images/SidebarImg1.png"),
                ),
                ),
                ),
                Container(
                  margin: EdgeInsets.only(
                    left: screenWidth * 0.05
                  ),
                  child: Text("Dokumenti",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: screenHeight * 0.05,
                    fontWeight: FontWeight.bold
                  ),),
                )
              ],
            ),
            Divider(
              thickness: screenHeight * 0.005,
              color: Colors.grey,
            ),
            Row( 
              children: [
                Container(
                margin: EdgeInsets.only(top: screenHeight * 0.02,
                left: screenWidth * 0.06,
                bottom: screenHeight * 0.02),
                child: Align(
                alignment: const Alignment(-0.01, -0.8),
                child: Transform.scale(
                scale: screenHeight * 0.002,
                child: Image.asset("assets/images/SidebarImg2.png"),
                ),
                ),
                ),
                Container(
                  margin: EdgeInsets.only(
                    left: screenWidth * 0.05
                  ),
                  child: Text("Instruktor",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: screenHeight * 0.05,
                    fontWeight: FontWeight.bold
                  ),),
                )
              ],
            ),
            Divider(
              thickness: screenHeight * 0.005,
              color: Colors.grey,
            ),
            Row( 
              children: [
                Container(
                margin: EdgeInsets.only(top: screenHeight * 0.02,
                left: screenWidth * 0.06,
                bottom: screenHeight * 0.02),
                child: Align(
                alignment: const Alignment(-0.01, -0.8),
                child: Transform.scale(
                scale: screenHeight * 0.002,
                child: Image.asset("assets/images/SidebarImg3.png"),
                ),
                ),
                ),
                Container(
                  margin: EdgeInsets.only(
                    left: screenWidth * 0.05
                  ),
                  child: Text("Raspored",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: screenHeight * 0.05,
                    fontWeight: FontWeight.bold
                  ),),
                )
              ],
            ),
            Divider(
              thickness: screenHeight * 0.005,
              color: Colors.grey,
            ),
            Row( 
              children: [
                Container(
                margin: EdgeInsets.only(top: screenHeight * 0.02,
                left: screenWidth * 0.06,
                bottom: screenHeight * 0.02),
                child: Align(
                alignment: const Alignment(-0.01, -0.8),
                child: Transform.scale(
                scale: screenHeight * 0.002,
                child: Image.asset("assets/images/SidebarImg4.png"),
                ),
                ),
                ),
                Container(
                  margin: EdgeInsets.only(
                    left: screenWidth * 0.05
                  ),
                  child: Text("Uplate",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: screenHeight * 0.05,
                    fontWeight: FontWeight.bold
                  ),),
                )
              ],
            ),
            Divider(
              thickness: screenHeight * 0.005,
              color: Colors.grey,
            ),
            Row( 
              children: [
                Container(
                margin: EdgeInsets.only(top: screenHeight * 0.02,
                left: screenWidth * 0.06,
                bottom: screenHeight * 0.02),
                child: Align(
                alignment: const Alignment(-0.01, -0.8),
                child: Transform.scale(
                scale: screenHeight * 0.002,
                child: Image.asset("assets/images/SidebarImg5.png"),
                ),
                ),
                ),
                Container(
                  margin: EdgeInsets.only(
                    left: screenWidth * 0.05
                  ),
                  child: Text("Testovi",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: screenHeight * 0.05,
                    fontWeight: FontWeight.bold
                  ),),
                )
              ],
            ),
            Divider(
              thickness: screenHeight * 0.005,
              color: Colors.grey,
            ),
            Row( 
              children: [
                Container(
                margin: EdgeInsets.only(top: screenHeight * 0.02,
                left: screenWidth * 0.06,
                bottom: screenHeight * 0.02),
                child: Align(
                alignment: const Alignment(-0.01, -0.8),
                child: Transform.scale(
                scale: screenHeight * 0.002,
                child: Image.asset("assets/images/SidebarImg6.png"),
                ),
                ),
                ),
                Container(
                  margin: EdgeInsets.only(
                    left: screenWidth * 0.05
                  ),
                  child: Text("Moj Profil",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: screenHeight * 0.05,
                    fontWeight: FontWeight.bold
                  ),),
                )
              ],
            ),
            Divider(
              thickness: screenHeight * 0.005,
              color: Colors.grey,
            ),
            Row( 
              children: [
                Container(
                margin: EdgeInsets.only(top: screenHeight * 0.02,
                left: screenWidth * 0.06,
                bottom: screenHeight * 0.02),
                child: Align(
                alignment: const Alignment(-0.01, -0.8),
                child: Transform.scale(
                scale: screenHeight * 0.002,
                child: Image.asset("assets/images/SidebarImg7.png"),
                ),
                ),
                ),
                Container(
                  margin: EdgeInsets.only(
                    left: screenWidth * 0.05
                  ),
                  child: Text("Notifikacije",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: screenHeight * 0.05,
                    fontWeight: FontWeight.bold
                  ),),
                )
              ],
            ),
            Divider(
              thickness: screenHeight * 0.005,
              color: Colors.grey,
            ),
          ],)
        ),
    );
  }
}
