import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';

class Exercise extends StatefulWidget {
  static const String id = 'Exercise';

  @override
  State<Exercise> createState() => _ExerciseState();
}

class _ExerciseState extends State<Exercise> {
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
              tag: Exercise.id,
              child: SizedBox(
                height: size.height*0.40,width: double.infinity,
                child: const Image(
                  image: AssetImage('images/Exercise.jpg'),
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
                                        child: Text(language?'BENEFITS OF EXERCISE':'ವ್ಯಾಯಾಮದ ಪ್ರಯೋಜನಗಳು:',
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
                                          Text(language?'• Exercises helps to improve in respiratory and cardiovascular function.':'ವ್ಯಾಯಾಮಗಳು ಉಸಿರಾಟ ಮತ್ತು ಹೃದಯರಕ್ತನಾಳದ ಕಾರ್ಯವನ್ನು ಸುಧಾರಿಸಲು ಸಹಾಯ ಮಾಡುತ್ತದೆ',
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
                                          Text(language?'• Occurrence of coronary artery\n disease can be reduced':'ಪರಿಧಮನಿಯ ಕಾಯಿಲೆಯ ಸಂಭವವನ್ನು ಕಡಿಮೆ ಮಾಡಬಹುದು',
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
                                          Text(language?'• Reduced illness ':'ಕಡಿಮೆಯಾದ ಅನಾರೋಗ್ಯ',
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
                                          Text(language?'• Decreased depression and anxiety':'ಖಿನ್ನತೆ ಮತ್ತು ಆತಂಕ ಕಡಿಮೆಯಾಗಿದೆ',
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
                                          Text(language?'• Feelings of wellness ':'ಕ್ಷೇಮದ ಭಾವನೆಗಳು',
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
                                          Text(language?'• Improved performance of sport activities, recreational and work.':'ಕ್ರೀಡಾ ಚಟುವಟಿಕೆಗಳು, ಮನರಂಜನೆ ಮತ್ತು ಕೆಲಸಗಳ ಸುಧಾರಿತ ಕಾರ್ಯಕ್ಷಮತೆ.',
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
                                      child: Row(
                                        children: [
                                          Column(
                                            children: [
                                              Padding(
                                                padding: EdgeInsets.only(),
                                                child: Text(language?'General instructions':'ಸಾಮಾನ್ಯ ಸೂಚನೆಗಳು: ',
                                                  style: TextStyle(
                                                    decoration: TextDecoration.underline,
                                                    color: Color(0xFFFFBD58),
                                                    fontSize: 24.0,
                                                    fontWeight: FontWeight.w500,
                                                  ),),
                                              ),
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
                                      child:
                                          Text(language?'• Walking is an ideal form of exercise after CABG surgery.':'CABG ಶಸ್ತ್ರಚಿಕಿತ್ಸೆಯ ನಂತರ ವಾಕಿಂಗ್ ವ್ಯಾಯಾಮದ ಆದರ್ಶ ರೂಪವಾಗಿದೆ.',
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
                                          Text(language?'• Wear comfortable clothing and supportive footwear. ':'ಆರಾಮದಾಯಕ ಉಡುಪು ಮತ್ತು ಬೆಂಬಲ ಪಾದರಕ್ಷೆಗಳನ್ನು ಧರಿಸಿ.',
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
                                          Text(language?'• Allow at least 2 hours between eating the last large meal and beginning to exercise.  ':'ಕೊನೆಯ ದೊಡ್ಡ ಊಟವನ್ನು ತಿನ್ನುವ ಮತ್ತು ವ್ಯಾಯಾಮವನ್ನು ಪ್ರಾರಂಭಿಸುವ ನಡುವೆ ಕನಿಷ್ಠ 2 ಗಂಟೆಗಳ ಕಾಲ ಅನುಮತಿಸಿ.',
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
                                          Text(language? '• Start walk at a slow pace and for short periods of time. ':'ನಿಧಾನಗತಿಯಲ್ಲಿ ಮತ್ತು ಅಲ್ಪಾವಧಿಗೆ ನಡೆಯಲು ಪ್ರಾರಂಭಿಸಿ.',
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
                                          Text(language? '• Steadily increase the length of walks before increasing the speed.':'ವೇಗವನ್ನು ಹೆಚ್ಚಿಸುವ ಮೊದಲು ನಡಿಗೆಗಳ ಉದ್ದವನ್ನು ಸ್ಥಿರವಾಗಿ ಹೆಚ್ಚಿಸಿ.',
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
                                          Text(language? '• Walk on flat ground initially. ':'ಆರಂಭದಲ್ಲಿ ಸಮತಟ್ಟಾದ ನೆಲದ ಮೇಲೆ ನಡೆಯಿರಿ.',
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
                                          Text(language? '• While you are exercising you should aim to feel “comfortably breathless” but still able to have a conversation. ':'ನೀವು ವ್ಯಾಯಾಮ ಮಾಡುವಾಗ ನೀವು "ಆರಾಮವಾಗಿ ಉಸಿರುಗಟ್ಟುವಿಕೆ" ಅನುಭವಿಸುವ ಗುರಿಯನ್ನು ಹೊಂದಿರಬೇಕು ಆದರೆ ಇನ್ನೂ ಸಂಭಾಷಣೆಯನ್ನು ಹೊಂದಲು ಸಾಧ್ಯವಾಗುತ್ತದೆ.',
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
                                          Text(language? '• As tolerated increase the speed and distance':'ತಡೆದುಕೊಳ್ಳುವಂತೆ ವೇಗ ಮತ್ತು ದೂರವನ್ನು ಹೆಚ್ಚಿಸಿ',
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
                                          Text(language? '• While walking, avoid fatigue and shortness of breath.':'ನಡೆಯುವಾಗ, ಆಯಾಸ ಮತ್ತು ಉಸಿರಾಟದ ತೊಂದರೆ ತಪ್ಪಿಸಿ.',
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
                                    Text(language? 'If you are having difficulties in walking practice interval training.':'ವಾಕಿಂಗ್ ಅಭ್ಯಾಸ ಮಧ್ಯಂತರ ತರಬೇತಿಯಲ್ಲಿ ನೀವು ತೊಂದರೆಗಳನ್ನು ಹೊಂದಿದ್ದರೆ.',
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 24,
                                        decoration: TextDecoration.underline,
                                      ),
                                    textAlign: TextAlign.center,),
                                    SizedBox(
                                      height: size.height*0.03,
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(right: size.width*0.01),
                                      child: Row(
                                        children: [
                                          Text(language? '• Walking for two to five minutes ':'ಎರಡರಿಂದ ಐದು ನಿಮಿಷಗಳ ಕಾಲ ನಡೆಯುವುದು',
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 20,
                                            ),
                                            textAlign: TextAlign.center,),
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      height: size.height*0.03,
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(right: size.width*0.01),
                                      child: Row(
                                        children: [
                                          Text(language? '• Then rest for two to five minutes':' ನಂತರ ಎರಡರಿಂದ ಐದು ನಿಮಿಷಗಳ ಕಾಲ ವಿಶ್ರಾಂತಿ ಪಡೆಯಿರಿ',
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 20,
                                            ),
                                            textAlign: TextAlign.center,),
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      height: size.height*0.02,
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(right: size.width*0.01),
                                      child: Text(language?'• Repeat this pattern as many times as you are able to, gradually increasing the number of intervals.':'ಈ ಮಾದರಿಯನ್ನು ನಿಮಗೆ ಸಾಧ್ಯವಾದಷ್ಟು ಬಾರಿ ಪುನರಾವರ್ತಿಸಿ, ಕ್ರಮೇಣ ಮಧ್ಯಂತರಗಳ ಸಂಖ್ಯೆಯನ್ನು ಹೆಚ್ಚಿಸಿ.',
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 20,
                                            ),
                                          textAlign: TextAlign.center,),
                                    ),
                                    SizedBox(
                                      height: size.height*0.02,
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(left: size.width*0.03,right: size.width*0.03),
                                      child: Column(
                                            children: [
                                              Padding(
                                                padding: EdgeInsets.only(),
                                                child: Text(language?'Walking programme at home after CABG surgery':'CABG ಶಸ್ತ್ರಚಿಕಿತ್ಸೆಯ ನಂತರ ಮನೆಯಲ್ಲಿ ವಾಕಿಂಗ್ ಕಾರ್ಯಕ್ರಮ:',
                                                  style: TextStyle(
                                                    decoration: TextDecoration.underline,
                                                    color: Color(0xFFFFBD58),
                                                    fontSize: 24.0,
                                                    fontWeight: FontWeight.w500,
                                                  ),
                                                textAlign: TextAlign.center,),
                                              ),
                                            ],
                                          ),
                                    ),
                                    SizedBox(
                                      height: size.height*0.02,
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(right: size.width*0.01),
                                      child: Text(language?'• First week walk for 5 minutes twice a day':'ಮೊದಲ ವಾರ ದಿನಕ್ಕೆ ಎರಡು ಬಾರಿ 5 ನಿಮಿಷಗಳ ಕಾಲ ನಡೆಯಿರಿ',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 20,
                                        ),
                                        textAlign: TextAlign.center,),
                                    ),
                                    SizedBox(
                                      height: size.height*0.02,
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(right: size.width*0.01),
                                      child: Text(language?'• Second week 5-10 minutes twice a day':'ಎರಡನೇ ವಾರ 5-10 ನಿಮಿಷಗಳು ದಿನಕ್ಕೆ ಎರಡು ಬಾರಿ',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 20,
                                        ),
                                        textAlign: TextAlign.center,),
                                    ),
                                    SizedBox(
                                      height: size.height*0.02,
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(right: size.width*0.01),
                                      child: Text(language?'• Third week 10-15 minutes twice a day':'ಮೂರನೇ ವಾರ 10-15 ನಿಮಿಷಗಳು ದಿನಕ್ಕೆ ಎರಡು ಬಾರಿ',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 20,
                                        ),
                                        textAlign: TextAlign.center,),
                                    ),
                                    SizedBox(
                                      height: size.height*0.02,
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(right: size.width*0.01),
                                      child: Text(language?'• Fourth week 15-20 minutes twice a day':'ನಾಲ್ಕನೇ ವಾರ 15-20 ನಿಮಿಷಗಳು ದಿನಕ್ಕೆ ಎರಡು ಬಾರಿ',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 20,
                                        ),
                                        textAlign: TextAlign.center,),
                                    ),
                                    SizedBox(
                                      height: size.height*0.02,
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(right: size.width*0.01),
                                      child: Text(language?'• Fifth week 20- 25 minutes twice a day ':'ಐದನೇ ವಾರ 20-25 ನಿಮಿಷಗಳು ದಿನಕ್ಕೆ ಎರಡು ಬಾರಿ',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 20,
                                        ),
                                        textAlign: TextAlign.center,),
                                    ),
                                    SizedBox(
                                      height: size.height*0.02,
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(right: size.width*0.01),
                                      child: Text(language?'• Sixth week 25-30 minutes twice a day':'ಆರನೇ ವಾರ 25-30 ನಿಮಿಷಗಳು ದಿನಕ್ಕೆ ಎರಡು ಬಾರಿ',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 20,
                                        ),
                                        textAlign: TextAlign.center,),
                                    ),
                                    SizedBox(
                                      height: size.height*0.02,
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(right: size.width*0.01),
                                      child: Text(language?'• Seventh week 30–35 minutes twice a day':'ಏಳನೇ ವಾರ 30 - 35 ನಿಮಿಷಗಳು ದಿನಕ್ಕೆ ಎರಡು ಬಾರಿ',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 20,
                                        ),
                                        textAlign: TextAlign.center,),
                                    ),
                                    SizedBox(
                                      height: size.height*0.02,
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(right: size.width*0.01),
                                      child: Text(language?'• Eighth week 35-40 minutes twice a day':'ಎಂಟನೇ ವಾರ 35-40 ನಿಮಿಷಗಳು ದಿನಕ್ಕೆ ಎರಡು ಬಾರಿ',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 20,
                                        ),
                                        textAlign: TextAlign.center,),
                                    ),
                                    SizedBox(
                                      height: size.height*0.02,
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(right: size.width*0.01),
                                      child: Text(language?'• Ninth week onwards 40 minutes once a day with increased speed ':'ಹೆಚ್ಚಿದ ವೇಗದೊಂದಿಗೆ ಒಂಬತ್ತನೇ ವಾರದಿಂದ ದಿನಕ್ಕೆ ಒಮ್ಮೆ 40 ನಿಮಿಷಗಳು',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 20,
                                        ),
                                        textAlign: TextAlign.center,),
                                    ),
                                    SizedBox(
                                      height: size.height*0.02,
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(left: size.width*0.03,right: size.width*0.03),
                                      child: Column(
                                        children: [
                                          Padding(
                                            padding: EdgeInsets.only(),
                                            child: Text(language?'Steps of exercise to be followed: ':'ಅನುಸರಿಸಬೇಕಾದ ವ್ಯಾಯಾಮದ ಹಂತಗಳು:',
                                              style: TextStyle(
                                                decoration: TextDecoration.underline,
                                                color: Color(0xFFFFBD58),
                                                fontSize: 24.0,
                                                fontWeight: FontWeight.w500,
                                              ),
                                              textAlign: TextAlign.center,),
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      height: size.height*0.02,
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(left: size.width*0.03,right: size.width*0.03),
                                      child: Column(
                                        children: [
                                          Padding(
                                            padding: EdgeInsets.only(),
                                            child: SizedBox(
                                              child: Column(
                                                children: [
                                                  Row(
                                                    children: [
                                                      Text(language?'• Warm Up : ':'ಬೆಚ್ಚಗಾಗಲು: ',
                                                        style: TextStyle(
                                                          color: Color(0xFFFFBD58),
                                                          fontSize: 20.5,
                                                          fontWeight: FontWeight.w500,
                                                        ),
                                                        textAlign: TextAlign.center),
                                                    ],
                                                  ),
                                                  SizedBox(
                                                    height: size.height*0.01,
                                                  ),
                                                  Text(language?'The warm-up helps to loosen off joints, get the blood moving and supply blood to exercising muscles. Warming up should take around 15 minutes. Repeat all the exercises so you begin to feel warmer and notice an increase in your breathing.  The exercise should still feel light and very comfortable. Eg: Walk on spot ':'ಬೆಚ್ಚಗಾಗುವಿಕೆಯು ಕೀಲುಗಳನ್ನು ಸಡಿಲಗೊಳಿಸಲು ಸಹಾಯ ಮಾಡುತ್ತದೆ, ರಕ್ತವನ್ನು ಚಲಿಸುವಂತೆ ಮಾಡುತ್ತದೆ ಮತ್ತು ವ್ಯಾಯಾಮ ಮಾಡುವ ಸ್ನಾಯುಗಳಿಗೆ ರಕ್ತವನ್ನು ಪೂರೈಸುತ್ತದೆ. ಬೆಚ್ಚಗಾಗುವಿಕೆಯು ಸುಮಾರು 15 ನಿಮಿಷಗಳನ್ನು ತೆಗೆದುಕೊಳ್ಳುತ್ತದೆ. ಎಲ್ಲಾ ವ್ಯಾಯಾಮಗಳನ್ನು ಪುನರಾವರ್ತಿಸಿ ಇದರಿಂದ ನೀವು ಬೆಚ್ಚಗಾಗಲು ಪ್ರಾರಂಭಿಸುತ್ತೀರಿ ಮತ್ತು ನಿಮ್ಮ ಉಸಿರಾಟದ ಹೆಚ್ಚಳವನ್ನು ಗಮನಿಸಿ. ವ್ಯಾಯಾಮವು ಇನ್ನೂ ಹಗುರವಾಗಿರಬೇಕು ಮತ್ತು ತುಂಬಾ ಆರಾಮದಾಯಕವಾಗಿರಬೇಕು. ಉದಾ: ಸ್ಥಳದಲ್ಲೇ ನಡೆಯಿರಿ',
                                                  style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 20,
                                                  ),
                                                  textAlign: TextAlign.center,),
                                                  SizedBox(
                                                    height: size.height*0.02,
                                                  ),
                                                  Image(image: AssetImage('images/Warmup.jpg'))
                                                ],
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      height: size.height*0.04,
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(left: size.width*0.03,right: size.width*0.03),
                                      child: Column(
                                        children: [
                                          Padding(
                                            padding: EdgeInsets.only(),
                                            child: SizedBox(
                                              child: Column(
                                                children: [
                                                  Row(
                                                    children: [
                                                      Text(language?'• Exercise Circuit : ':'ವ್ಯಾಯಾಮ ಸರ್ಕ್ಯೂಟ್:',
                                                          style: TextStyle(
                                                            color: Color(0xFFFFBD58),
                                                            fontSize: 20.5,
                                                            fontWeight: FontWeight.w500,
                                                          ),
                                                          textAlign: TextAlign.center),
                                                    ],
                                                  ),
                                                  SizedBox(
                                                    height: size.height*0.01,
                                                  ),
                                                  Text(language?'30-35 minutes ':'30-35 minutes ',
                                                    style: TextStyle(
                                                      color: Colors.black,
                                                      fontSize: 20,
                                                    ),
                                                    textAlign: TextAlign.center,)
                                                ],
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      height: size.height*0.02,
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(left: size.width*0.03,right: size.width*0.03),
                                      child: Column(
                                        children: [
                                          Padding(
                                            padding: EdgeInsets.only(),
                                            child: SizedBox(
                                              child: Column(
                                                children: [
                                                  Row(
                                                    children: [
                                                      Text(language?'• Cool Down : ':'ಕೂಲ್ ಡೌನ್: ',
                                                          style: TextStyle(
                                                            color: Color(0xFFFFBD58),
                                                            fontSize: 20.5,
                                                            fontWeight: FontWeight.w500,
                                                          ),
                                                          textAlign: TextAlign.center),
                                                    ],
                                                  ),
                                                  SizedBox(
                                                    height: size.height*0.01,
                                                  ),
                                                  Text(language?'During walking your heart will be pumping harder and your heart rate will remain raised. If you stop exercising too suddenly your blood pressure may fall too quickly. Cooling exercises may be similar to those used in the warm-up although will be performed at a lower level.':'ನಡೆಯುವಾಗ ನಿಮ್ಮ ಹೃದಯವು ಗಟ್ಟಿಯಾಗಿ ಪಂಪ್ ಆಗುತ್ತದೆ ಮತ್ತು ನಿಮ್ಮ ಹೃದಯ ಬಡಿತವು ಹೆಚ್ಚಾಗುತ್ತದೆ. ನೀವು ತುಂಬಾ ಹಠಾತ್ತನೆ ವ್ಯಾಯಾಮವನ್ನು ನಿಲ್ಲಿಸಿದರೆ ನಿಮ್ಮ ರಕ್ತದೊತ್ತಡವು ಬೇಗನೆ ಕುಸಿಯಬಹುದು. ಕೂಲಿಂಗ್ ವ್ಯಾಯಾಮಗಳು ಅಭ್ಯಾಸದಲ್ಲಿ ಬಳಸಿದಂತೆಯೇ ಇರಬಹುದು, ಆದರೂ ಕಡಿಮೆ ಮಟ್ಟದಲ್ಲಿ ನಡೆಸಲಾಗುತ್ತದೆ.',
                                                    style: TextStyle(
                                                      color: Colors.black,
                                                      fontSize: 20,
                                                    ),
                                                    textAlign: TextAlign.center,)
                                                ],
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      height: size.height*0.02,
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(left: size.width*0.03,right: size.width*0.03),
                                      child: Column(
                                        children: [
                                          Padding(
                                            padding: EdgeInsets.only(),
                                            child: SizedBox(
                                              child: Column(
                                                children: [
                                                  Row(
                                                    children: [
                                                      Text(language?'• Relaxation : ':'ವಿಶ್ರಾಂತಿ: ',
                                                          style: TextStyle(
                                                            color: Color(0xFFFFBD58),
                                                            fontSize: 20.5,
                                                            fontWeight: FontWeight.w500,
                                                          ),
                                                          textAlign: TextAlign.center),
                                                    ],
                                                  ),
                                                  SizedBox(
                                                    height: size.height*0.01,
                                                  ),
                                                  Text(language?'15 minutes':'15 ನಿಮಿಷಗಳು',
                                                    style: TextStyle(
                                                      color: Colors.black,
                                                      fontSize: 20,
                                                    ),
                                                    textAlign: TextAlign.center,)
                                                ],
                                              ),
                                            ),
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
