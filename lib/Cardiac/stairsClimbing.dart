import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';

class StairsClimbing extends StatefulWidget {
  static const String id = 'Stairs climbing';


  @override
  State<StairsClimbing> createState() => _StairsClimbingState();
}

class _StairsClimbingState extends State<StairsClimbing> {
  bool language=true;

  void initState(){
    super.initState();
    language;
  }
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      floatingActionButton: SpeedDial(
        icon: Icons.language,
        // animatedIcon: AnimatedIcons.menu_close,
        backgroundColor: Colors.black,
        children: [
          SpeedDialChild(
              child: Icon(Icons.language),
              label: 'English',
              onTap: (){
                setState(() {
                  language = true;
                });}
          ),
          SpeedDialChild(
              child: Icon(Icons.language),
              label: 'Kannada',
              onTap: (){
                setState(() {
                  language = false;
                });
                // print(language);
              }
          ),
        ],
      ) ,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Hero(
              tag: StairsClimbing.id,
              child: SizedBox(
                height: size.height*0.40,width: double.infinity,
                child: const Image(
                  image: AssetImage('images/StairsClimbing.jpg'),
                  fit: BoxFit.fill,
                ),
              ),
            ),
            Flex(direction: Axis.vertical,
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width,
                  child: ListView(
                    shrinkWrap: true,
                    children: [
                      Column(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left: size.width*0.03),
                              child: Row(
                                children: [
                                  Column(
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.only(),
                                        child: Text(language? 'STAIRS CLIMBING' : 'ಮೆಟ್ಟಿಲುಗಳನ್ನು ಹತ್ತುವುದು',
                                          style: TextStyle(
                                            decoration: TextDecoration.underline,
                                            color: Color(0xFFFFBD58),
                                            fontSize: 28.0,
                                            fontWeight: FontWeight.bold,
                                          ),),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: size.height*0.01,
                            ),
                            Padding(
                                padding: EdgeInsets.only(left: size.width* 0.025, right: size.width*0.015),
                                child: Column(
                                  children: [
                                    SizedBox(
                                      height: size.width*0.04,
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(right: size.width*0.01, top: size.height*0.001),
                                      child:
                                          Text(language? '• You may climb stairs. ':'• ನೀವು ಮೆಟ್ಟಿಲುಗಳನ್ನು ಹತ್ತಬಹುದು.',
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 20,
                                            ),
                                            textAlign: TextAlign.center,
                                      ),
                                    ),
                                    SizedBox(
                                      height: size.width*0.04,
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(right: size.width*0.01,top: size.height*0.01),
                                      child:
                                          Text(language? '• Limit stair use to once or twice a day for the first one to two weeks. ':'• ಮೊದಲ ಒಂದರಿಂದ ಎರಡು ವಾರಗಳವರೆಗೆ ದಿನಕ್ಕೆ ಒಂದು ಅಥವಾ ಎರಡು ಬಾರಿ ಮೆಟ್ಟಿಲುಗಳ ಬಳಕೆಯನ್ನು ಮಿತಿಗೊಳಿಸಿ.',
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 20,
                                            ),
                                            textAlign: TextAlign.center,
                                      ),
                                    ),
                                    SizedBox(
                                      height: size.width*0.04,
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(right: size.width*0.01,top: size.height*0.01),
                                      child:
                                          Text(language? '• Take one step at a time, pause every 3 to 4 steps to take deep breaths. ':'• ಆಳವಾದ ಉಸಿರನ್ನು ತೆಗೆದುಕೊಳ್ಳಲು ಪ್ರತಿ 3 ರಿಂದ 4 ಹಂತಗಳನ್ನು ವಿರಾಮಗೊಳಿಸಿ, ಒಂದು ಸಮಯದಲ್ಲಿ ಒಂದು ಹೆಜ್ಜೆ ತೆಗೆದುಕೊಳ್ಳಿ.',
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 20,
                                            ),
                                            textAlign: TextAlign.center,
                                      ),
                                    ),
                                    SizedBox(
                                      height: size.width*0.04,
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(right: size.width*0.01),
                                      child:
                                          Text(language? '• Go slowly at first.':'• ಮೊದಲಿಗೆ ನಿಧಾನವಾಗಿ ಹೋಗಿ.',
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 20,
                                            ),
                                            textAlign: TextAlign.center,
                                      ),
                                    ),
                                    SizedBox(
                                      height: size.width*0.04,
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(right: size.width*0.01),
                                      child:
                                          Text(language? '• If you have short of breath as you climb, stop, rest, and then continue. ':'• ನೀವು ಏರುವಾಗ ನಿಮಗೆ ಉಸಿರಾಟದ ತೊಂದರೆ ಇದ್ದರೆ, ನಿಲ್ಲಿಸಿ, ವಿಶ್ರಾಂತಿ ಮಾಡಿ ಮತ್ತು ನಂತರ ಮುಂದುವರಿಸಿ.',
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 20,
                                            ),
                                            textAlign: TextAlign.center,
                                      ),
                                    ),
                                    SizedBox(
                                      height: size.width*0.04,
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(right: size.width*0.01),
                                      child:
                                          Text(language? '• Do not pull up the stairs.':'• ಮೆಟ್ಟಿಲುಗಳನ್ನು ಎಳೆಯಬೇಡಿ.',
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 20,
                                            ),
                                            textAlign: TextAlign.center,
                                      ),
                                    ),
                                    SizedBox(
                                      height: size.width*0.04,
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(right: size.width*0.01),
                                      child:
                                          Text(language? '• Use the stair railing only for balance.':'• ಸಮತೋಲನಕ್ಕಾಗಿ ಮಾತ್ರ ಮೆಟ್ಟಿಲು ಕಂಬಿಗಳನ್ನು ಬಳಸಿ.',
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 20,
                                            ),
                                            textAlign: TextAlign.center,
                                      ),
                                    ),
                                    SizedBox(
                                      height: size.width*0.04,
                                    ),
                                  ],
                                )
                            ),
                          ],
                        ),
                    ],
                  ),
                ),
              ],)

          ],
        ),
      ),

    );
  }
}
