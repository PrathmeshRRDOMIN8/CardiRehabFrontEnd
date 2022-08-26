import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';

class PsychologicalCare extends StatefulWidget {
  static const String id = 'Psychological care';


  @override
  State<PsychologicalCare> createState() => _PsychologicalCareState();
}

class _PsychologicalCareState extends State<PsychologicalCare> {
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
              tag: PsychologicalCare.id,
              child: SizedBox(
                height: size.height * 0.40,
                width: double.infinity,
                child: const Image(
                  image: AssetImage('images/PyschologicalCare.jpg'),
                  fit: BoxFit.fill,
                ),
              ),
            ),
            Flex(
              direction: Axis.vertical,
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
                            padding: EdgeInsets.only(left: size.width * 0.03),
                            child: Row(
                              children: [
                                Column(
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(),
                                      child: Text(
                                        language
                                            ? 'Psychosocial care: '
                                            : 'ಮನೋಸಾಮಾಜಿಕ ಆರೈಕೆ:',
                                        style: TextStyle(
                                          decoration: TextDecoration.underline,
                                          color: Color(0xFFFFBD58),
                                          fontSize: 28.0,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: size.height * 0.01,
                          ),
                          Padding(
                              padding: EdgeInsets.only(
                                  left: size.width * 0.025,
                                  right: size.width * 0.015),
                              child: Column(
                                children: [
                                  SizedBox(
                                    height: size.width * 0.04,
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                        right: size.width * 0.01,
                                        top: size.height * 0.001),
                                    child: Text(
                                      language
                                          ? '• It is common to feel depressed, anxious after bypass surgery. About 40% people suffer due to these symptoms. '
                                          : 'ಬೈಪಾಸ್ ಶಸ್ತ್ರಚಿಕಿತ್ಸೆಯ ನಂತರ ಖಿನ್ನತೆಗೆ ಒಳಗಾಗುವುದು, ಆತಂಕವನ್ನು ಅನುಭವಿಸುವುದು ಸಾಮಾನ್ಯವಾಗಿದೆ. ಸುಮಾರು 40% ಜನರು ಈ ರೋಗಲಕ್ಷಣಗಳಿಂದ ಬಳಲುತ್ತಿದ್ದಾರೆ.',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 20,
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                  SizedBox(
                                    height: size.width * 0.04,
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                        right: size.width * 0.01,
                                        top: size.height * 0.001),
                                    child: Text(
                                      language
                                          ? '• Recognize what causes you stress '
                                          : 'ನಿಮ್ಮ ಒತ್ತಡಕ್ಕೆ ಕಾರಣವೇನು ಎಂಬುದನ್ನು ಗುರುತಿಸಿ',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 20,
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                  SizedBox(
                                    height: size.height * 0.02,
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                        right: size.width * 0.01),
                                    child: Text(
                                      language
                                          ? '• Breathing and relaxation exercises helps to reduce your stress.'
                                          : 'ಉಸಿರಾಟ ಮತ್ತು ವಿಶ್ರಾಂತಿ ವ್ಯಾಯಾಮಗಳು ನಿಮ್ಮ ಒತ್ತಡವನ್ನು ಕಡಿಮೆ ಮಾಡಲು ಸಹಾಯ ಮಾಡುತ್ತದೆ.',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 20,
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                  SizedBox(
                                    height: size.height * 0.02,
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                        right: size.width * 0.01),
                                    child: Text(
                                      language
                                          ? '• Follow exercise regimen daily to help reduce the effects of stress'
                                          : 'ಒತ್ತಡದ ಪರಿಣಾಮಗಳನ್ನು ಕಡಿಮೆ ಮಾಡಲು ಪ್ರತಿದಿನ ವ್ಯಾಯಾಮ ಕಟ್ಟುಪಾಡುಗಳನ್ನು ಅನುಸರಿಸಿ',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 20,
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                  SizedBox(
                                    height: size.height * 0.02,
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                        right: size.width * 0.01),
                                    child: Text(
                                      language
                                          ? '• Do more pleasant activities like reading a funny book.'
                                          : 'ತಮಾಷೆಯ ಪುಸ್ತಕವನ್ನು ಓದುವಂತಹ ಹೆಚ್ಚು ಆಹ್ಲಾದಕರ ಚಟುವಟಿಕೆಗಳನ್ನು ಮಾಡಿ.',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 20,
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                  SizedBox(
                                    height: size.height * 0.02,
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                        right: size.width * 0.01),
                                    child: Text(
                                      language
                                          ? '• See scenes that are relaxing the mind.'
                                          : 'ಮನಸ್ಸನ್ನು ರಿಲ್ಯಾಕ್ಸ್ ಮಾಡುವ ದೃಶ್ಯಗಳನ್ನು ನೋಡಿ.',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 20,
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                  SizedBox(
                                    height: size.height * 0.02,
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                        right: size.width * 0.01),
                                    child: Text(
                                      language
                                          ? '• Divert your mind from the thoughts that contribute to the anxiety (e.g., count backwards from 100)'
                                          : 'ಆತಂಕಕ್ಕೆ ಕಾರಣವಾಗುವ ಆಲೋಚನೆಗಳಿಂದ ನಿಮ್ಮ ಮನಸ್ಸನ್ನು ಬೇರೆಡೆಗೆ ತಿರುಗಿಸಿ (ಉದಾ., 100 ರಿಂದ ಹಿಂದಕ್ಕೆ ಎಣಿಸಿ)',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 20,
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                  SizedBox(
                                    height: size.height * 0.02,
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                        right: size.width * 0.01),
                                    child: Text(
                                      language
                                          ? '• Speak to your family or friends about your fear and anxiety.'
                                          : 'ನಿಮ್ಮ ಭಯ ಮತ್ತು ಆತಂಕದ ಬಗ್ಗೆ ನಿಮ್ಮ ಕುಟುಂಬ ಅಥವಾ ಸ್ನೇಹಿತರೊಂದಿಗೆ ಮಾತನಾಡಿ.',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 20,
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                  SizedBox(
                                    height: size.height * 0.02,
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                        right: size.width * 0.01),
                                    child: Text(
                                      language
                                          ? '• Music helps to manage stress, enhance memory, and promote wellness. Listen to the music.'
                                          : 'ಸಂಗೀತವು ಒತ್ತಡವನ್ನು ನಿರ್ವಹಿಸಲು, ಸ್ಮರಣೆಯನ್ನು ಹೆಚ್ಚಿಸಲು ಮತ್ತು ಕ್ಷೇಮವನ್ನು ಉತ್ತೇಜಿಸಲು ಸಹಾಯ ಮಾಡುತ್ತದೆ. ಸಂಗೀತವನ್ನು ಆಲಿಸಿ.',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 20,
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                  SizedBox(
                                    height: size.height * 0.02,
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                        right: size.width * 0.01),
                                    child: Text(
                                      language
                                          ? '• Feeling anxious or sad common after major surgery. Don’t feel shame.'
                                          : 'ಪ್ರಮುಖ ಶಸ್ತ್ರಚಿಕಿತ್ಸೆಯ ನಂತರ ಸಾಮಾನ್ಯವಾಗಿ ಆತಂಕ ಅಥವಾ ದುಃಖದ ಭಾವನೆ. ಅವಮಾನ ಅನುಭವಿಸಬೇಡಿ.',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 20,
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                  SizedBox(
                                    height: size.height * 0.45,
                                  ),
                                ],
                              )),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
