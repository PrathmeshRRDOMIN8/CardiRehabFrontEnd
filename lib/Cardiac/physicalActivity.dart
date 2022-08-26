import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';

class PhysicalActivity extends StatefulWidget {
  static const String id = 'Physical activity';

  @override
  State<PhysicalActivity> createState() => _PhysicalActivityState();
}

class _PhysicalActivityState extends State<PhysicalActivity> {
  bool language=true;
  void initState(){
    super.initState();
    language;
  }
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
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
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Hero(
              tag: PhysicalActivity.id,
              child: SizedBox(
                height: size.height*0.40,width: double.infinity,
                child: const Image(
                  image: AssetImage('images/PhysicalActivity.jpg'),
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
                                        child: Text(language?'PHYSICAL ACTIVITY':'ದೈಹಿಕ ಚಟುವಟಿಕೆ',
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
                                          Text(language?'• Slow and progressively regain the normal activities.':'• ಸಾಮಾನ್ಯ ಚಟುವಟಿಕೆಗಳನ್ನು ನಿಧಾನವಾಗಿ ಮತ್ತು ಹಂತಹಂತವಾಗಿ ಮರಳಿ ಪಡೆಯಿರಿ.'
,
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
                                          Text(language?'• For longer periods don’t stay in bed. Each morning get dressed.':'• ಹೆಚ್ಚು ಕಾಲ ಹಾಸಿಗೆಯಲ್ಲಿ ಇರಬೇಡಿ. ಪ್ರತಿದಿನ ಬೆಳಿಗ್ಗೆ ಧರಿಸುತ್ತಾರೆ.',
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
                                          Text(language?'• Wear comfortable casual clothes. Avoid wearing tight clothing that rubs the incision.':"• ಆರಾಮದಾಯಕ ಕ್ಯಾಶುಯಲ್ ಬಟ್ಟೆಗಳನ್ನು ಧರಿಸಿ. ಛೇದನವನ್ನು ಉಜ್ಜುವ ಬಿಗಿಯಾದ ಬಟ್ಟೆಗಳನ್ನು ಧರಿಸುವುದನ್ನು ತಪ್ಪಿಸಿ.",
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
                                          Text(language?'• After first week of surgery light house work can be resumed and increase the activity as tolerable.':'• ಶಸ್ತ್ರಚಿಕಿತ್ಸೆಯ ಮೊದಲ ವಾರದ ನಂತರ ಲೈಟ್ ಹೌಸ್ ಕೆಲಸವನ್ನು ಪುನರಾರಂಭಿಸಬಹುದು ಮತ್ತು ಚಟುವಟಿಕೆಯನ್ನು ಸಹನೀಯವಾಗಿ ಹೆಚ್ಚಿಸಬಹುದು.',
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
                                          Text(language?'• Avoid heavy lifting. 2 to 3 months after surgery less than 2 kg can be lifted.':'• ಭಾರ ಎತ್ತುವುದನ್ನು ತಪ್ಪಿಸಿ. ಶಸ್ತ್ರಚಿಕಿತ್ಸೆಯ ನಂತರ 2 ರಿಂದ 3 ತಿಂಗಳ ನಂತರ 2 ಕೆಜಿಗಿಂತ ಕಡಿಮೆ ತೂಕವನ್ನು ಎತ್ತಬಹುದು.',
                                        

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
                                          Text(language?'• Avoid push or pull heavy things.':'• ಭಾರವಾದ ವಸ್ತುಗಳನ್ನು ತಳ್ಳುವುದು ಅಥವಾ ಎಳೆಯುವುದನ್ನು ತಪ್ಪಿಸಿ.',

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
                                          Text(language?'• Avoid activities that strain the upper arm muscles or chest for 3 months.':'• 3 ತಿಂಗಳ ಕಾಲ ತೋಳಿನ ಸ್ನಾಯುಗಳು ಅಥವಾ ಎದೆಯ ಮೇಲಿನ ಒತ್ತಡವನ್ನು ಉಂಟುಮಾಡುವ ಚಟುವಟಿಕೆಗಳನ್ನು ತಪ್ಪಿಸಿ.',

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
                                          Text(language?'• Avoid long tasks, break them into shorter parts. Before you get tiered stop the tasks.':'• ದೀರ್ಘ ಕಾರ್ಯಗಳನ್ನು ತಪ್ಪಿಸಿ, ಅವುಗಳನ್ನು ಚಿಕ್ಕ ಭಾಗಗಳಾಗಿ ಒಡೆಯಿರಿ. ನೀವು ಟೈರ್ ಆಗುವ ಮೊದಲು ಕಾರ್ಯಗಳನ್ನು ನಿಲ್ಲಿಸಿ.',
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
                                          Text(language?'• Avoid activities that makes you hold the breath.':'• ನೀವು ಉಸಿರನ್ನು ಹಿಡಿದಿಟ್ಟುಕೊಳ್ಳುವಂತೆ ಮಾಡುವ ಚಟುವಟಿಕೆಗಳನ್ನು ತಪ್ಪಿಸಿ.',
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
                                          Text(language?'• As tolerable light house work can be done such as ducting, light gardening.':'• ಸಹಿಸಬಹುದಾದ ಲೈಟ್ ಹೌಸ್ ಕೆಲಸಗಳಾದ ಡಕ್ಟಿಂಗ್, ಲೈಟ್ ಗಾರ್ಡನಿಂಗ್ ಮಾಡಬಹುದಾಗಿದೆ.',

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
                                          Text(language?'• While lifting from the ground bend the knees, not the waist.':'• ನೆಲದಿಂದ ಎತ್ತುವಾಗ ಮೊಣಕಾಲುಗಳನ್ನು ಬಾಗಿಸಿ, ಸೊಂಟವನ್ನಲ್ಲ.',

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
                                          Text(language?'• For long periods do not sit or stand.\n Move around in between.':'• ದೀರ್ಘಕಾಲ ಕುಳಿತುಕೊಳ್ಳಬೇಡಿ ಅಥವಾ ನಿಲ್ಲಬೇಡಿ. ನಡುವೆ ಸಂಚರಿಸಿ.',

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
                                          Text(language?'• Do not allow anyone pull on the arms for any reason. ':'• ಯಾವುದೇ ಕಾರಣಕ್ಕೂ ತೋಳುಗಳನ್ನು ಎಳೆಯಲು ಯಾರಿಗೂ ಅವಕಾಶ ನೀಡಬೇಡಿ.',

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
                                          Text(language?'• Don’t feel rushed for activities, given enough time to complete the activities.':'• ಚಟುವಟಿಕೆಗಳನ್ನು ಪೂರ್ಣಗೊಳಿಸಲು ಸಾಕಷ್ಟು ಸಮಯವನ್ನು ನೀಡಿ, ಚಟುವಟಿಕೆಗಳಿಗೆ ಆತುರಪಡಬೇಡಿ.',

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
                                          Text(language?'• If you fell any symptoms such as severe shortness of breath, chest pain, dizziness, stop the activity and take rest.':'• ನೀವು ತೀವ್ರವಾದ ಉಸಿರಾಟದ ತೊಂದರೆ, ಎದೆ ನೋವು, ತಲೆತಿರುಗುವಿಕೆ ಮುಂತಾದ ಯಾವುದೇ ರೋಗಲಕ್ಷಣಗಳನ್ನು ಅನುಭವಿಸಿದರೆ, ಚಟುವಟಿಕೆಯನ್ನು ನಿಲ್ಲಿಸಿ ಮತ್ತು ವಿಶ್ರಾಂತಿ ತೆಗೆದುಕೊಳ್ಳಿ.',

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
                                      child: Column(
                                        children: [
                                           Text(language?'Weeks 1 to 3':'1 ರಿಂದ 3 ವಾರಗಳು',
                                          style: TextStyle(
                                            decoration: TextDecoration.underline,
                                            color: Color(0xFFFFBD58),
                                            fontWeight: FontWeight.bold,
                                            fontSize: 28,
                                          ),),
                                          SizedBox(
                                            height: size.height*0.01,
                                          ),
                                          Column(
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            children: [
                                               Text(language?'• Slowly walking':'• ನಿಧಾನವಾಗಿ ನಡೆಯುವುದು',

                                                style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 20,
                                                ),),
                                              SizedBox(
                                                height: size.height*0.01,
                                              ),
                                               Text(language?'• Drawing, reading ,writing ':'• ಚಿತ್ರಕಲೆ, ಓದುವಿಕೆ, ಬರವಣಿಗೆ',
                                                style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 20,
                                                ),),
                                              SizedBox(
                                                height: size.height*0.01,
                                              ),
                                               Text(language?'• Watching television':'• ದೂರದರ್ಶನ ನೋಡುವುದು',

                                                style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 20,
                                                ),),
                                              SizedBox(
                                                height: size.height*0.01,
                                              ),
                                               Text(language?'• Needlework, knitting  ':'• ಸೂಜಿ ಕೆಲಸ, ಹೆಣಿಗೆ',

                                                style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 20,
                                                ),),
                                              SizedBox(
                                                height: size.height*0.01,
                                              ),
                                               Text(language?'• Slowly climbing stairs ':'• ನಿಧಾನವಾಗಿ ಮೆಟ್ಟಿಲುಗಳನ್ನು ಹತ್ತುವುದು',

                                                style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 20,
                                                ),),
                                              SizedBox(
                                                height: size.height*0.01,
                                              ),
                                               Text(language?'• Sweeping, light laundry, washing dishes, dusting, can be done at 2 weeks after the surgery':"• ಗುಡಿಸುವುದು, ಲಘು ಲಾಂಡ್ರಿ, ಪಾತ್ರೆ ತೊಳೆಯುವುದು, ಧೂಳು ತೆಗೆಯುವುದು, ಶಸ್ತ್ರಚಿಕಿತ್ಸೆಯ ನಂತರ 2 ವಾರಗಳಲ್ಲಿ ಮಾಡಬಹುದು",

                                                style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 20,
                                                ),
                                              textAlign: TextAlign.center,),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      height: size.height*0.02,
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(right: size.width*0.01),
                                      child: Column(
                                        children: [
                                          const Text('Weeks 3 to 6',
                                            style: TextStyle(
                                              decoration: TextDecoration.underline,
                                              color: Color(0xFFFFBD58),
                                              fontWeight: FontWeight.bold,
                                              fontSize: 28,
                                            ),),
                                          SizedBox(
                                            height: size.height*0.01,
                                          ),
                                          Column(
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            children: [
                                               Text(language?'• Cleaning sinks ':'ಸಿಂಕ್‌ಗಳನ್ನು ಸ್ವಚ್ಛಗೊಳಿಸುವುದು',

                                                style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 20,
                                                ),),
                                              SizedBox(
                                                height: size.height*0.01,
                                              ),
                                               Text(language?'• Light gardening ':'ಲಘು ತೋಟಗಾರಿಕೆ',

                                                style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 20,
                                                ),),
                                              SizedBox(
                                                height: size.height*0.01,
                                              ),
                                               Text(language?'• Ironing ':'ಇಸ್ತ್ರಿ ಮಾಡುವುದು',

                                                style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 20,
                                                ),),
                                              SizedBox(
                                                height: size.height*0.01,
                                              ),
                                               Text(language?'• Making Bed':'ಬೆಡ್ ಮಾಡುವುದು',

                                                style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 20,
                                                ),),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      height: size.height*0.45,
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
