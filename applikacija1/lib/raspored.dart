import 'package:applikacija1/homeScreen1.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class RasporedMain extends StatelessWidget {
  const RasporedMain({Key? key}) : super(key: key);

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
        //-------------------------------------------------------------------------------------------
        body: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: screenHeight * 0.03),
              alignment: Alignment.center,
              child: Text(
                formatedDate,
                style: TextStyle(
                    color: const Color.fromRGBO(107, 107, 107, 1.0),
                    fontSize: screenHeight * 0.035),
              ),
            ),
            Row(
              children: [
                IconButton(
                    onPressed: () => q++,
                    icon: const Icon(Icons.arrow_back_ios_new_sharp)),
                Container(
                  color: const Color.fromRGBO(255, 245, 162, 1.0),
                  width: screenWidth * 0.7,
                  height: screenHeight * 0.07,
                  child: Column(children: [
                    Row(
                      children: [
                        /*Expanded(                   EXPERIMENTAL!!!!
                            child: ListView.separated(
                          scrollDirection: Axis.horizontal,
                          itemCount: 7,
                          itemBuilder: (BuildContext context, int index) {
                            return Text("aaa");
                          },
                          separatorBuilder: (BuildContext context, int index) =>
                              const Divider(
                            thickness: 0,
                          ),
                        )) */
                      ],
                    )
                  ]),
                ),
                IconButton(
                    onPressed: () => q++,
                    icon: const Icon(Icons.arrow_forward_ios_sharp)),
              ],
            )
          ],
        ));
  }
}

DateTime currentDate = DateTime.now();
String formatedDate = DateFormat('EEEE, d MMM, yyyy').format(currentDate);
int q = 1;

final List<String> days = <String>[
  'Pon.',
  'Uto.',
  'Sri.',
  'Čet.',
  'Pet.',
  'Sub.',
  'Ned.'
];
