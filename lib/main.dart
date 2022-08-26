import 'package:flutter/material.dart';
import 'package:kmc_medical_app/UI/introScreen.dart';

import 'package:kmc_medical_app/UI/Patient/detailsdivision.dart';
import 'package:kmc_medical_app/UI/Patient/listOfCardiacRehab.dart';
import 'package:kmc_medical_app/UI/Patient/pushQuizPage.dart';
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

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  static const String id = 'Main';
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: IntroScreen.id,
      routes: {
        IntroScreen.id: (context) => IntroScreen(),
        // DetailDivision.id : (context) => DetailDivision(),
        ListRehab.id: (context) => ListRehab(),
        // PushQuizPage.id : (context) => PushQuizPage(),
        CareOfInciRite.id: (context) => CareOfInciRite(),
        WoundCare.id: (context) => WoundCare(),
        Bathing.id: (context) => Bathing(),
        PhysicalActivity.id: (context) => PhysicalActivity(),
        Rest.id: (context) => Rest(),
        StairsClimbing.id: (context) => StairsClimbing(),
        Posture.id: (context) => Posture(),
        Medications.id: (context) => Medications(),
        Exercise.id: (context) => Exercise(),
        DietForCABG.id: (context) => DietForCABG(),
        Smoking.id: (context) => Smoking(),
        ControlBloodPressure.id: (context) => ControlBloodPressure(),
        ControllingCholesterol.id: (context) => ControllingCholesterol(),
        BloodSugarLevel.id: (context) => BloodSugarLevel(),
        PsychologicalCare.id: (context) => PsychologicalCare(),
      },
    );
  }
}
