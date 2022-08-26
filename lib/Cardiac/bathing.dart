import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';

class Bathing extends StatefulWidget {
  static const String id = 'Bathing';
  @override
  State<Bathing> createState() => _BathingState();
}

class _BathingState extends State<Bathing> {

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
              tag: Bathing.id,
              child: SizedBox(
                height: size.height*0.40,width: double.infinity,
                child: const Image(
                  image: AssetImage('images/Bathing.png'),
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
                                          child: Text(language?'BATHING': 'ಸ್ನಾನ',
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
                                        Text(language?'• Take sponge bath till sutures are removed, that is, first week after discharge. Then regular bath can be continued.':'• ಹೊಲಿಗೆಗಳನ್ನು ತೆಗೆಯುವವರೆಗೆ ಸ್ಪಾಂಜ್ ಬಾತ್ ತೆಗೆದುಕೊಳ್ಳಿ, ಅಂದರೆ ಡಿಸ್ಚಾರ್ಜ್ ಆದ ಮೊದಲ ವಾರ. ನಂತರ ನಿಯಮಿತ ಸ್ನಾನವನ್ನು ಮುಂದುವರಿಸಬಹುದು.',
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
                                        padding: EdgeInsets.only(right: size.width*0.01,top: size.height*0.01),
                                        child:
                                        Text(language?'• Take bath daily. Bath to the back. The water should not directly hit the chest.': '• ಪ್ರತಿದಿನ ಸ್ನಾನ ಮಾಡಿ. ಹಿಂಭಾಗಕ್ಕೆ ಸ್ನಾನ. ನೀರು ನೇರವಾಗಿ ಎದೆಗೆ ಹೊಡೆಯಬಾರದು.',
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
                                        padding: EdgeInsets.only(right: size.width*0.01,top: size.height*0.01),
                                        child:
                                        Text(language?'• The water temperature should not too hot or cold.':'• ನೀರಿನ ತಾಪಮಾನವು ತುಂಬಾ ಬಿಸಿಯಾಗಿರಬಾರದು ಅಥವಾ ತಂಪಾಗಿರಬಾರದು.',
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
                                        padding: EdgeInsets.only(right: size.width*0.01),
                                        child:
                                            Text(language?'• Wash the incision with soap and water to cleanse the site. Wet the hand with soap water and gently wash the incision using up and down motions. Avoid scrubbing them.':'• ಸೈಟ್ ಅನ್ನು ಸ್ವಚ್ಛಗೊಳಿಸಲು ಸೋಪ್ ಮತ್ತು ನೀರಿನಿಂದ ಛೇದನವನ್ನು ತೊಳೆಯಿರಿ. ಕೈಯನ್ನು ಸಾಬೂನಿನಿಂದ ಒದ್ದೆ ಮಾಡಿ ಮತ್ತು ಮೇಲಕ್ಕೆ ಮತ್ತು ಕೆಳಕ್ಕೆ ಚಲನೆಯನ್ನು ಬಳಸಿ ಛೇದನವನ್ನು ನಿಧಾನವಾಗಿ ತೊಳೆಯಿರಿ. ಅವುಗಳನ್ನು ಸ್ಕ್ರಬ್ ಮಾಡುವುದನ್ನು ತಪ್ಪಿಸಿ.',
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
                                        padding: EdgeInsets.only(right: size.width*0.01),
                                        child:
                                            Text(language?'•	Pat the skin gently to dry by clean cloth':'• ಸ್ವಚ್ಛವಾದ ಬಟ್ಟೆಯಿಂದ ಚರ್ಮವನ್ನು ಒಣಗಿಸಲು ನಿಧಾನವಾಗಿ ಪ್ಯಾಟ್ ಮಾಡಿ',
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
                                        padding: EdgeInsets.only(right: size.width*0.01),
                                        child:
                                            Text(language?'•	Don’t apply anything to the incision unless advised by the surgeon':'• ಶಸ್ತ್ರಚಿಕಿತ್ಸಕರಿಂದ ಸಲಹೆ ನೀಡದ ಹೊರತು ಛೇದನಕ್ಕೆ ಏನನ್ನೂ ಅನ್ವಯಿಸಬೇಡಿ',
                                              style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 20,
                                              ),
                                              textAlign: TextAlign.center,
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
                ],),
          ],
    ),
        ),
    );
  }
}
