import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';

class Smoking extends StatefulWidget {
  static const String id = 'Smoking cessation';


  @override
  State<Smoking> createState() => _SmokingState();
}

class _SmokingState extends State<Smoking> {
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
              tag: Smoking.id,
              child: SizedBox(
                height: size.height*0.40,width: double.infinity,
                child: const Image(
                  image: AssetImage('images/StopSmoking.jpg'),
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
                                      child: Text(language?'STOP SMOKING':'ಧೂಮಪಾನ ನಿಲ್ಲಿಸಿ',
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
                                    Text(language?'Smoking contributes directly to coronary artery disease and the heart attack by damaging artery walls and stopping smoking can rapidly reduce these risks.':'ಧೂಮಪಾನವು ಪರಿಧಮನಿಯ ಕಾಯಿಲೆಗೆ ನೇರವಾಗಿ ಕೊಡುಗೆ ನೀಡುತ್ತದೆ ಮತ್ತು ಹೃದಯಾಘಾತವು ಅಪಧಮನಿ ಗೋಡೆಗಳನ್ನು ಹಾನಿಗೊಳಿಸುತ್ತದೆ ಮತ್ತು ಧೂಮಪಾನವನ್ನು ನಿಲ್ಲಿಸುವುದರಿಂದ ಈ ಅಪಾಯಗಳನ್ನು ತ್ವರಿತವಾಗಿ ಕಡಿಮೆ ಮಾಡುತ್ತದೆ',
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
                                  Padding(
                                    padding: EdgeInsets.only(left: size.width*0.03),
                                    child:
                                    Column(
                                      children: [
                                        Padding(
                                          padding: EdgeInsets.only(),
                                          child: Text(language?'How to quit smoking: ':'ಧೂಮಪಾನವನ್ನು ತೊರೆಯುವುದು ಹೇಗೆ: ',
                                            style: TextStyle(
                                              decoration: TextDecoration.underline,
                                              color: Color(0xFFFFBD58),
                                              fontSize: 22.0,
                                              fontWeight: FontWeight.w500,
                                            ),),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    height: size.width*0.04,
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(right: size.width*0.01, top: size.height*0.001),
                                    child:
                                    Text(language?'Many smokers might have tried to quit in the past and were unsuccessful.  Following are some suggestions to help improve your confidence in quit smoking:':'ಅನೇಕ ಧೂಮಪಾನಿಗಳು ಹಿಂದೆ ಬಿಡಲು ಪ್ರಯತ್ನಿಸಿದರು ಮತ್ತು ವಿಫಲರಾಗಿದ್ದರು. ಧೂಮಪಾನವನ್ನು ತೊರೆಯುವಲ್ಲಿ ನಿಮ್ಮ ವಿಶ್ವಾಸವನ್ನು ಸುಧಾರಿಸಲು ಸಹಾಯ ಮಾಡುವ ಕೆಲವು ಸಲಹೆಗಳು ಇಲ್ಲಿವೆ:',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 20,
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                  SizedBox(
                                    height: size.height*0.03,
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(right: size.width*0.01),
                                    child:
                                    Text(language?'1) Try to being smoke free and quit smoking for a day, then 2, and so on.':'1) ಧೂಮಪಾನ ಮುಕ್ತವಾಗಿರಲು ಪ್ರಯತ್ನಿಸಿ ಮತ್ತು ಒಂದು ದಿನದವರೆಗೆ ಧೂಮಪಾನವನ್ನು ತ್ಯಜಿಸಿ, ನಂತರ 2, ಇತ್ಯಾದಿ.',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 20,
                                      ),
                                      textAlign: TextAlign.left,
                                    ),
                                  ),
                                  SizedBox(
                                    height: size.height*0.02,
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(right: size.width*0.01),
                                    child:
                                    Text(language?'2) Observe the person who quit smoking recently and try to follow their behaviours.':'2) ಇತ್ತೀಚೆಗೆ ಧೂಮಪಾನವನ್ನು ತ್ಯಜಿಸಿದ ವ್ಯಕ್ತಿಯನ್ನು ಗಮನಿಸಿ ಮತ್ತು ಅವರ ನಡವಳಿಕೆಯನ್ನು ಅನುಸರಿಸಲು ಪ್ರಯತ್ನಿಸಿ.',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 20,
                                      ),
                                      textAlign: TextAlign.left,
                                    ),
                                  ),
                                  SizedBox(
                                    height: size.height*0.02,
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(right: size.width*0.01),
                                    child:
                                    Text(language?'3) Improve your negative mood towards quitting and follow a healthy lifestyle by exercising, eating well and getting enough sleep.':'3) ವ್ಯಾಯಾಮ, ಚೆನ್ನಾಗಿ ತಿನ್ನುವುದು ಮತ್ತು ಸಾಕಷ್ಟು ನಿದ್ದೆ ಮಾಡುವ ಮೂಲಕ ಆರೋಗ್ಯಕರ ಜೀವನಶೈಲಿಯನ್ನು ತ್ಯಜಿಸುವ ಕಡೆಗೆ ನಿಮ್ಮ ನಕಾರಾತ್ಮಕ ಮನಸ್ಥಿತಿಯನ್ನು ಸುಧಾರಿಸಿ.',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 20,
                                      ),
                                      textAlign: TextAlign.left,
                                    ),
                                  ),
                                  SizedBox(
                                    height: size.height*0.02,
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(right: size.width*0.01),
                                    child:
                                    Text(language?'4) Motivate yourself to quit smoking by achieving short quit period and that keeps you focused to achieve your goal.':'4) ಕಡಿಮೆ ಅವಧಿಯನ್ನು ಸಾಧಿಸುವ ಮೂಲಕ ಧೂಮಪಾನವನ್ನು ತ್ಯಜಿಸಲು ನಿಮ್ಮನ್ನು ಪ್ರೇರೇಪಿಸಿ ಮತ್ತು ಅದು ನಿಮ್ಮ ಗುರಿಯನ್ನು ಸಾಧಿಸಲು ನಿಮ್ಮನ್ನು ಕೇಂದ್ರೀಕರಿಸುತ್ತದೆ.',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 20,
                                      ),
                                      textAlign: TextAlign.left,
                                    ),
                                  ),
                                  SizedBox(
                                    height: size.height*0.02,
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(right: size.width*0.01),
                                    child:
                                    Text(language?'5) Share your goal to quit smoking with friends, family, and co-workers. ': '5) ಸ್ನೇಹಿತರು, ಕುಟುಂಬ ಮತ್ತು ಸಹೋದ್ಯೋಗಿಗಳೊಂದಿಗೆ ಧೂಮಪಾನವನ್ನು ತೊರೆಯುವ ನಿಮ್ಮ ಗುರಿಯನ್ನು ಹಂಚಿಕೊಳ್ಳಿ.',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 20,
                                      ),
                                      textAlign: TextAlign.left,
                                    ),
                                  ),
                                  SizedBox(
                                    height: size.height*0.02,
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(right: size.width*0.01),
                                    child:
                                    Text(language?'6) Anticipate smoking the triggers and challenges.':'6) ಧೂಮಪಾನದ ಪ್ರಚೋದಕಗಳು ಮತ್ತು ಸವಾಲುಗಳನ್ನು ನಿರೀಕ್ಷಿಸಿ.',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 20,
                                      ),
                                      textAlign: TextAlign.left,
                                    ),
                                  ),
                                  SizedBox(
                                    height: size.height*0.02,
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(right: size.width*0.01),
                                    child:
                                    Text(language?'7) Avoid tobacco products that triggers smoking from your environment.':'7) ನಿಮ್ಮ ಪರಿಸರದಿಂದ ಧೂಮಪಾನವನ್ನು ಪ್ರಚೋದಿಸುವ ತಂಬಾಕು ಉತ್ಪನ್ನಗಳನ್ನು ತಪ್ಪಿಸಿ.',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 20,
                                      ),
                                      textAlign: TextAlign.left,
                                    ),
                                  ),
                                  SizedBox(
                                    height: size.height*0.02,
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(right: size.width*0.01),
                                    child:
                                    Text(language?'8) Breathe deeply: Relax yourself by doing deep breathing exercises when you urged to smoke.':'8) ಆಳವಾಗಿ ಉಸಿರಾಡಿ: ನೀವು ಧೂಮಪಾನ ಮಾಡಲು ಒತ್ತಾಯಿಸಿದಾಗ ಆಳವಾದ ಉಸಿರಾಟದ ವ್ಯಾಯಾಮಗಳನ್ನು ಮಾಡುವ ಮೂಲಕ ವಿಶ್ರಾಂತಿ ಪಡೆಯಿರಿ.',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 20,
                                      ),
                                      textAlign: TextAlign.left,
                                    ),
                                  ),
                                  SizedBox(
                                    height: size.height*0.02,
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(right: size.width*0.01),
                                    child:
                                    Text(language?'9) Engage in other hobbies to distract yourself from smoking such as listen to music, go for a walk,or watch TV.':'9) ಧೂಮಪಾನದಿಂದ ನಿಮ್ಮ ಗಮನವನ್ನು ಬೇರೆಡೆಗೆ ಸೆಳೆಯಲು ಇತರ ಹವ್ಯಾಸಗಳಲ್ಲಿ ತೊಡಗಿಸಿಕೊಳ್ಳಿ ಉದಾಹರಣೆಗೆ ಸಂಗೀತವನ್ನು ಆಲಿಸಿ, ವಾಕ್ ಮಾಡಲು ಅಥವಾ ಟಿವಿ ವೀಕ್ಷಿಸಲು.',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 20,
                                      ),
                                      textAlign: TextAlign.left,
                                    ),
                                  ),
                                  SizedBox(
                                    height: size.height*0.02,
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(right: size.width*0.01),
                                    child:
                                    Text(language?'10)	Maintaining a healthy life style can manage the withdrawal symptoms.': '10) ಆರೋಗ್ಯಕರ ಜೀವನಶೈಲಿಯನ್ನು ಕಾಪಾಡಿಕೊಳ್ಳುವುದು ವಾಪಸಾತಿ ರೋಗಲಕ್ಷಣಗಳನ್ನು ನಿರ್ವಹಿಸಬಹುದು.',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 20,
                                      ),
                                      textAlign: TextAlign.left,
                                    ),
                                  ),
                                  SizedBox(
                                    height: size.height*0.4,
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
