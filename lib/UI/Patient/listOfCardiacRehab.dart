import 'package:flutter/material.dart';
import 'package:kmc_medical_app/cardiacRehab.dart';
import 'package:lottie/lottie.dart';
import 'package:kmc_medical_app/UI/Patient/detailsdivision.dart';
import 'package:kmc_medical_app/Cardiac/careOfInciRite.dart';
import 'package:kmc_medical_app/Cardiac/woundCare.dart';
import 'package:kmc_medical_app/Cardiac/bathing.dart';
import 'package:kmc_medical_app/Cardiac/physicalActivity.dart';
import 'package:kmc_medical_app/Cardiac/rest.dart';
import 'package:kmc_medical_app/Cardiac/stairsClimbing.dart';
import 'package:kmc_medical_app/Cardiac/posture.dart';
import 'package:kmc_medical_app/Cardiac/medications.dart';
import 'package:kmc_medical_app/Cardiac/exercise.dart';
import 'package:kmc_medical_app/Cardiac/dietForCABG.dart';
import 'package:kmc_medical_app/Cardiac/smoking.dart';
import 'package:kmc_medical_app/Cardiac/controlBloodPressure.dart';
import 'package:kmc_medical_app/Cardiac/controllingCholesterol.dart';
import 'package:kmc_medical_app/Cardiac/bloodSugarLevel.dart';
import 'package:kmc_medical_app/Cardiac/pyschologicalCare.dart';

class ListRehab extends StatefulWidget {
  static const String id = 'RehabList';
  ListRehab(@required this.language);
  final String language;
  @override
  State<ListRehab> createState() => _ListRehabState();
}

class _ListRehabState extends State<ListRehab> {
  late String dropdownvalueLang=widget.language;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SizedBox(
      width: double.infinity,
      child: Scaffold(
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
                                CardiacRehab(actName: dropdownvalueLang=='English'? CareOfInciRite.id : 'ಛೇದನ ಸೈಟ್ ಕೇರ್', imageAdd: 'CareOfIncision.png',id:CareOfInciRite.id,language: dropdownvalueLang),
                                CardiacRehab(actName: dropdownvalueLang=='English'? WoundCare.id : 'ಗಾಯದ ಕಾಳಜಿ', imageAdd: 'WoundCare.jpg',id: WoundCare.id,language: dropdownvalueLang),
                                CardiacRehab(actName: dropdownvalueLang=='English'? Bathing.id : 'ಸ್ನಾನ', imageAdd: 'Bathing.png',id: Bathing.id,language: dropdownvalueLang),
                                CardiacRehab(actName: dropdownvalueLang=='English'? PhysicalActivity.id : 'ದೈಹಿಕ ಚಟುವಟಿಕೆ', imageAdd: 'PhysicalActivity.jpg',id: PhysicalActivity.id,language: dropdownvalueLang),
                                CardiacRehab(actName: dropdownvalueLang=='English'? Rest.id : 'ಉಳಿದ', imageAdd: 'Rest.jpg',id: Rest.id,language: dropdownvalueLang),
                                CardiacRehab(actName: dropdownvalueLang=='English'? StairsClimbing.id  : 'ಮೆಟ್ಟಿಲುಗಳನ್ನು ಹತ್ತುವುದು', imageAdd: 'StairsClimbing.jpg',id: StairsClimbing.id,language: dropdownvalueLang),
                                CardiacRehab(actName: dropdownvalueLang=='English'? Posture.id : 'ಭಂಗಿ', imageAdd: 'Posture.jpg',id: Posture.id,language: dropdownvalueLang),
                                CardiacRehab(actName: dropdownvalueLang=='English'? Medications.id : 'ಔಷಧಿಗಳು', imageAdd: 'Medications.jpg',id: Medications.id,language: dropdownvalueLang),
                                CardiacRehab(actName: dropdownvalueLang=='English'? Exercise.id : 'ವ್ಯಾಯಾಮ', imageAdd: 'Exercise.jpg',id: Exercise.id,language: dropdownvalueLang),
                                CardiacRehab(actName: dropdownvalueLang=='English'? DietForCABG.id : 'CABG ಗಾಗಿ ಆಹಾರಗಳು', imageAdd: 'DietsForCABG.jpg',id: DietForCABG.id,language: dropdownvalueLang),
                                CardiacRehab(actName: dropdownvalueLang=='English'? Smoking.id : 'ಧೂಮಪಾನ ನಿಲ್ಲಿಸಿ', imageAdd: 'StopSmoking.jpg', id: Smoking.id,language: dropdownvalueLang),
                                CardiacRehab(actName: dropdownvalueLang=='English'? ControlBloodPressure.id : 'ರಕ್ತದೊತ್ತಡವನ್ನು ನಿಯಂತ್ರಿಸುವುದು', imageAdd: 'ControllingBloodPressure.png',id: ControlBloodPressure.id,language: dropdownvalueLang),
                                CardiacRehab(actName: dropdownvalueLang=='English'? ControllingCholesterol.id : 'ಕೊಲೆಸ್ಟ್ರಾಲ್ ಅನ್ನು ನಿಯಂತ್ರಿಸುವುದು', imageAdd: 'ControllingCholesterol.jpg',id: ControllingCholesterol.id,language: dropdownvalueLang),
                                CardiacRehab(actName: dropdownvalueLang=='English'? BloodSugarLevel.id : 'ರಕ್ತದ ಸಕ್ಕರೆಯ ಮಟ್ಟವನ್ನು ನಿಯಂತ್ರಿಸುವುದು', imageAdd: 'ControlBloodSugarLevel.jpg',id: BloodSugarLevel.id,language: dropdownvalueLang),
                                CardiacRehab(actName: dropdownvalueLang=='English'? PsychologicalCare.id : 'ಮಾನಸಿಕ ಆರೈಕೆ', imageAdd: 'PyschologicalCare.jpg',id: PsychologicalCare.id,language: dropdownvalueLang),
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