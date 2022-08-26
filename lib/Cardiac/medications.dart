import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';

class Medications extends StatefulWidget {
  static const String id = 'Medications';

  @override
  State<Medications> createState() => _MedicationsState();
}

class _MedicationsState extends State<Medications> {
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
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Hero(
              tag: Medications.id,
              child: SizedBox(
                height: size.height*0.40,width: double.infinity,
                child: const Image(
                  image: AssetImage('images/Medications.jpg'),
                  fit: BoxFit.fill,
                ),
              ),
            ),
            Flex(direction: Axis.vertical,
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width,
                  child: ListView(shrinkWrap:true,
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
                                        child: Text(language?'MEDICATIONS':'ಔಷಧಿಗಳು',
                                          style: TextStyle(
                                            decoration: TextDecoration.underline,
                                            color: Color(0xFFFFBD58),
                                            fontSize: 30.0,
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
                                          Text(language?'• Take your medicine every day at the same time.':'• ನಿಮ್ಮ ಔಷಧಿಯನ್ನು ಪ್ರತಿದಿನ ಒಂದೇ ಸಮಯದಲ್ಲಿ ತೆಗೆದುಕೊಳ್ಳಿ.',
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 20,
                                            ),
                                            textAlign: TextAlign.center,
                                      ),
                                    ),
                                    SizedBox(
                                      height: size.height*0.01,
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(right: size.width*0.01,top: size.height*0.01),
                                      child:
                                          Text(language?'• Request people close to you to help remind you.':'• ನಿಮಗೆ ನೆನಪಿಸಲು ಸಹಾಯ ಮಾಡಲು ನಿಮ್ಮ ಹತ್ತಿರವಿರುವ ಜನರನ್ನು ವಿನಂತಿಸಿ.',
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 20,
                                            ),
                                            textAlign: TextAlign.center,
                                      ),
                                    ),
                                    SizedBox(
                                      height: size.height*0.01,
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(right: size.width*0.01,top: size.height*0.01),
                                      child:
                                          Text(language?'• Keep your medicines away from light, heat, and moisture. ':'• ನಿಮ್ಮ ಔಷಧಿಗಳನ್ನು ಬೆಳಕು, ಶಾಖ ಮತ್ತು ತೇವಾಂಶದಿಂದ ದೂರವಿಡಿ.',
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 20,
                                            ),
                                            textAlign: TextAlign.center,
                                      ),
                                    ),
                                    SizedBox(
                                      height: size.height*0.01,
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(right: size.width*0.01),
                                      child:
                                          Text(language?'• Never stop your medications without surgeons advice.':'• ಶಸ್ತ್ರಚಿಕಿತ್ಸಕರ ಸಲಹೆಯಿಲ್ಲದೆ ನಿಮ್ಮ ಔಷಧಿಗಳನ್ನು ಎಂದಿಗೂ ನಿಲ್ಲಿಸಬೇಡಿ.',
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 20,
                                            ),
                                            textAlign: TextAlign.center,
                                      ),
                                    ),
                                    SizedBox(
                                      height: size.height*0.01,
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(right: size.width*0.01),
                                      child:
                                          Text(language?'• Ask for your surgeons’ advice before splitting or crushing tablets. ':'• ಮಾತ್ರೆಗಳನ್ನು ವಿಭಜಿಸುವ ಅಥವಾ ಪುಡಿಮಾಡುವ ಮೊದಲು ನಿಮ್ಮ ಶಸ್ತ್ರಚಿಕಿತ್ಸಕರ ಸಲಹೆಯನ್ನು ಕೇಳಿ.',
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 20,
                                            ),
                                            textAlign: TextAlign.center,
                                      ),
                                    ),
                                    SizedBox(
                                      height: size.height*0.01,
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(right: size.width*0.01),
                                      child:
                                          Text(language?'• Do not share your medicines with anybody else. ':'• ನಿಮ್ಮ ಔಷಧಿಗಳನ್ನು ಬೇರೆಯವರೊಂದಿಗೆ ಹಂಚಿಕೊಳ್ಳಬೇಡಿ.',
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 20,
                                            ),
                                            textAlign: TextAlign.center,
                                      ),
                                    ),
                                    SizedBox(
                                      height: size.height*0.01,
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(right: size.width*0.01),
                                      child:
                                          Text(language?'• Ask your surgeon before buying the counter medications':'• ಕೌಂಟರ್ ಔಷಧಿಗಳನ್ನು ಖರೀದಿಸುವ ಮೊದಲು ನಿಮ್ಮ ಶಸ್ತ್ರಚಿಕಿತ್ಸಕರನ್ನು ಕೇಳಿ',
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 20,
                                            ),
                                            textAlign: TextAlign.center,
                                      ),
                                    ),
                                    SizedBox(
                                      height: size.height*0.02,
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
