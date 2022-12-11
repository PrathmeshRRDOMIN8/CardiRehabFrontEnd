import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:HyCaRe/UI/Patient/listOfCardiacRehab.dart';
import 'package:HyCaRe/UI/Patient/pushQuizPage.dart';
import 'package:translator/translator.dart';

class DetailDivision extends StatefulWidget {
  static const String id = 'Details';
  String patient_id;
  DetailDivision(@required this.patient_id);
  @override
  State<DetailDivision> createState() => _DetailDivisionState();
}

class _DetailDivisionState extends State<DetailDivision> {
  bool language=true;

  void initState(){
    super.initState();
    language;
  }
  late String patient_id=widget.patient_id;
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
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: const EdgeInsets.symmetric(vertical: 10),
                padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 5),
                width: size.width*0.8,
                decoration: BoxDecoration(
                  color: const Color(0xFFCA6CE5),
                  borderRadius: BorderRadius.circular(29),
                ),
                child: TextButton(onPressed: (){
                  Navigator.pushNamed(context, ListRehab.id);
                }, child: Text(language? '1.	Contents of home based cardiac rehabilitation' : 'ಮನೆ ಆಧಾರಿತ ಹೃದಯ ಪುನರ್ವಸತಿ ವಿಷಯಗಳು',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20.0,
                  ),),),
              ),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 10),
                padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 5),
                width: size.width*0.8,
                decoration: BoxDecoration(
                  color: const Color(0xFFCA6CE5),
                  borderRadius: BorderRadius.circular(29),
                ),
                child: TextButton(onPressed: (){
                  Navigator.push(context,MaterialPageRoute(builder: (context)=>PushQuizPage(patient_id)));
                }, child:  Text(language? '2. Automatic Reinforcement messages (Every 3 days)': 'ಸ್ವಯಂಚಾಲಿತ ಬಲವರ್ಧನೆಯ ಸಂದೇಶಗಳು (ಪ್ರತಿ 3 ದಿನಗಳು)',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20.0,
                  ),),),
              ),
            ],
          ),
        ],
      ),

    );
  }
}
