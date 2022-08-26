import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';

class Rest extends StatefulWidget {
  static const String id = 'Rest';

  @override
  State<Rest> createState() => _RestState();
}

class _RestState extends State<Rest> {
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
              tag: Rest.id,
              child: SizedBox(
                height: size.height*0.40,width: double.infinity,
                child: const Image(
                  image: AssetImage('images/Rest.jpg'),
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
                                        child: Text(language? 'REST':'ಉಳಿದ',
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
                                          Text(language == 'English'?'• Balance the activity with rest times':'• ವಿಶ್ರಾಂತಿ ಸಮಯದೊಂದಿಗೆ ಚಟುವಟಿಕೆಯನ್ನು ಸಮತೋಲನಗೊಳಿಸಿ.',
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
                                          Text(language == 'English'?'• Sleep for minimum 8 hours in the night':'• ರಾತ್ರಿಯಲ್ಲಿ ಕನಿಷ್ಠ 8 ಗಂಟೆಗಳ ಕಾಲ ನಿದ್ರೆ ಮಾಡಿ',
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
                                          Text(language == 'English'?'• Try to plan ahead for short rest times\n so you will not become too tired.':'• ಕಡಿಮೆ ವಿಶ್ರಾಂತಿ ಸಮಯಕ್ಕಾಗಿ ಮುಂಚಿತವಾಗಿ ಯೋಜಿಸಲು ಪ್ರಯತ್ನಿಸಿ ಇದರಿಂದ ನೀವು ಹೆಚ್ಚು ಆಯಾಸಗೊಳ್ಳುವುದಿಲ್ಲ.',
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
                                          Text(language == 'English'?'• Until 4 to 6 weeks after the surgery avoid sleeping on the stomach.':'• ಶಸ್ತ್ರಚಿಕಿತ್ಸೆಯ ನಂತರ 4 ರಿಂದ 6 ವಾರಗಳವರೆಗೆ ಹೊಟ್ಟೆಯ ಮೇಲೆ ಮಲಗುವುದನ್ನು ತಪ್ಪಿಸಿ',
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
                                          Text(language == 'English'?'• If you are uncomfortable sleeping on the back, you may want to place pillows under one side of the back so you are slightly turned.':'• ನೀವು ಹಿಂಭಾಗದಲ್ಲಿ ಮಲಗಲು ಅನಾನುಕೂಲವಾಗಿದ್ದರೆ, ನೀವು ದಿಂಬುಗಳನ್ನು ಬೆನ್ನಿನ ಒಂದು ಬದಿಯಲ್ಲಿ ಇರಿಸಲು ಬಯಸಬಹುದು ಆದ್ದರಿಂದ ನೀವು ಸ್ವಲ್ಪ ತಿರುಗುತ್ತೀರಿ.',
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
