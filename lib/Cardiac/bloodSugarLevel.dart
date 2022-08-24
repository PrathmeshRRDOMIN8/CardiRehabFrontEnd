import 'package:flutter/material.dart';

class BloodSugarLevel extends StatefulWidget {
  static const String id = 'Control blood sugar level';
  BloodSugarLevel(@required this.lang);
  final String lang;

  @override
  State<BloodSugarLevel> createState() => _BloodSugarLevelState();
}

class _BloodSugarLevelState extends State<BloodSugarLevel> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    late String language = widget.lang;
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Hero(
              tag: BloodSugarLevel.id,
              child: SizedBox(
                height: size.height*0.40,width: double.infinity,
                child: const Image(
                  image: AssetImage('images/ControlBloodSugarLevel.jpg'),
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
                                      child: Text(language == 'English' ?'Blood sugar levels healthy: ':'ರಕ್ತದ ಸಕ್ಕರೆಯ ಮಟ್ಟ ಆರೋಗ್ಯಕರ: ',
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
                                    Text(language == 'English' ? '• Take the medications as prescribed  ':'ಸೂಚಿಸಿದಂತೆ ಔಷಧಿಗಳನ್ನು ತೆಗೆದುಕೊಳ್ಳಿ',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 20,
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                  SizedBox(
                                    height: size.width*0.04,
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(right: size.width*0.01, top: size.height*0.001),
                                    child:
                                    Text(language == 'English' ?'• Monitor and keep track of the blood sugars ':'ರಕ್ತದ ಸಕ್ಕರೆಯನ್ನು ಮೇಲ್ವಿಚಾರಣೆ ಮಾಡಿ ಮತ್ತು ಟ್ರ್ಯಾಕ್ ಮಾಡಿ',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 20,
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                  SizedBox(
                                    height: size.height*0.02,
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(right: size.width*0.01),
                                    child:
                                    Text(language == 'English' ?'• Follow the specified diet for diabetes':'ಮಧುಮೇಹಕ್ಕೆ ನಿಗದಿತ ಆಹಾರವನ್ನು ಅನುಸರಿಸಿ',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 20,
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                  SizedBox(
                                    height: size.height*0.02,
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(right: size.width*0.01),
                                    child:
                                    Text(language == 'English' ?'• Achieve a healthy body weight and maintain the same weight':'ಆರೋಗ್ಯಕರ ದೇಹದ ತೂಕವನ್ನು ಸಾಧಿಸಿ ಮತ್ತು ಅದೇ ತೂಕವನ್ನು ಕಾಪಾಡಿಕೊಳ್ಳಿ',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 20,
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                  SizedBox(
                                    height: size.height*0.02,
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(right: size.width*0.01),
                                    child:
                                    Text(language == 'English' ?'• Follow exercise regimen daily':'ಪ್ರತಿದಿನ ವ್ಯಾಯಾಮ ಕಟ್ಟುಪಾಡುಗಳನ್ನು ಅನುಸರಿಸಿ.',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 20,
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                  SizedBox(
                                    height: size.height*0.02,
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(right: size.width*0.01),
                                    child:
                                    Text(language == 'English' ?'• Take the anti-diabetic medications as prescribed by the doctor regularly':'ವೈದ್ಯರು ಸೂಚಿಸಿದಂತೆ ಮಧುಮೇಹ ವಿರೋಧಿ ಔಷಧಿಗಳನ್ನು ನಿಯಮಿತವಾಗಿ ತೆಗೆದುಕೊಳ್ಳಿ',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 20,
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                  SizedBox(
                                    height: size.height*0.1,
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
