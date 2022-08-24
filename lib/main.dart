import 'package:flutter/material.dart';
import 'package:kmc_medical_app/introScreen.dart';
import 'package:kmc_medical_app/patientPortal.dart';
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
  String dropdownvalue1 = HomePage.id;
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        MyApp.id: (context) => MyApp(),
        IntroScreen.id: (context) => IntroScreen(dropdownvalue1),
        // DetailDivision.id : (context) => DetailDivision(),
        ListRehab.id: (context) => ListRehab(dropdownvalue1),
        // PushQuizPage.id : (context) => PushQuizPage(),
        CareOfInciRite.id: (context) => CareOfInciRite(dropdownvalue1),
        WoundCare.id: (context) => WoundCare(dropdownvalue1),
        Bathing.id: (context) => Bathing(dropdownvalue1),
        PhysicalActivity.id: (context) => PhysicalActivity(dropdownvalue1),
        Rest.id: (context) => Rest(dropdownvalue1),
        StairsClimbing.id: (context) => StairsClimbing(dropdownvalue1),
        Posture.id: (context) => Posture(dropdownvalue1),
        Medications.id: (context) => Medications(dropdownvalue1),
        Exercise.id: (context) => Exercise(dropdownvalue1),
        DietForCABG.id: (context) => DietForCABG(dropdownvalue1),
        Smoking.id: (context) => Smoking(dropdownvalue1),
        ControlBloodPressure.id: (context) => ControlBloodPressure(dropdownvalue1),
        ControllingCholesterol.id: (context) => ControllingCholesterol(dropdownvalue1),
        BloodSugarLevel.id: (context) => BloodSugarLevel(dropdownvalue1),
        PsychologicalCare.id: (context) => PsychologicalCare(dropdownvalue1),
      },
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  static String id = 'HomePage';
  @override
  State<HomePage> createState() => _HomePageState();
}


class _HomePageState extends State<HomePage> {
  String dropdownvalue1 = 'English';
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Container(
              margin: EdgeInsets.symmetric(vertical: 10),
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
              width: size.width * 0.8,
              decoration: BoxDecoration(
                color: Color(0xFFCA6CE5),
                borderRadius: BorderRadius.circular(29),
              ),
              child: TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, IntroScreen.id,
                      arguments: dropdownvalue1);
                },
                child: DropdownButton(
                    style: const TextStyle(color: Colors.black),
                    value: dropdownvalue1,
                    items: <String>[
                      'English',
                      'ಕನ್ನಡ',
                    ].map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                    onChanged: (String? newValue) {
                      setState(() {
                        dropdownvalue1 = newValue!;
                        HomePage.id = dropdownvalue1;
                      });
                    }),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
