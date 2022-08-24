import 'package:flutter/material.dart';

class ControllingCholesterol extends StatefulWidget {
  static const String id = 'Controlling cholesterol';
  ControllingCholesterol(@required this.lang);
  final String lang;

  @override
  State<ControllingCholesterol> createState() => _ControllingCholesterolState();
}

class _ControllingCholesterolState extends State<ControllingCholesterol> {
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
              tag: ControllingCholesterol.id,
              child: SizedBox(
                height: size.height*0.40,width: double.infinity,
                child: const Image(
                  image: AssetImage('images/ControllingCholesterol.jpg'),
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
                                      child: Text(language == 'English' ? 'Control the Cholesterol:': 'ಕೊಲೆಸ್ಟ್ರಾಲ್ ಅನ್ನು ನಿಯಂತ್ರಿಸಿ',
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
                                    Text(language == 'English' ?'• Be aware of the cholesterol levels ':'ಕೊಲೆಸ್ಟ್ರಾಲ್ ಮಟ್ಟಗಳ ಬಗ್ಗೆ ತಿಳಿದಿರಲಿ',
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
                                    Text(language == 'English' ?'• Follow the diet low in fat content':'ಕಡಿಮೆ ಕೊಬ್ಬಿನಂಶವಿರುವ ಆಹಾರವನ್ನು ಅನುಸರಿಸಿ',
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
                                    Text(language == 'English' ?'• Quit smoking, if you smoke ':'ನೀವು ಧೂಮಪಾನ ಮಾಡುತ್ತಿದ್ದರೆ, ಧೂಮಪಾನವನ್ನು ತ್ಯಜಿಸಿ',
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
                                    Text(language == 'English' ?'• Take the cholesterol medications as prescribed by the doctor':'ವೈದ್ಯರು ಸೂಚಿಸಿದಂತೆ ಕೊಲೆಸ್ಟ್ರಾಲ್ ಔಷಧಿಗಳನ್ನು ತೆಗೆದುಕೊಳ್ಳಿ',
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