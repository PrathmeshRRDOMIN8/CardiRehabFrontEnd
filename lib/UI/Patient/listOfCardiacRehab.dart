import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:HyCaRe/UI/cardiacRehab.dart';
import 'package:lottie/lottie.dart';
import 'package:HyCaRe/UI/Patient/detailsdivision.dart';
import 'package:HyCaRe/Cardiac/careOfInciRite.dart';
import 'package:HyCaRe/Cardiac/woundCare.dart';
import 'package:HyCaRe/Cardiac/bathing.dart';
import 'package:HyCaRe/Cardiac/physicalActivity.dart';
import 'package:HyCaRe/Cardiac/rest.dart';
import 'package:HyCaRe/Cardiac/stairsClimbing.dart';
import 'package:HyCaRe/Cardiac/posture.dart';
import 'package:HyCaRe/Cardiac/medications.dart';
import 'package:HyCaRe/Cardiac/exercise.dart';
import 'package:HyCaRe/Cardiac/dietForCABG.dart';
import 'package:HyCaRe/Cardiac/smoking.dart';
import 'package:HyCaRe/Cardiac/controlBloodPressure.dart';
import 'package:HyCaRe/Cardiac/controllingCholesterol.dart';
import 'package:HyCaRe/Cardiac/bloodSugarLevel.dart';
import 'package:HyCaRe/Cardiac/pyschologicalCare.dart';

class ListRehab extends StatefulWidget {
  static const String id = 'RehabList';
  @override
  State<ListRehab> createState() => _ListRehabState();
}

class _ListRehabState extends State<ListRehab> {
  bool language=true;

  void initState(){
    super.initState();
    language;
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SizedBox(
      width: double.infinity,
      child: Scaffold(
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
        backgroundColor: const Color(0xFFEDD3F2),
        body: Padding(
          padding: EdgeInsets.only(top: size.height*0.05),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: size.height*0.07,
                  width: size.width,
                  child: Lottie.network('https://assets6.lottiefiles.com/temp/lf20_vS6iGX.json'),
                ),
                SizedBox(
                  height: size.height*0.015,
                ),
                SizedBox(
                  height: size.height*0.0001,
                  width: size.width*0.95,
                  child: Container(
                    color: Colors.black,
                  ),
                ),
                  Column(
                    children: [
                      Flex(
                        direction: Axis.vertical,
                        children: [
                          SizedBox(
                            height: MediaQuery.of(context).size.height,
                            width: MediaQuery.of(context).size.width,
                            child: ListView(
                              shrinkWrap: true,
                              children: [
                                CardiacRehab(actName: language? CareOfInciRite.id : 'ಛೇದನ ಸೈಟ್ ಕೇರ್', imageAdd: 'CareOfIncision.png',id:CareOfInciRite.id,),
                                CardiacRehab(actName: language? WoundCare.id : 'ಗಾಯದ ಕಾಳಜಿ', imageAdd: 'WoundCare.jpg',id: WoundCare.id,),
                                CardiacRehab(actName: language? Bathing.id : 'ಸ್ನಾನ', imageAdd: 'Bathing.png',id: Bathing.id,),
                                CardiacRehab(actName: language? PhysicalActivity.id : 'ದೈಹಿಕ ಚಟುವಟಿಕೆ', imageAdd: 'PhysicalActivity.jpg',id: PhysicalActivity.id,),
                                CardiacRehab(actName: language? Rest.id : 'ಉಳಿದ', imageAdd: 'Rest.jpg',id: Rest.id,),
                                CardiacRehab(actName: language? StairsClimbing.id  : 'ಮೆಟ್ಟಿಲುಗಳನ್ನು ಹತ್ತುವುದು', imageAdd: 'StairsClimbing.jpg',id: StairsClimbing.id,),
                                CardiacRehab(actName: language? Posture.id : 'ಭಂಗಿ', imageAdd: 'Posture.jpg',id: Posture.id,),
                                CardiacRehab(actName: language? Medications.id : 'ಔಷಧಿಗಳು', imageAdd: 'Medications.jpg',id: Medications.id,),
                                CardiacRehab(actName: language? Exercise.id : 'ವ್ಯಾಯಾಮ', imageAdd: 'Exercise.jpg',id: Exercise.id,),
                                CardiacRehab(actName: language? DietForCABG.id : 'CABG ಗಾಗಿ ಆಹಾರಗಳು', imageAdd: 'DietsForCABG.jpg',id: DietForCABG.id,),
                                CardiacRehab(actName: language? Smoking.id : 'ಧೂಮಪಾನ ನಿಲ್ಲಿಸಿ', imageAdd: 'StopSmoking.jpg', id: Smoking.id,),
                                CardiacRehab(actName: language? ControlBloodPressure.id : 'ರಕ್ತದೊತ್ತಡವನ್ನು ನಿಯಂತ್ರಿಸುವುದು', imageAdd: 'ControllingBloodPressure.png',id: ControlBloodPressure.id,),
                                CardiacRehab(actName: language? ControllingCholesterol.id : 'ಕೊಲೆಸ್ಟ್ರಾಲ್ ಅನ್ನು ನಿಯಂತ್ರಿಸುವುದು', imageAdd: 'ControllingCholesterol.jpg',id: ControllingCholesterol.id,),
                                CardiacRehab(actName: language? BloodSugarLevel.id : 'ರಕ್ತದ ಸಕ್ಕರೆಯ ಮಟ್ಟವನ್ನು ನಿಯಂತ್ರಿಸುವುದು', imageAdd: 'ControlBloodSugarLevel.jpg',id: BloodSugarLevel.id,),
                                CardiacRehab(actName: language? PsychologicalCare.id : 'ಮಾನಸಿಕ ಆರೈಕೆ', imageAdd: 'PyschologicalCare.jpg',id: PsychologicalCare.id,),
                                SizedBox(
                                  height: size.height*0.2,
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],),
              ],
            ),
          ),
        ),
      ),
    );
  }
}